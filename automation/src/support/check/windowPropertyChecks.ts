/**
 * Grouping of functions related to checks on window properties / attributes
 * @function checkIsOpenedInNewWindow
 * @function checkNewWindow
 */

import { checkURL } from "./pageUrlChecks";

/**
 * Check if the given URL was opened in a new window
 * @param	{String}	expectedUrl	The URL to check for
 * @author	Ninad Patkar
 */
export function checkIsOpenedInNewWindow(expectedUrl: string) {
  const currentWindowHandle: string = browser.getWindowHandle();

  // All the current window handles
  const windowHandles: string[] = browser.getWindowHandles();

  expect(windowHandles).not.toHaveLength(1);

  // The last opened window handle
  const lastWindowHandle: string = browser.getWindowHandles().slice(-1)[0];

  // Make sure we focus on the last opened window handle
  browser.switchToWindow(lastWindowHandle);

  //check expectedUrl is present in current url
  checkURL(false, expectedUrl);

  browser.closeWindow();
  browser.switchToWindow(currentWindowHandle);
}

/**
 * Check if a new window or tab is opened
 * @param	{boolean}	falseCase Whether to check if a new window/tab was opened or not
 * @author	Ninad Patkar
 */
export function checkNewWindow(falseCase: boolean) {
  // The handles of all open windows/tabs
  const windowHandles: string[] = browser.getWindowHandles();

  if (falseCase) {
    expect(windowHandles).toHaveLength(1);
  } else {
    expect(windowHandles).not.toHaveLength(1);
  }
}
