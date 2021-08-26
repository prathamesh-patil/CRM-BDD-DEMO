const { env } = require("process");

const envLegacy = env.legacy;
const envPrefix = env.prefix;

exports.common = {
	specs: ["./src/features/**/*.feature"],
	specFileRetries: 1,
	specFileRetriesDeferred: false,
	maxInstances: 5,
	logLevel: "error",
	custom: {
		partners: {
			eng: {
				website: "www.editage.com",
				eos: "app.editage.com",
				sso: "accounts.editage.com",
			},
			chn: {
				website: "www.editage.cn",
				eos: "app.editage.cn",
				sso: "accounts.editage.cn",
			},
			jpn: {
				website: "www.editage.jp",
				eos: "app.editage.jp",
				sso: "accounts.editage.com",
			},
			kor: {
				website: "www.editage.co.kr",
				eos: "app.editage.co.kr",
				sso: "accounts.editage.com",
			},
			twn: {
				website: "editage.com.tw",
				eos: "app.editage.com.tw",
				sso: "accounts.editage.com",
			},
			engin: {
				website: "",
				eos: "app.engin.editage.com",
				sso: "accounts.editage.com",
			},
			ger: {
				website: "editage.de",
				eos: "app.editage.de",
				sso: "accounts.editage.com",
			},
			ind: {
				website: "editage.in",
				eos: "app.editage.in",
				sso: "accounts.editage.com",
			},
			brl: {
				website: "editage.com.br",
				eos: "app.editage.com.br",
				sso: "accounts.editage.com",
			},
			osa: {
				website: "languageediting.osa.org",
				eos: "languageediting.osa.org",
				sso: "accounts.languageediting.osa.org",
			},
			tfg: {
				website: "tandfeditingservices.com",
				eos: "app.tandfeditingservices.com",
				sso: "accounts.tandfeditingservices.com",
			},
			tfc: {
				website: "tandfeditingservices.cn",
				eos: "app.tandfeditingservices.cn",
				sso: "accounts.tandfeditingservices.com",
			},
			kino: {
				website: "editage.kinokuniya.co.jp",
				eos: "app.kinokuniya.editage.jp",
				sso: "accounts.editage.com",
			},
			kup: {
				website: "",
				eos: "app.kup.cactus.co.jp",
				sso: "accounts.editage.com",
			},
			wkh: {
				website: "wkauthorservices.editage.com",
				eos: "app.wk.editage.com",
				sso: "accounts.editage.com",
			},
			hdw: {
				website: "hindawi.editage.com",
				eos: "app.hindawi.editage.com",
				sso: "accounts.editage.com",
			},
			sageg: {
				website: "languageservices.sagepub.com/en",
				eos: "app.sage.editage.com",
				sso: "accounts.sage.editage.cn",
			},
			sagec: {
				website: "languageservices.sagepub.com/en",
				eos: "app.sage.editage.cn",
				sso: "accounts.sage.editage.cn",
			},
			wasg: {
				website: "wileyeditingservices.com/en",
				eos: "en.wileyeditingservices.com",
				sso: "accounts.wileyeditingservices.com",
			},
			wasc: {
				website: "wileyeditingservices.com/cn",
				eos: "cn.wileyeditingservices.com",
				sso: "accounts.wileyeditingservices.com",
			},
			hctr: {
				website: "honyakucenter.jp",
				eos: "app.honyakucenter.editage.jp",
				sso: "accounts.honyakucenter.editage.jp/login",
			},
			crm: {
				website: "",
				eos: "",
				sso: "",
			},
		},
	},
	partner: "",
	prefix: {
		default: "",
		legacy: "",
	},
	bail: 0,
	waitforTimeout:
		(!envLegacy || envLegacy == "prod") && (!envPrefix || envPrefix == "prod")
			? 20000
			: 110000,
	connectionRetryTimeout: 120000,
	connectionRetryCount: 3,
	framework: "cucumber",
	cucumberOpts: {
		backtrace: false,
		requireModule: [
			"tsconfig-paths/register",
			() => {
				require("ts-node").register({
					files: true,
					project: "tsconfig.json",
				});
			},
		],
		failAmbiguousDefinitions: true,
		ignoreUndefinedDefinitions: false,
		name: [],
		snippets: true,
		source: true,
		profile: [],
		require: ["./src/steps/**/*.ts"],
		snippetSyntax: undefined,
		strict: true,
		tagExpression: "not @pending",
		tagsInTitle: false,
		scenarioLevelReporter: false,
		timeout:
			(!envLegacy || envLegacy == "prod") && (!envPrefix || envPrefix == "prod")
				? 60000
				: 180000,
	},
	suites: {
		website: ["./src/features/website/**/*"],
		webshop: ["./src/features/webshop/**/*"],
		healthcheck: ["./src/features/misc/healthckeck.feature"],
		forms: ["./src/features/forms/**/*"],
	},
	before: function () {
		browser.maximizeWindow();
	},
};
