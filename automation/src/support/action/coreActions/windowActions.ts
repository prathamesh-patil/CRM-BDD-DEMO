/**
 * Grouping of all window based actions
 * @function closeAllButFirstTab
 * @function closeLastOpenedTab
 * @function focusLastOpenedTab
 * @function setWindowSize
 */

/**
 * Close all but the first tab
 * @author	Ninad Patkar
 */
export function closeAllButFirstTab() {
  // Get all the window handles
  const windowHandles: string[] = browser.getWindowHandles();

  // Close all tabs but the first one
  windowHandles.reverse();
  windowHandles.forEach((handle, index) => {
    browser.switchToWindow(handle);
    if (index < windowHandles.length - 1) {
      browser.closeWindow();
    }
  });
}

/**
 * Close the last opened window
 * @author	Ninad Patkar
 */
export function closeLastOpenedTab() {
  //The current window handle
  const currentWindowHandle: string = browser.getWindowHandle();

  //The last opened window handle
  const lastWindowHandle: string = browser.getWindowHandles().slice(-1)[0];

  if (currentWindowHandle === lastWindowHandle) browser.closeWindow();
  else {
    browser.switchToWindow(lastWindowHandle);
    browser.closeWindow();
    browser.switchToWindow(currentWindowHandle);
  }
}

/**
 * Focus the last opened window
 * @author	Ninad Patkar
 */
export function focusLastOpenedTab() {
  //The last opened window
  const lastWindowHandle: string = browser.getWindowHandles().slice(-1)[0];

  browser.switchToWindow(lastWindowHandle);
}

/**
 * Resize the browser window
 * @param	{string}	screenWidth		The width of the window to resize to
 * @param	{string}	screenHeight	The height of the window to resize to
 * @author	Ninad Patkar
 */
export function setWindowSize(screenWidth: string, screenHeight: string) {
  browser.setWindowSize(parseInt(screenWidth, 10), parseInt(screenHeight, 10));
}
/**
 * Open the Last Window
 * @author Prathamesh.Patil
 */
export function closeFirstOpenedTab() {
  //The current window handle
  const currentWindowHandle: string = browser.getWindowHandle();

  //The last opened window handle
  const lastWindowHandle: string = browser.getWindowHandles().slice(-1)[0];

  if (currentWindowHandle === lastWindowHandle) browser.closeWindow();
  else {
    browser.switchToWindow(currentWindowHandle);
    browser.closeWindow();
    browser.switchToWindow(lastWindowHandle);
  }
}