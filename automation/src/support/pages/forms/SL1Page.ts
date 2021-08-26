/**
 * Grouping of functions related to prospect details
 * @function selectSL1
 */

import { addStepInScenario } from "src/steps/coreSteps/after";
import { clickWebElement } from "src/support/action/coreActions/clickActions";

class SL1Page {
	get btnEnglishEditing() {
		return $("//a[@href='/order/ncf/english-editing']");
	}

	/**
	 * select Sl1 service
	 * @param	{string}	_service	Service level 2
	 */
	selectSL1(_service: string) {
		if (_service.toLowerCase().indexOf("editing") >= 0) {
			clickWebElement("click", this.btnEnglishEditing);
			addStepInScenario("sl1:English Editing", false);
		} else if (_service.toLowerCase().indexOf("translation") >= 0) {
			clickWebElement("click", this.btnEnglishEditing);
			addStepInScenario("sl1:Translation", false);
		} else {
			clickWebElement("click", this.btnEnglishEditing);
			addStepInScenario("sl1:PSS", false);
		}
	}
}

export const sl1Page = new SL1Page();
