/**
 * Grouping of functions related to checks on cookies
 * @function checkCookieContent
 * @function checkCookieExists
 */

/**
 * Check the content of a cookie against a given value
 * @param	{string}		name			The name of the cookie
 * @param	{boolean}	falseCase		Whether or not to check if the value matches or not
 * @param	{string}		expectedValue	The value to check against
 * @author	Ninad Patkar
 */
export function checkCookieContent(
  name: string,
  falseCase: boolean,
  expectedValue: string
) {
  // The cookie retrieved from the browser object
  const cookie = browser.getCookies(name)[0];
  expect(cookie.name).toBe(name);

  if (falseCase) {
    expect(cookie.value).not.toBe(expectedValue);
  } else {
    expect(cookie.value).toBe(expectedValue);
  }
}

/**
 * Check if a cookie with the given name exists
 * @param	{string}	name		The name of the cookie
 * @param	{boolean}	falseCase	Whether or not to check if the cookie exists or not
 * @author	Ninad Patkar
 */
export function checkCookieExists(name: string, falseCase: boolean) {
  // The cookie as retrieved from the browser
  const cookie = browser.getCookies(name);

  if (falseCase) {
    expect(cookie).toHaveLength(0);
  } else {
    expect(cookie).not.toHaveLength(0);
  }
}
