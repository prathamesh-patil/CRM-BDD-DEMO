/**
 * Grouping of all wait actions
 * @function waitForAvailability
 * @function waitForAvailabilityOFElement
 * @function waitUntilTextMatches
 * @function waitUntilUrlMatches
 */

import type { Selector } from "webdriverio";

/**
 * Wait for the given element to become visible
 * @param	{Selector}	selector	Element selector
 * @param	{boolean}	falseCase	Whether or not to expect a visible or hidden state
 * @param	{string}	condition	condition to check enabled/displayed/exist/clickable
 * @author	Ninad Patkar
 */
export function waitForAvailability(
	selector: Selector,
	falseCase: boolean,
	condition: "displayed" | "exist" | "enabled" | "clickable"
) {
	const element: WebdriverIO.Element = $(selector);
	const conditionFn: string =
		"waitFor" + condition.charAt(0).toUpperCase() + condition.slice(1);

	if (falseCase) {
		element[conditionFn]({
			reverse: true,
		});
	} else {
		element[conditionFn]();
	}
}

/**
 * Wait for the given element to become visible
 * @param	{WebdriverIO.Element}	element	WebElement for action
 * @param	{boolean}	falseCase	Whether or not to expect a visible or hidden state
 * @param	{string}	condition	condition to check enabled/displayed/exist/clickable
 * @author	Makarand Dhuri
 */
export function waitForAvailabilityOFElement(
	element: WebdriverIO.Element,
	falseCase: boolean,
	condition: "displayed" | "exist" | "enabled" | "clickable"
) {
	const conditionFn: string =
		"waitFor" + condition.charAt(0).toUpperCase() + condition.slice(1);

	if (falseCase) {
		element[conditionFn]({
			reverse: true,
		});
	} else {
		element[conditionFn]();
	}
}

/**
 * Wait for the given text to match with current text
 * @param	{string}	actualText		actual text
 * @param	{string}	expectedText	text to wait for
 * @param	{string}	timeoutMessage	custom timeout message
 * @param	{boolean}	falseCase 		whether or not to expect the text
 * @author	Ninad Patkar
 */
export function waitUntilTextMatches(
	actualText: string,
	expectedText: string,
	falseCase: boolean
) {
	if (falseCase) {
		browser.waitUntil(() => actualText.indexOf(expectedText) == -1, {
			timeoutMsg: `${expectedText} found in  ${actualText} even after waiting`,
		});
	} else {
		browser.waitUntil(() => actualText.indexOf(expectedText) !== -1, {
			timeoutMsg: `${expectedText} not found in ${actualText} even after waiting`,
		});
	}
}

/**
 * Wait for the given URL to match with current URL
 * @param	{string}	url		actual text
 * @param	{string}	expectedText	text to wait for
 * @param	{string}	timeoutMessage	custom timeout message
 * @param	{boolean}	falseCase 		whether or not to expect the text
 * @author	Ninad Patkar , Harsha Varyani
 */
export function waitUntilUrlMatches(falseCase: boolean, expectedTUrl: string) {
	if (falseCase) {
		browser.waitUntil(() => browser.getUrl().indexOf(expectedTUrl) == -1, {
			timeoutMsg: `${expectedTUrl} found in current url ${browser.getUrl()} even after waiting`,
		});
	} else {
		browser.waitUntil(() => browser.getUrl().indexOf(expectedTUrl) !== -1, {
			timeoutMsg: `${expectedTUrl} not found in current url ${browser.getUrl()} even after waiting`,
		});
	}
}
