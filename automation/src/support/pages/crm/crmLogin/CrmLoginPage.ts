/**
 * Grouping of functions related to crm login
 * @function loginToCRM
 * @function logout
 */

import { clickWebElement } from "src/support/action/coreActions/clickActions";
import { setInputFieldForElement } from "src/support/action/coreActions/inputFieldActions";
import { checkAvailability } from "src/support/check/elementAvailabilityChecks";

class CRMLoginPage {
	get inputUserName() {
		return $("#email_id");
	}
	get inputPassword() {
		return $("#password");
	}
	get submitBtn() {
		return $("//form[@id='login_form']//div/button[@type='submit']");
	}
	get dropdownDashboard() {
		return "//li[@class='dropdown notifications-menu user-menu']/a/span";
	}

	/**
	 * Login on CRM
	 * @param	{string}	_userName	PM/CM username
	 * @param	{string}	_password	PM/CM password
	 */
	loginToCRM(_userName: string, _password: string) {
		setInputFieldForElement("set", _userName, this.inputUserName);
		setInputFieldForElement("set", _password, this.inputPassword);

		clickWebElement("click", this.submitBtn);
		checkAvailability(this.dropdownDashboard, false, "displayed");
	}
}

export const crmLogin = new CRMLoginPage();
