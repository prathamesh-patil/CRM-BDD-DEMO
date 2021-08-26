/**
 * Grouping of all actions on input fields
 * @function clearInputField
 * @function setInputField
 * @function setInputFieldForElement
 * @function deletePrefillValue
 * @function getElementText
 */
import { Selector } from "webdriverio";
import { pressKey } from "./browserActions";
import { clickElement } from "./clickActions";
import { scrollTo, scrollToElement } from "./mouseActions";
import {
	waitForAvailability,
	waitForAvailabilityOFElement,
} from "./waitActions";
/**
 * Clear a given input field
 * @param	{Selector}	selector	Element selector
 * @author	Ninad Patkar
 */
export function clearInputField(selector: Selector) {
	$(selector).clearValue();
}

/**
 * Delete a prefilled input field value
 * @param	{Selector}	selector	Element selector
 * @author	Ninad Patkar
 */
export function deletePrefillValue(selector: Selector) {
	var count = $(selector).getValue().length;
	for (var i = 1; i <= count; i++) {
		if ($(selector).getValue() == "") {
			break;
		} else {
			clickElement("doubleClick", "element", selector);
			pressKey("Delete");
		}
	}
}

/**
 * Set the value of the given input field to a new value or add a value to the
 * current selector value
 * @param	{string}	method		The method to use (add or set)
 * @param	{string}	value		The value to set the selector to
 * @param	{Selector}	selector	Element selector
 * @author	Ninad Patkar
 */
export function setInputField(
	method: string,
	value: string,
	selector: Selector
) {
	const command = method === "add" ? "addValue" : "setValue";
	let checkValue: string = value;
	/* wait till input element is clickable 
     (some of the element are always enabled hence used clickable here) */
	waitForAvailability(selector, false, "clickable");
	// scroll element in center align to the screen
	scrollTo("center", selector);
	if (!value) {
		checkValue = "";
	}
	$(selector)[command](checkValue);
}

/**
 * Set the value of the given input field to a new value or add a value to the
 * current selector value
 * @param	{string}	method		The method to use (add or set)
 * @param	{string}	value		The value to set the selector to
 * @param	{WebdriverIO.Element}	element	WebElement for action
 * @author	Makarand Dhuri
 */
export function setInputFieldForElement(
	method: string,
	value: string,
	element: WebdriverIO.Element
) {
	const command = method === "add" ? "addValue" : "setValue";

	let checkValue: string = value;

	/* wait till input element is clickable 
    (some of the element are always enabled hence used clickable here) */
	waitForAvailabilityOFElement(element, false, "clickable");

	// scroll element in center align to the screen
	scrollToElement("center", element);

	if (!value) {
		checkValue = "";
	}

	element[command](checkValue);
}

/**
 * Fetch text from a given element
 * @param	{WebdriverIO.Element}	element	WebElement for action
 * @returns {string}  returns text value of element
 */
export function getElementText(element: WebdriverIO.Element) {
	// wait till input element is clickable
	waitForAvailabilityOFElement(element, false, "displayed");

	// scroll element in center align to the screen
	scrollToElement("center", element);

	return element.getText();
}
