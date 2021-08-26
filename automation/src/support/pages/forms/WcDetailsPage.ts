/**
 * Grouping of functions related to word count details
 * @function enterWordCount
 */

import { addStepInScenario } from "src/steps/coreSteps/after";
import { pause } from "src/support/action/coreActions/browserActions";
import {
	clickElement,
	clickWebElement,
} from "src/support/action/coreActions/clickActions";
import { setInputFieldForElement } from "src/support/action/coreActions/inputFieldActions";
import { checkIfElementPresent } from "src/support/check/elementAvailabilityChecks";

class WcDetailsPage {
	get inputWC() {
		return $("//div[@class='input-box']/input");
	}
	get btnProceed() {
		return $("//div[contains(@class,'enter-word-count')]/button");
	}

	get linkSkipWc() {
		return $("//a[@angularticsaction='iDontKnowWordcount']");
	}
	get linkWC() {
		return "//a[@angularticsaction='clickDocumentNotReady']";
	}

	/**
	 * User enters word count for the job
	 * @param	{string}	_wc	no of word count
	 */
	enterWordCount(_wc: string) {
		_wc = _wc.replace("=", "").replace('"', "").replace('"', "").trim();
		addStepInScenario("Enter word count:" + _wc, false);

		setInputFieldForElement("set", _wc, this.inputWC);
		clickWebElement("click", this.btnProceed);
	}

	/**
	 * User select skip wc
	 *
	 */
	selectSkipWc() {
		clickWebElement("click", this.linkSkipWc);
	}

	/**
	 * User enters word count for the job
	 * @param	{string}	_loop	skip wc or wc loop
	 * @param	{string}	_wc	    no of word count
	 */
	selectWcOrSkipWcLoop(_loop: string, _wc: string) {
		pause("1000");

		if (checkIfElementPresent(this.linkWC))
			clickElement("click", "element", this.linkWC);

		if (_loop.toLowerCase() == "wc") wcPage.enterWordCount(_wc);
		else wcPage.selectSkipWc();
	}
}

export const wcPage = new WcDetailsPage();
