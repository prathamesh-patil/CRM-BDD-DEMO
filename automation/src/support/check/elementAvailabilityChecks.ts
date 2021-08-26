/**
 * Grouping of functions related to checks on elements availability / visibility on page
 * @function checkAvailability
 * @function checkElementCount
 * @function checkFocus
 * @function checkWithinViewPorts
 * @function checkDimension
 * @function checkOffset
 * @function checkDimension
 * @function checkIfElementExists
 * @function checkIfElementPresent
 */

import type { Selector } from "webdriverio";
import type { RectReturn } from "@wdio/protocols";
import { scrollTo } from "../action/coreActions/mouseActions";

/**
 * Check if the given element is (not) displayed / enabled / selected / clickable
 * @param	{Selector}	selector	Element selector
 * @param	{boolean}	falseCase	whether to check element is or is not
 * @param	{string}		condition	to check enabled/displayed/selected/clickable
 * @author	Ninad Patkar
 */
export function checkAvailability(
	selector: Selector,
	falseCase: boolean,
	condition: "displayed" | "enabled" | "selected" | "clickable"
) {
	const element: ElementArrayImport = $$(selector);
	let flag: boolean = false;

	//generates the condition function string
	const conditionFn: string =
		"is" + condition.charAt(0).toUpperCase() + condition.slice(1);

	//check if element satisfies the condition
	element.forEach((elem) => {
		if (elem[conditionFn]()) {
			flag = true;
		}
	});

	if (falseCase) {
		expect(flag).not.toEqual(true);
	} else {
		scrollTo("center", selector);
		expect(flag).toEqual(true);
	}
}

/**
 * check if element has count equal to / greater than / lower than expected
    @param	{Selector}	tagName		Element type (element or button)
    @param	{string}	condition	condition to check equal to / greater than / less than
    @param	{string}	count		Count to be checked against
    @author	Ninad Patkar
 */

export function checkElementCount(
	tagname: Selector,
	condition: "equal to" | "greater than" | "less than",
	count: string
) {
	const expectedCount: number = parseInt(count);
	scrollTo("center", tagname);
	const element: ElementArrayImport = $$(tagname);
	switch (condition) {
		case "equal to": {
			expect(element.length).toEqual(expectedCount);
			break;
		}
		case "greater than": {
			expect(element.length).toBeGreaterThan(expectedCount);
			break;
		}
		case "less than": {
			expect(element.length).toBeLessThan(expectedCount);
			break;
		}
		default: {
			throw new Error(`Unknown condition type "${condition}"`);
		}
	}
}

/**
 * Check if the given element has the focus
 * @param	{Selector}	selector	Element selector
 * @param	{boolean}	falseCase	Whether to check if the given element has focus or not
 * @author	Ninad Patkar
 */
export function checkFocus(selector: Selector, falseCase: boolean) {
	scrollTo("center", selector);
	// Value of the hasFocus function for the given element
	const hasFocus: boolean = $(selector).isFocused();

	if (falseCase) {
		expect(hasFocus).not.toBe(true);
	} else {
		expect(hasFocus).toBe(true);
	}
}

/**
 * Check if the given element is visible inside the current viewport
 * @param	{Selector}	selector	Element selector
 * @param	{boolean}	falseCase 	Whether to check if the element is visible
 *                              	within the current viewport or not
 * @author	Ninad Patkar
 */
export function checkWithinViewPorts(selector: Selector, falseCase: boolean) {
	// The state of visibility of the given element inside the viewport
	const isDisplayed: boolean = $(selector).isDisplayedInViewport();

	if (falseCase) {
		expect(isDisplayed).not.toEqual(true);
	} else {
		expect(isDisplayed).toEqual(true);
	}
}

/**
 * Check the offset of the given element
 * @param	{Selector}	selector			Element selector
 * @param	{boolean}	falseCase			Whether to check if the offset matches or not
 * @param	{string}		expectedPosition	The position to check against
 * @param 	{string}		axis				The axis to check on (x or y)
 * @author	Ninad Patkar
 */
export function checkOffset(
	selector: Selector,
	falseCase: boolean,
	expectedPosition: string,
	axis: "x" | "y"
) {
	// Get the location of the element on the given axis
	const location: number = $(selector).getLocation(axis);

	// Parsed expected position
	const intExpectedPosition: number = parseFloat(expectedPosition);

	if (falseCase) {
		expect(location).not.toEqual(intExpectedPosition);
	} else {
		expect(location).toEqual(intExpectedPosition);
	}
}

/**
 * Check the dimensions of the given element
 * @param	{Selector}	selector		Element selector
 * @param	{boolean}	falseCase		Whether to check if the dimensions match or not
 * @param	{string}	expectedSize	Expected size
 * @param	{string}	dimension		Dimension to check (broad or tall)
 * @author	Ninad Patkar
 */
export function checkDimension(
	selector: Selector,
	falseCase: boolean,
	expectedSize: string,
	dimension: "broad" | "tall"
) {
	scrollTo("center", selector);
	// The size of the given element
	const elementOriginalSize: RectReturn = $(selector).getSize() as RectReturn;

	// Parsed size to check for
	const intExpectedSize: number = parseInt(expectedSize, 10);

	// The size property to check against
	let originalDimension: number = elementOriginalSize.height;

	// The label of the checked property
	let label: string = "height";

	if (dimension === "broad") {
		originalDimension = elementOriginalSize.width;
		label = "width";
	}

	if (falseCase) {
		expect(originalDimension).not.toBe(intExpectedSize);
	} else {
		expect(originalDimension).toBe(intExpectedSize);
	}
}

/**
 * Check if the given element exists in the DOM one or more times
 * @param	{string}	Selector	Element selector
 * @param	{boolean}	falseCase	Check if the element (does not) exists
 * @author	Ninad Patkar
 */
export function checkIfElementExists(selector: Selector, falseCase?: boolean) {
	const nrOfElements: ElementArrayImport = $$(selector);

	if (falseCase) {
		expect(nrOfElements.length).toEqual(0);
	} else {
		expect(nrOfElements.length).toBeGreaterThanOrEqual(1);
	}
}

/**
 * Check if the given element exists in the DOM one or more times
 * @param	{string}	Selector	Element selector
 * @author	Makarand Dhuri
 */
export function checkIfElementPresent(str: string) {
	const nrOfElements: ElementArrayImport = $$(str);

	if (nrOfElements.length > 0) {
		return true;
	} else {
		return false;
	}
}
