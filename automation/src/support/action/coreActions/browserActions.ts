/**
 * Grouping of all browser actions to be performed on page
 * @function previousPage
 * @function refreshSession
 * @function pressKey
 * @function pause
 * @function refreshPage
 */

/**
 * back to previous page
 * @author	Ninad Patkar
 */
export function previousPage() {
  browser.back();
}

/**
 * Clear browser session
 * @author	Ninad Patkar
 */
export function refreshSession() {
  browser.reloadSession();
}

/**
 * Perform a key press
 * @param	{string}	key	The key to press
 * @author	Ninad Patkar
 */
export function pressKey(key: string | string[]) {
  browser.keys(key);
}

/**
 * Pause execution for a given number of milliseconds
 * @param	{number}	ms	Number of milliseconds to pause
 * @author	Ninad Patkar
 */
export function pause(ms: string) {
  const intMs: number = parseInt(ms, 10);

  browser.pause(intMs);
}

/**
 * Refresh the page
 * @author	Jyotsna Patil
 */
 export function refreshPage() {
  browser.refresh();
}