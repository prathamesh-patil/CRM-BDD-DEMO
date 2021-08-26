const { helpers } = require("./helpers");
const merge = require("deepmerge");
const { common } = require("./default");
const { generate } = require("multiple-cucumber-html-reporter");
const { removeSync } = require("fs-extra");

exports.config = merge(common, {
	user: process.env.BROWSERSTACK_USERNAME,
	key: process.env.BROWSERSTACK_ACCESS_KEY,
	maxInstances: 1,
	services: ["browserstack"],
	capabilities: [
		{
			build: helpers.build,
			os: process.env.OS ? process.env.OS : "Windows",
			os_version: process.env.OS_VERSION ? process.env.OS_VERSION : "10",
			browserName: process.env.BROWSER ? process.env.BROWSER : "Chrome",
			browser_version: process.env.BROWSER_VERSION
				? process.env.BROWSER_VERSION
				: "latest",
			resolution: process.env.RESOLUTION ? process.env.RESOLUTION : "1920x1080",
		},
	],
	host: "hub.browserstack.com",
	reporters: [
		[
			"cucumberjs-json",
			{
				jsonFolder: "./coverage/bdd/json",
				language: "en",
			},
		],
	],
	onPrepare: function (config) {
		helpers.initFramework(config);
		removeSync("./coverage/bdd/");
	},
	beforeSession: function (config, capabilities) {
		capabilities.name = config.specs.pop().split("/").pop();
		let env;
		if (typeof config.prefix.default !== "string") {
			env = "production";
		} else if (config.prefix.default.startsWith("development")) {
			env = "development";
		} else {
			env = config.prefix.default;
		}
		capabilities.project = `phoenix-${env}`;
	},
	onComplete: function (_exitCode, config) {
		generate({
			jsonDir: `./coverage/bdd/json/`,
			reportPath: `./coverage/reports/${config.partner}/`,
			saveCollectedJSON: true,
		});
	},
	// Code to mark the status of test on BrowserStack based on the assertion status
	afterTest: function (
		test,
		context,
		{ error, result, duration, passed, retries }
	) {
		if (passed) {
			browser.executeScript(
				'browserstack_executor: {"action": "setSessionStatus", "arguments": {"status":"passed","reason": "Assertions passed"}}'
			);
		} else {
			browser.executeScript(
				'browserstack_executor: {"action": "setSessionStatus", "arguments": {"status":"failed","reason": "At least 1 assertion failed"}}'
			);
		}
	},
});
