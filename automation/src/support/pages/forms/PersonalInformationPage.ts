/**
 * Grouping of functions related to Personal Information
 * @function enterCommonUserDetails
 */

import { setInputFieldForElement } from "src/support/action/coreActions/inputFieldActions";
import { clickAndSelect } from "src/support/action/coreActions/selectActions";

const data = require("data/testData.js");

class PersonalInformationPage {
	get inputProfileEmail() {
		return $("#field_client_profile_pri_email");
	}
	get selectProfileCountryCode() {
		return $(
			"//*[contains(@class,'personal-information')]//*[@class='country-code']//mat-select"
		);
	}
	get inputProfilePhoneNo() {
		return $("#field_client_profile_primary_ph-number");
	}
	get inputNativeFirstName() {
		return $("#field_client_profile_native_firstName");
	}
	get inputNativeLastName() {
		return $("#field_client_profile_native_lastName");
	}
	get inputFirstName() {
		return $("#field_client_profile_firstname");
	}
	get inputLastName() {
		return $("#field_client_profile_lastname");
	}
	get inputDepartment() {
		return $("#field_client_profile_department");
	}
	get inputOrganization() {
		return $("#field_client_profile_org");
	}
	get selectJobDescription() {
		return $(
			"//*[contains(@class,'personal-information')]//*[contains(@class,'input-field')]//mat-select"
		);
	}

	/**
	 * User fills personal info with common data
	 * @param	{string}	_partner	client partner
	 * @param	{string}	_email	client email
	 * @param	{string}	_phoneNo	client phone
	 * @param	{string}	_countryCode	client country code
	 */
	enterCommonUserDetails(
		_partner: string,
		_email = "",
		_phoneNo?: string,
		_countryCode?: string
	) {
		const cdetails = data.common.details;
		const partnerData = data.partners[_partner];

		if (_email == "")
			(_email = partnerData.email),
				(_phoneNo = partnerData.phone),
				(_countryCode = partnerData.country_code);

		setInputFieldForElement("set", cdetails.first_name, this.inputFirstName);
		setInputFieldForElement("set", cdetails.last_name, this.inputLastName);

		if (_partner == "jpn") {
			setInputFieldForElement(
				"set",
				cdetails.native_first_name,
				this.inputNativeFirstName
			);
			setInputFieldForElement(
				"set",
				cdetails.native_last_name,
				this.inputNativeLastName
			);
		}

		if (_partner == "kor")
			setInputFieldForElement(
				"set",
				cdetails.native_first_name,
				this.inputNativeLastName
			);

		setInputFieldForElement("set", _email, this.inputProfileEmail);
		clickAndSelect("click", this.selectProfileCountryCode, _countryCode);
		setInputFieldForElement("set", _phoneNo, this.inputProfilePhoneNo);

		setInputFieldForElement("set", cdetails.department, this.inputDepartment);
		setInputFieldForElement(
			"set",
			cdetails.organization,
			this.inputOrganization
		);

		clickAndSelect(
			"click",
			this.selectJobDescription,
			partnerData.job_description
		);
	}
}

export const pi = new PersonalInformationPage();
