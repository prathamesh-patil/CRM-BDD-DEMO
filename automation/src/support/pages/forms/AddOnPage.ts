/**
 * Grouping of functions related to Addons
 * @function selectAddonAndProceed
 */

import { addStepInScenario } from "src/steps/coreSteps/after";
import { clickWebElement } from "src/support/action/coreActions/clickActions";
import { scrollToElement } from "src/support/action/coreActions/mouseActions";
import { waitForAvailabilityOFElement } from "src/support/action/coreActions/waitActions";

class AddOnPage {
	get btnProceed() {
		return $("//button[@angularticsaction='proceedFromAddonSection']");
	}

	/**
	 * Select Addons on addonPage
	 * @param	{string}	_sl2	Service level 2
	 * @param	{string}	_partner partner
	 */
	selectAddonAndProceed(_sl2: string, partner: String) {
		if (
			_sl2 != "scientificediting" ||
			!(partner == "eng" || partner == "chn")
		) {
			addStepInScenario("AddonPage", false);
			waitForAvailabilityOFElement(this.btnProceed, false, "clickable");
			scrollToElement("end", this.btnProceed);
			clickWebElement("click", this.btnProceed);
		}
	}
}

export const addOn = new AddOnPage();
