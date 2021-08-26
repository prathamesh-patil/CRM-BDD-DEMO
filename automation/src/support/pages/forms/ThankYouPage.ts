/**
 * Grouping of functions related to ThankYou
 * @function verifyThankYouMessage
 */

import { addStepInScenario } from "src/steps/coreSteps/after";
import { pause } from "src/support/action/coreActions/browserActions";
import { checkText } from "src/support/check/textChecks";

class ThankYouPage {
	get txtSuccess() {
		return "//div[contains(@class,'message-section')]/h3[1]";
	}
	get txtSuccessKORSkipWC() {
		return "//div[contains(@class,'message-section')]/h2[1]";
	}
	get skeletonLoader() {
		return ".skeleton-loader";
	}

	/**
	 * User fills service/file related questions
	 * @param	{string}	_successMsg	success message on form submission
	 * @param	{string}	_loop	wc or skipwc
	 * @param	{string}	_wcOrType	wc count or sendquote or startjob
	 * @param	{string}	_partner	client partner
	 */
	verifyThankYouMessage(
		_successMsg: string,
		_partner?: string,
		_loop?: string,
		_wcOrType?: string
	) {
		pause("2000"); //Note:Add condition for invisibility of loader
		addStepInScenario("Thank You Message", false);

		if (
			_partner.toLowerCase().trim() == "kor" &&
			_loop.toLowerCase().trim() == "skipwc" &&
			_wcOrType.toLowerCase().trim() == "sendquote"
		) {
			checkText(
				"element",
				this.txtSuccessKORSkipWC,
				true,
				"matches",
				_successMsg
			);
		} else {
			checkText("element", this.txtSuccess, true, "matches", _successMsg);
		}
	}
}
export const thanksPage = new ThankYouPage();
