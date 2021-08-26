/**
 * Grouping of solr search actions on crm
 * @function getPassword
 * @function getCMSecretPasswordLogin
 * @author Prathamesh Patil
 */

import { crmHeader } from "src/support/pages/crm/crmHeader/CrmHeaderPage";
import { crmLogin } from "src/support/pages/crm/crmLogin/CrmLoginPage";
let secretPassword:string;
const data = require("data/testData.js");
/**
 * Get magic or secret password from crm
 * @param {string} _type magic or secret password input parameter
 * @author Makarand Dhuri, Ninad Patkar
 */
export function getPassword(_type: string) {
	let userDetails = data.common.crm;

	//Login to crm with default user credentials
	crmLogin.loginToCRM(userDetails.cm_user_email, userDetails.cm_user_pwd);
	console.log("Logged_in_user:"+userDetails.cm_user_email);
	// crmHeader.verifyLoginUser(userDetails.cm_user_name);

	//fetch magic / secret password and store to test data set
	if (_type.toLowerCase() == "magic") {
		let magicPassword = crmHeader.getSolrSearchResult("!magic password");
		console.log("magicPassword : " + magicPassword);
		data.common.crm.magic_password = magicPassword;
	} else {
		secretPassword = crmHeader.getSolrSearchResult("!secret password");
		console.log("secretPassword :" + secretPassword);
		data.common.crm.secret_password= secretPassword;
		
	}
	crmHeader.crmLogout();
}
export function getCMSecretPasswordLogin() {
	let cmLoginDetails=data.common.crm;
	crmLogin.loginToCRM(cmLoginDetails.cm_admin_email,secretPassword);
	console.log("Logged_in_user:"+cmLoginDetails.cm_admin_email);
}