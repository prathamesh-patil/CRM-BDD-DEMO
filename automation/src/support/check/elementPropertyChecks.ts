/**
 * Grouping of functions related to checks on elements properties / attributes
 * @function checkProperty
 * @function checkAttribute
 * @function checkClass
 * @function checkLinks
 */

import type { Selector } from "webdriverio";
import { scrollTo } from "../action/coreActions/mouseActions";
import {
	waitForAvailability,
	waitUntilTextMatches,
} from "../action/coreActions/waitActions";

/**
 * Check the given property of the given element
 * @param	{boolean}			isCSS			Whether to check for a CSS property or an attribute
 * @param	{string}			attrName		The name of the attribute to check
 * @param	{Selector}			selector		Element selector
 * @param	{boolean}			falseCase		Whether to check if the value of the
 *                                  			attribute matches or not
 * @param	{string/ number}	expectedValue	The value to match against
 * @author	Ninad Patkar
 */
export function checkProperty(
	isCSS: boolean,
	attrName: string,
	selector: Selector,
	falseCase: boolean,
	expectedValue: number | string
) {
	waitForAvailability(selector, false, "exist");
	//The command to use for fetching the expected value
	const command = isCSS ? "getCSSProperty" : "getAttribute";

	//Te label to identify the attribute by
	const attrType: string = isCSS ? "CSS attribute" : "Attribute";

	// The actual attribute value
	let attributeValue: any = $(selector)[command](attrName);

	// eslint-disable-next-line
	expectedValue = isFinite(expectedValue as number)
		? parseFloat(expectedValue as string)
		: expectedValue;

	scrollTo("center", selector);

	/**
	 * when getting something with a color or font-weight WebdriverIO returns a
	 * object but we want to assert against a string
	 */
	if (attrName.match(/(color|font-weight)/)) {
		attributeValue = attributeValue.value;
	}

	if (falseCase) {
		expect(attributeValue).not.toEqual(expectedValue);
	} else {
		expect(attributeValue).toEqual(expectedValue);
	}
}

/**
 * Verify attribute of element matches the expected value
 * @param	{Selector}	selector    names of files to verify
 * @param	{string}	attribute	property of element
 * @param	{string}	condition	matches or contains
 * @param	{string}	value		value of property
 * @author	Ninad Patkar
 */

export function checkAttribute(
	selector: Selector,
	attribute: string,
	condition: "with" | "containing",
	expectedValue: string
) {
	waitForAvailability(selector, false, "displayed");
	scrollTo("center", selector);
	const actualValue: string = $(selector).getAttribute(attribute);
	if (condition === "with") {
		//if to match exact title
		expect(actualValue).toBe(expectedValue);
	} else {
		//if to match partial title
		expect(actualValue).toContain(expectedValue);
	}
}

/**
 * Check if the given element has the given class
 * @param	{Selector}	selector			Element selector
 * @param	{string}	falseCase			Whether to check for the class to exist
 *                                          or not ('has', 'does not have')
 * @param	{string}	expectedClassName	The class name to check
 * @author	Ninad Patkar
 */
export function checkClass(
	selector: Selector,
	falseCase: string,
	expectedClassName: string
) {
	//wait till the element is available on page
	waitForAvailability(selector, false, "exist");

	scrollTo("center", selector);

	//get list of class attribute of the element
	const classesList: string = $(selector).getProperty("className").toString();

	//check for false case
	if (falseCase === "does not have") {
		expect(classesList).not.toContain(expectedClassName);
		return;
	}

	//wait till expected class name is available
	waitUntilTextMatches(classesList, expectedClassName, false);

	//check for class name
	expect(classesList).toContain(expectedClassName);
}

/**
 * Check if the given element has the expected link in attribute with or without new tab target
 * @param	{Selector}	selector	Element selector
 * @param	{string}	falseCase	Whether to check for the url to exist or
 * 									not ('has', 'does not have')
 * @param	{string}	expectedUrl	The url name to check
 * @param	{string}	newTab		Expected to open in new tab
 * @author	Ninad Patkar
 */
export function checkLinks(
	selector: Selector,
	falseCase: string,
	expectedLinkUrl: string,
	newTab?: boolean
) {
	waitForAvailability(selector, false, "exist");
	scrollTo("center", selector);
	const linkUrl: string = $(selector).getAttribute("href");

	//check if link opening in new tab
	if (newTab) {
		expect($(selector).getAttribute("target")).toBe("_blank");
	}

	if (falseCase === "does not have") {
		expect(linkUrl).not.toContain(expectedLinkUrl);

		return;
	}

	//wait until the href attribute is available for element
	waitUntilTextMatches(linkUrl, expectedLinkUrl, false);
	expect(linkUrl).toContain(expectedLinkUrl);
}
