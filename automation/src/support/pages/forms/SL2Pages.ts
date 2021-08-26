/**
 * Grouping of functions related to service level 2 page on forms
 * @function selectSL2
 * @function selectSL1Sl2
 */

import { addStepInScenario } from "src/steps/coreSteps/after";
import { clickWebElement } from "src/support/action/coreActions/clickActions";

import { sl1Page } from "./SL1Page";

class SL2Page {
	get btnPremiumEditing() {
		return $(
			"//ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-1-select sl2 top-click-select-editing')]"
		);
	}
	get btnScientificEditing() {
		return $(
			"//ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-102-select sl2 top-click-select-editing')]"
		);
	}
	get btnStandardEditing() {
		return $(
			"//ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-36-select sl2 top-click-select-editing')]"
		);
	}

	/**
	 * select SL2 service
	 * @param	{string}	_service	Service level 2
	 */
	selectSL2(_service: string) {
		addStepInScenario("sl2:" + _service, false);
		if (_service == "premiumediting") {
			clickWebElement("click", this.btnPremiumEditing);
		} else if (_service == "scientificediting") {
			clickWebElement("click", this.btnScientificEditing);
		} else {
			clickWebElement("click", this.btnStandardEditing);
		}
	}

	/**
	 * select Sl1 then SL2 service
	 * @param	{string}	_service	Service level 2
	 */
	selectSL1Sl2(_sl2: string) {
		sl1Page.selectSL1(_sl2);
		this.selectSL2(_sl2);
	}
}
export const sl2Page = new SL2Page();
