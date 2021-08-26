/**
 * Grouping of functions related to Document Preferences
 * @function fillServiceQuestions
 */

import { addStepInScenario } from "src/steps/coreSteps/after";
import { pause } from "src/support/action/coreActions/browserActions";
import {
	clickElement,
	clickWebElement,
} from "src/support/action/coreActions/clickActions";
import { scrollTo } from "src/support/action/coreActions/mouseActions";
import { clickAndSelect } from "src/support/action/coreActions/selectActions";
import { checkIfElementPresent } from "src/support/check/elementAvailabilityChecks";
import { checkURL } from "src/support/check/pageUrlChecks";
import { paymentPref } from "./PaymentPreferencesPage";
import { pi } from "./PersonalInformationPage";

class DocumentPreferences {
	get radioEditEntireDoc() {
		return $("//label[@for='field_enq_ex_file_editing_sectionall']");
	}

	get radioStartImmediatelyNo() {
		return $(
			"//label[@for='field_enq_ex_can_we_start_no' or @id='field_enq_ex_formatng_info_no']"
		);
	}
	get radioStartImmediatelyYes() {
		return $(
			"//label[@for='field_enq_ex_can_we_start_yes' or @id='field_enq_ex_formatng_info_yes']"
		);
	}

	get radioJournalFormattingNo() {
		return $("//label[@for='field_enq_ex_formatng_info_no']");
	}
	get radioJournalFormattingYes() {
		return $("//label[@for='field_enq_ex_formatng_info_yes']']");
	}

	get selectSubjectAreaCategory() {
		return $(
			"//mat-select[contains(@data-description,'information-select-subject')]"
		);
	}
	get selectSubjectArea() {
		return $("//input[@id='s-subject_area']");
	}

	get selectReference() {
		return $(
			"//mat-label[@for='field_client_profile_ref_source']//parent::label//parent::span//parent::div"
		);
	}

	get checkboxTermsAndConditions() {
		return "//input[@id='field_term_and_policyfield_term_and_policy']";
	}

	get selectTypeOfDoc() {
		return $(
			"//mat-select[contains(@data-description,'information-select-document')]"
		);
	}

	get btnConfirmOrder() {
		return $("//button[@angularticsaction='Submit attempt']");
	}

	/**
	 * User fills service/file related questions
	 * @param	{string}	_sl2	Service level 2
	 * @param	{string}	_type	wc or skipwc
	 * @param	{string}	_typeOfDoc	wc count or sendquote or startjob
	 * @param	{string}	_subArea1	subject area level 1
	 * @param	{string}	_subArea2	subject area level 2
	 * @param	{string}	_reference	reference doc
	 * @param	{string}	_partner	client partner
	 * @param	{string}	_email	client partner
	 * @param	{string}	_phoneNo	client partner
	 * @param	{string}	_countryCode	client partner
	 */
	fillServiceQuestions(
		_sl2: string,
		_type: string,
		_typeOfDoc: string,
		_subArea1: string,
		_subArea2: string,
		_reference: string,
		_partner: string,
		_email = "",
		_phoneNo = "",
		_countryCode = ""
	) {
		addStepInScenario("Fill Service/Document Questions", false);
		pause("1000");
		if (_partner == "jpn" || _partner == "kor")
			pi.enterCommonUserDetails(_partner);

		if (_type.toLowerCase().trim() == "sendquote") {
			if (_partner != "chn")
				clickElement("click", "element", this.radioStartImmediatelyNo);
		} else if (_type.toLowerCase().trim() == "startjob") {
			console.log(1);
			if (_partner != "chn")
				clickElement("click", "element", this.radioStartImmediatelyYes);
		}

		if (_sl2 != "scientificediting") {
			clickWebElement("click", this.radioEditEntireDoc);
		}
		clickAndSelect("click", this.selectTypeOfDoc, _typeOfDoc);
		clickWebElement("click", this.radioJournalFormattingNo);
		clickAndSelect("click", this.selectSubjectAreaCategory, _subArea1);

		clickWebElement("click", this.selectSubjectArea);
		pause("1000");
		scrollTo("start", $("//div[text()='" + _subArea2 + "']"));
		clickElement("click", "element", $("//div[text()='" + _subArea2 + "']"));

		clickAndSelect("click", this.selectReference, _reference);

		if (_partner == "kor") paymentPref.fillCommonPaymentDetails(_partner);

		if (checkIfElementPresent(this.checkboxTermsAndConditions))
			clickElement("click", "element", this.checkboxTermsAndConditions);

		clickWebElement("click", this.btnConfirmOrder);
		checkURL(false, "thank-you");
	}
}

export const serviceQuestions = new DocumentPreferences();
