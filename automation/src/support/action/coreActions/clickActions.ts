/**
 * Grouping of all click based actions on elements
 * @function clickElement
 * @function clickWebElement
 * @function scrollAndClick
 */

import { Selector } from "webdriverio";
import { scrollTo } from "./mouseActions";
import { waitForAvailability, waitForAvailabilityOFElement } from "./waitActions";

/**
 * Perform an click action on the given element
 * @param	{string}	action		The action to perform (click or doubleClick)
 * @param	{string}	type		Type of the element (link or button or element)
 * @param	{Selector}	selector	Element selector
 * @author	Ninad Patkar
 */
export function clickElement(
  action: "click" | "doubleClick",
  type: "link" | "button" | "element",
  selector: Selector
) {
  // Element to perform the action on
  const selector2: Selector = type === "link" ? `=${selector}` : selector;

  // The method to call on the browser object
  const method = action === "click" ? "click" : "doubleClick";

  //wait till element is clickable
  waitForAvailability(selector2, false, "clickable");

  //perform click | doubleClick action on element
  $(selector2)[method]();
}

/**
 * Perform an click action on the given element
 * @param	{string}	action		The action to perform (click or doubleClick)
 * @param	{WebdriverIO.Element}	element	WebElement for action
 * @author	Makarand Dhuri
 */
 export function clickWebElement(
  action: "click" | "doubleClick",
  element: WebdriverIO.Element
) {
  // The method to call on the browser object
  const method = action === "click" ? "click" : "doubleClick";

  //wait till element is clickable
  waitForAvailabilityOFElement(element, false, "clickable");

  //perform click | doubleClick action on element
  element[method]();
}

/**
 * Scroll the page to certain position and then perform an click action on the given element
 * @param	{string}	position	The position to scroll the page to
 * @param	{string}	action		The action to perform (click or doubleClick)
 * @param	{string}	type		Type of the element (link or selector)
 * @param	{Selector}	selector	Element selector
 */
export function scrollAndClick(
  position: "start" | "center" | "end",
  action: "click" | "doubleClick",
  type: string,
  selector: Selector
) {
  // Element to perform the action on
  const selector2: Selector = type === "link" ? `=${selector}` : selector;

  // The method to call on the browser object
  const method = action === "click" ? "click" : "doubleClick";

  //wait till element is clickable
  waitForAvailability(selector2, false, "clickable");

  // scroll element in position
  scrollTo(position, selector2);

  // Perform action
  $(selector2)[method]();
}
