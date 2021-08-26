/**
 * Grouping of functions related to text checks of elements
 * @function checkText
 * @function compareText
 * @function checkContainsAnyText
 * @function checkPromptText
 */

import type { Selector } from "webdriverio";
import { scrollTo } from "../action/coreActions/mouseActions";
import { waitForAvailability } from "../action/coreActions/waitActions";

/**
 * Check if the given elements contains text
 * @param	{string}	elementType		Element type (element or button)
 * @param	{Selector}	selector		Element selector
 * @param	{boolean}	falseCase		Whether to check if the content has
 *                                  	the given text or not
 * @param	{string}	caseType		case to check contains or matches
 * @param	{string}	expectedText	The text to check against
 * @author	Ninad Patkar
 */
export function checkText(
	elementType: "element" | "button",
	selector: Selector,
	falseCase: boolean,
	caseType: "matches" | "contains",
	expectedText: string
) {
	//wait till element is Displayed
	waitForAvailability(selector, false, "displayed");

	scrollTo("center", selector);

	//command to use to read element text
	const command =
		elementType === "button" || $(selector).getAttribute("value") === null
			? "getText"
			: "getValue";

	falseCase = !expectedText && !falseCase;

	const text: string = $(selector)[command]();

	//if not to expect text
	if (falseCase) {
		if (caseType === "matches") {
			//if not to match exact text
			expect(text).not.toBe(expectedText);
		} else {
			//if not to match partial text
			expect(text).not.toContain(expectedText);
		}
	} else {
		//else to expect text
		if (caseType === "matches") {
			//if to match exact text
			expect(text).toBe(expectedText);
		} else {
			//if to match partial text
			expect(text).toContain(expectedText);
		}
	}
}

/**
 * Compare the contents of two elements with each other
 * @param	{Selector}	selector1	Element selector for the first element
 * @param	{boolean}	falseCase	Whether to check if the contents of both
 *                              	elements match or not
 * @param	{Selector}	selector2	Element selector for the second element
 * @author	Ninad Patkar
 */
export function compareText(
	selector1: Selector,
	falseCase: boolean,
	selector2: Selector
) {
	// The text of the first element
	const text1: string = $(selector1).getText();

	// The text of the second element
	const text2: string = $(selector2).getText();

	scrollTo("center", selector1);

	if (falseCase) {
		expect(text1).not.toEqual(text2);
	} else {
		expect(text1).toEqual(text2);
	}
}

/**
 * Check if the given elements contains text
 * @param  {string}		elementType	Element type (element or button)
 * @param  {Selector}	selector	Element selector
 * @param  {any}		falseCase	Whether to check if the content contains text or not
 * @author Ninad Patkar
 */
export function checkContainsAnyText(
	elementType: "element" | "button",
	selector: Selector,
	falseCase?: any
) {
	// The command to perform on the browser object
	let command: "getValue" | "getText" = "getValue";

	if (elementType === "button" || $(selector).getAttribute("value") === null) {
		command = "getText";
	}

	// False case
	let boolFalseCase: boolean;

	scrollTo("center", selector);

	// The text of the element
	const text: string = $(selector)[command]();

	if (typeof falseCase === "undefined") {
		boolFalseCase = false;
	} else {
		boolFalseCase = Boolean(falseCase);
	}

	if (boolFalseCase) {
		expect(text).toBe("");
	} else {
		expect(text).not.toBe("");
	}
}

/**
 * Check the text of a modal
 * @param  {string}   falseState	Whether to check if the text matches or not
 * @param  {string}   expectedText	The text to check against
 * @author Ninad Patkar
 */
export function checkPromptText(falseState: string, expectedText?: string) {
	let promptText: string = null;
	promptText = browser.getAlertText();

	if (expectedText) {
		//To verify the text from Prompt
		if (falseState) {
			expect(promptText).not.toContain(expectedText);
		} else {
			expect(promptText).toContain(expectedText);
		}
	} else {
		//To verify if prompt is present or not
		if (falseState) {
			expect(promptText).toBe(null);
		} else {
			expect(promptText).not.toBe(null);
		}
	}
}
