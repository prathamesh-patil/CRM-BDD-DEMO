/**
 * Grouping of functions related to CRM Dashboard
 * @function getPasswordFromDashboard
 * @function logout
 * @function verifyLoginUser
 */

import { pressKey } from "src/support/action/coreActions/browserActions";
import { clickWebElement } from "src/support/action/coreActions/clickActions";
import {
	getElementText,
	setInputFieldForElement,
} from "src/support/action/coreActions/inputFieldActions";
import { checkAvailability } from "src/support/check/elementAvailabilityChecks";
import { checkText } from "src/support/check/textChecks";

class CrmHeaderPage {
	get inputSolrSearch() {
		return $(".form-control.navbar-search-input");
	}
	get txtSolrOutput() {
		return $("#widgetMainContent > div");
	}
	get dropDownProfile() {
		return $("//li[contains(@class,'user-menu')]/a");
	}
	get linkLogout() {
		return $("//a[contains(@href,'/logout')]");
	}

	/**
	 * Get secret password
	 * @returns {string} 			solr search result text
	 * @param 	{string}	_value 	input text for solr search
	 * @author Makarand Dhuri, Ninad Patkar
	 */
	getSolrSearchResult(_value: string) {
		setInputFieldForElement("set", _value, this.inputSolrSearch);
		pressKey("Enter");
		return getElementText(this.txtSolrOutput);
	}

	/**
	 * Logout from crm
	 *@author Makarand Dhuri
	 */
	crmLogout() {
		clickWebElement("click", this.dropDownProfile);
		clickWebElement("click", this.linkLogout);
	}

	/**
	 * Verify logged in crm user details
	 *@param {string} _userName crm user name
	 *@author Ninad Patkar
	 */
	verifyLoginUser(_userName: string) {
		checkAvailability(this.dropDownProfile, false, "displayed");
		checkText("element", this.dropDownProfile, false, "matches", _userName);
	}
}

export const crmHeader = new CrmHeaderPage();
