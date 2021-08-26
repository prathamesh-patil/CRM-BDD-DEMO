/**
 * Grouping of all Select Element actions
 * @function selectOptions
 * @function selectOptionsByIndex
 * @function clickAndSelect
 */

import { checkIfElementPresent } from "src/support/check/elementAvailabilityChecks";
import { Selector } from "webdriverio";

import { clickElement, clickWebElement } from "./clickActions";
import { scrollTo } from "./mouseActions";
import { waitForAvailability } from "./waitActions";

/**
 * Select an option of a select element
 * @param	{string}	selectionType	Type of method to select by (name, value or text)
 * @param	{string}	selectionValue	Value to select by
 * @param	{Selector}	selector		Element selector
 * @author	Ninad Patkar
 */
export function selectOptions(
	selectionType: "name" | "value" | "text",
	selectionValue: string,
	selector: Selector
) {
	//The method to use for selecting the option
	let command: "selectByAttribute" | "selectByVisibleText";

	const commandArguments: string[] = [selectionValue];

	switch (selectionType) {
		case "name": {
			command = "selectByAttribute";

			/* The selectByAttribute command expects the attribute name as it's
			second argument so let's add it */
			commandArguments.unshift("name");

			break;
		}

		case "value": {
			command = "selectByAttribute";

			/* The selectByAttribute command expects the attribute value as it's
			second argument so let's add it */
			commandArguments.unshift("value");

			break;
		}

		case "text": {
			command = "selectByVisibleText";
			break;
		}

		default: {
			throw new Error(`Unknown selection type "${selectionType}"`);
		}
	}

	scrollTo("center", selector);
	$(selector)[command](...(commandArguments as [string, string]));
}

/**
 * Select a option from a select element by it's index
 * @param	{string}	index		The index of the option
 * @param	{Selector}	selector	Element selector
 * @author	Ninad Patkar
 */
export function selectOptionsByIndex(index: string, selector: Selector) {
	// The index of the option to select
	const optionIndex: number = parseInt(index, 10);

	scrollTo("center", selector);
	$(selector).selectByIndex(optionIndex);
}

/**
 * Select a option from a select element by it's index
 * @param	{string}	index		The index of the option
 * @param	{WebdriverIO.Element}	element	WebElement for action
 * @author	Makarand Dhuri
 */
export function clickAndSelect(
	action: "click" | "doubleClick",
	element: WebdriverIO.Element,
	selectionValue: string
) {
	clickWebElement(action, element);

	let path = "//*[normalize-space()='" + selectionValue + "']";
	const isElementPresent = checkIfElementPresent(path);

	let target: Selector;
	if (isElementPresent) {
		target = $(path);
	} else {
		path = "//*[text()='" + selectionValue + "']";
		target = $(path);
	}
	waitForAvailability(target, false, "clickable");
	scrollTo("center", target);
	clickElement(action, "element", target);
}
