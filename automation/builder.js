const { argv, env } = require("process");
const { execSync } = require("child_process");
const { readFileSync } = require("fs");

const defaultParams = {
	config: "docker",
	prefix: "prod",
	legacy: "prod",
	os: "Windows",
	os_version: "10",
	browser: "Chrome",
	browser_version: "latest",
};

const runStart = () => {
	const partners = getPartners();
	const browserstack =
		getParam("config") === "browserstack"
			? `OS="${getParam("os")}" OS_VERSION=${getParam(
					"os_version"
			  )} BROWSER=${getParam("browser")} BROWSER_VERSION=${getParam(
					"browser_version"
			  )} `
			: "";

	console.log(
		`**************************************************************************************************`
	);
	console.log(`\u27BE Initializing BDD.....`);
	console.log(``);
	console.log("\u2728 BUILD INFORMATION \u2728");
	console.log(
		`\u2605 You have opted to run tests for the following partner(s) \u2192 ${partners
			.toString()
			.toUpperCase()}`
	);
	console.log(
		`\u2605 You have opted to run the following test suite(s) \u2192 ${
			env.suite ? env.suite : "all"
		}`
	);
	console.log(
		`--------------------------------------------------------------------------------------------------`
	);

	partners.forEach((partner) => {
		console.log(
			`Running BDD for ${partner.toUpperCase()} partner on ${getParam(
				"prefix"
			).toUpperCase()} website and legacy ${getParam(
				"legacy"
			).toUpperCase()} environment...`
		);

		const suites = getSuites(partner);
		const command = `${browserstack}npx wdio config/${getParam("config")}.js ${
			env.group ? `--suite ${env.group}` : ""
		} --partner ${partner} --prefix.default ${getParam(
			"prefix"
		)} --prefix.legacy ${getParam(
			"legacy"
		)} --cucumberOpts.tagExpression "@${partner}${suites}" ${
			env.spec ? `--spec ${env.spec}` : ""
		}`;
		console.log(`Running command: ${command}`);
		execSync(`${command}`, { stdio: "inherit" });

		console.log(`✔ BDD for ${partner.toUpperCase()} partner complete.`);
		console.log(
			`--------------------------------------------------------------------------------------------------`
		);
	});
};

const getParam = (param) => {
	if (env[param]) {
		return env[param].toLowerCase();
	}

	return defaultParams[param] ? defaultParams[param] : "";
};

const getPartners = () => {
	const input = env.partner;
	if (!input || input.toLowerCase() === "all") {
		const config = JSON.parse(readFileSync("config/default.json", "utf-8"));
		return config.partners;
	}

	return input.toLowerCase().split(",");
};

const getSuites = (partner) => {
	const input = env.suite;
	if (!input || input.toLowerCase() === "all") {
		const config = JSON.parse(readFileSync("config/default.json", "utf-8"));
		return ` or (@${partner} and (${config.suites.join(" or ")}))`;
	}

	return ` and ${input.toLowerCase()}`;
};

/**
 * Generate command
 * @author Ankit Shetty
 */
const main = () => {
	const arg = argv.slice(2).shift();
	const command = `run${arg.charAt(0).toUpperCase()}${arg
		.substr(1)
		.toLowerCase()}()`;

	eval(command);
};

main();
