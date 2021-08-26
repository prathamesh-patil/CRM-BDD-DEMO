import { After, Status } from "@cucumber/cucumber";
import cucumberJson from "wdio-cucumberjs-json-reporter";

After((scenarioResult) => {
	if (scenarioResult.result.status === Status.FAILED) {
		// Attach a screenshot in after hook
		cucumberJson.attach(browser.takeScreenshot(), "image/png");
	}
});

/**
 * Check if the given element is (not) displayed / enabled / selected / clickable
 * @param	{string}	_step	step to write
 * @param	{boolean}	_screenShot	_screenshot flag
 * @author	Makarand Dhuri
 */
export function addStepInScenario(_step:string,_screenShot:boolean) {
	if(_screenShot){
		cucumberJson.attach(_step+browser.takeScreenshot(), "image/png");
	}else{
		cucumberJson.attach(_step);
	}
}
