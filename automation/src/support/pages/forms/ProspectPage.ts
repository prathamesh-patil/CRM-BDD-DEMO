/**
 * Grouping of functions related to prospect details
 * @function enterProspectDetails
 */

import { addStepInScenario } from "src/steps/coreSteps/after";
import { clickWebElement } from "src/support/action/coreActions/clickActions";
import { setInputFieldForElement } from "src/support/action/coreActions/inputFieldActions";
import { clickAndSelect } from "src/support/action/coreActions/selectActions";

class ProspectPage {
	get inputEmail() {
		return $("//input[@id='email_id']");
	}
	get selectCountryCode() {
		return $("#mat-select-0");
	}
	get inputPhoneNo() {
		return $("//input[@id='phone_number']");
	}
	get btnProceed() {
		return $("//div[@id='prospect']//button[@class='btn btn-primary-blue']");
	}

	/**
	 * User fills prospect details
	 * @param	{string}	_email	client partner
	 * @param	{string}	_phoneNo	client partner
	 * @param	{string}	_countryCode	client partner
	 */
	enterProspectDetails(_email: string, _phNo: string, _countryCode: string) {
		addStepInScenario("Fill User Details", false);
		setInputFieldForElement("set", _email, this.inputEmail);
		clickAndSelect("click", this.selectCountryCode, _countryCode);
		setInputFieldForElement("set", _phNo, this.inputPhoneNo);
		clickWebElement("click", this.btnProceed);
	}
}

export const prospect = new ProspectPage();
