/**
 * Grouping of functions related to checks on URL / Page details
 * @function checkTitle
 * @function checkURL
 */

import { waitUntilUrlMatches } from "../action/coreActions/waitActions";

/**
 * Check the title of the current browser window
 * @param	{boolean}	falseCase		Whether to check if the title matches the
 *                          	        expected value or not
 * @param	{string}	condition		whether to match exact or partial text
 * @param	{string}	expectedTitle	The expected title
 * @author	Ninad Patkar
 */
export function checkTitle(
	falseCase: boolean,
	condition: "matches" | "contains",
	expectedTitle: string
) {
	// The title of the current browser window
	const title: string = browser.getTitle();

	if (falseCase) {
		//if not to expect title
		if (condition === "matches") {
			//if not to match exact title
			expect(title).not.toBe(expectedTitle);
		} else {
			//if not to match partial title
			expect(title).not.toContain(expectedTitle);
		}
	} else {
		//if to expect title
		if (condition === "matches") {
			//if to match exact title
			expect(title).toBe(expectedTitle);
		} else {
			//if to match partial title
			expect(title).toContain(expectedTitle);
		}
	}
}

/**
 * Check the URL of the given browser window
 * @param	{boolean}	falseCase	Whether to check if the URL matches the
 *  @param	{string}	expectedUrl	The expected URL to check against
 * @author	Ninad Patkar , Harsha Varyani
 */

export function checkURL(falseCase: boolean, expectedUrl: string) {
	if (falseCase) {
		expect(browser.getUrl()).not.toContain(expectedUrl);
	} else {
		//wait until the url load is completed
		waitUntilUrlMatches(false, expectedUrl);
		expect(browser.getUrl()).toContain(expectedUrl);
	}
}
