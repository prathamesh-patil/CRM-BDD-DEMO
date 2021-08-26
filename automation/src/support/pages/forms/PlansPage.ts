/**
 * Grouping of functions related to plans
 * @function selectPlan
 */

import { addStepInScenario } from "src/steps/coreSteps/after";
import { pause } from "src/support/action/coreActions/browserActions";
import { clickWebElement } from "src/support/action/coreActions/clickActions";

class PlansPage {
	get inputRadioPlan() {
		return $(
			"//app-phoenix-plan-items/form/div/div[2]//span[@class='radio-icon']"
		);
	}
	get btnProceed() {
		return $("//button[@angularticsaction='proceedFromPlanSection']");
	}

	/**
	 * User select plan random plan
	 */
	selectPlan() {
		pause("1000");
		addStepInScenario("Select plan", false);
		clickWebElement("click", this.inputRadioPlan);
		clickWebElement("click", this.btnProceed);
	}
}

export const plan = new PlansPage();
