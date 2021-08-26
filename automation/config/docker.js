const merge = require("deepmerge");
const { common } = require("./default");
const { helpers } = require("./helpers");
const { generate } = require("multiple-cucumber-html-reporter");
const { removeSync } = require("fs-extra");

exports.config = merge(common, {
  maxInstances: 4,
  capabilities: [
    {
      browserName: "chrome",
      port: 4500,
      "goog:chromeOptions": {
        args: [
          "--disable-infobars",
          "--window-size=1920,1080",
          "--headless",
          "--no-sandbox",
          "--disable-gpu",
          "--disable-setuid-sandbox",
          "--disable-dev-shm-usage",
        ],
      },
    },
  ],
  services: [
    [
      "selenium-standalone",
      {
        logPath: "./selenium-logs",
        installArgs: {
          drivers: {
            chrome: {
              version: helpers.chromeDriverVersion,
              arch: process.arch,
            },
          },
        },
        args: {
          drivers: {
            chrome: {
              version: helpers.chromeDriverVersion,
              arch: process.arch,
            },
          },
          seleniumArgs: ["-host", "127.0.0.1", "-port", "4500"],
        },
      },
    ],
  ],
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
  onComplete: function (_exitCode) {
    generate({
      jsonDir: "./coverage/bdd/json/",
      reportPath: "./coverage/bdd/report/",
      saveCollectedJSON: true,
    });
  },
});
