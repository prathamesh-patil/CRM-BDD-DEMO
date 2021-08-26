/**
 * Grouping of all mouse actions on a page
 * @function mouseHover
 * @function dragElement
 * @function scrollTo
 * @function scrollToElement
 */

import { Selector } from "webdriverio";
import { waitForAvailability } from "./waitActions";

/**
 * Move to the given selector with an optional offset on a X and Y position
 * @param	{Selector}	selector	Element selector
 * @param	{string}	x			X coordinate to move to
 * @param	{string}	y			Y coordinate to move to
 * @author	Ninad Patkar
 */
export function mouseHover(selector: Selector, x: string, y: string) {
	const intX: number = parseInt(x, 10) || undefined;

	const intY: number = parseInt(y, 10) || undefined;

	scrollTo("center", selector);

	$(selector).moveTo({
		xOffset: intX,
		yOffset: intY,
	});
}

/**
 * Drag an element to a given destination
 * @param	{Selector}	selector	The selector for the source element
 * @param	{Selector}	destination	The selector for the destination element
 * @author	Ninad Patkar
 */
export function dragElement(selector: Selector, destination: Selector) {
	const target: WebdriverIO.Element = $(destination);
	scrollTo("center", selector);
	$(selector).dragAndDrop(target);
}

/**
 * Scroll the page to the given element
 * @param	{string}	position	The position to scroll the page to
 * @param	{Selector}	selector	Element selector
 * @author Ninad Patkar
 */
export function scrollTo(
	position: "start" | "center" | "end",
	selector: Selector
) {
	$(selector).scrollIntoView({ block: position, inline: "nearest" });
}

/**
 * Scroll the page to the given element
 * @param	{string}	position	The position to scroll the page to
 * @param	{WebdriverIO.Element}	element	WebElement for action
 * @author Makarand Dhuri
 */
 export function scrollToElement(
	position: "start" | "center" | "end",
	element: WebdriverIO.Element
) {
	element.scrollIntoView({ block: position, inline: "nearest" });
}
