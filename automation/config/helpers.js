const { execSync } = require("child_process");
const format = require("date-format");

/**
 * Get current git branch name
 * @author Sahil Purav
 */
function getCurrentGitBranchName() {
  //return execSync('git branch --show-current');
  return "master";
}

/**
 * Prepare build name
 * @author Sahil Purav
 */
function getBuildName() {
  return `${getCurrentGitBranchName().toString().trim()} (${format(
    "yyyy-MM-dd hh:mm:ss"
  )})`;
}

/**
 * Init framework
 * @param config
 * @author Sahil Purav
 */
function initFramework(config) {
  const defaultPrefix =
    typeof config.prefix.default === "string" &&
    config.prefix.default !== "prod"
      ? `${config.prefix.default}.`
      : "";
  const legacyPrefix =
    typeof config.prefix.legacy === "string" && config.prefix.legacy !== "prod"
      ? `${config.prefix.legacy}.`
      : "";
  const partner = config.custom.partners[config.partner];
  process.env.CRM = `https://${legacyPrefix}crm.cactusglobal.com`;
  process.env.EOS = `https://${legacyPrefix}${partner.eos}`;
  process.env.SSO = `https://${legacyPrefix}${partner.sso}`;
  process.env.WEBSITE = `https://${
    defaultPrefix
      ? partner.website.replace("www.", defaultPrefix)
      : partner.website
  }`;
  process.env.LEGACY_WEBSITE = `${legacyPrefix}${partner.website}`;
}

/**
 * Returns the version of ChromeDriver for the Chrome version installed
 * on the system.
 */
function getChromeDriverVersion() {
  const chromeVersion = execSync("google-chrome --version").toString("utf8");
  const chromeMajorVersion = parseInt(chromeVersion.match(/\b\d+\.\d+\b/)[0]);
  const url =
    "https://chromedriver.storage.googleapis.com/LATEST_RELEASE_" +
    chromeMajorVersion;
  return execSync("curl -sfL " + url)
    .toString("utf8")
    .trim();
}

exports.helpers = {
  build: getBuildName(),
  branch: getCurrentGitBranchName(),
  chromeDriverVersion: getChromeDriverVersion(),
  firefoxDriverVersion: "0.27.0",
  initFramework,
};
