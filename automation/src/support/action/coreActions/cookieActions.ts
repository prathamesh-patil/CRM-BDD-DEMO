/**
 * Grouping of all cookie based actions
 * @function deleteCookies
 * @function setCookie
 */

/**
 * Delete a cookie
 * @param	{string}	name	The name of the cookie to delete
 * @author	Ninad Patkar
 */
export function deleteCookies(name?: string | string[]) {
  browser.deleteCookies(name);
}

/**
 * Set a given cookie to a given value. When the cookies does not exist it will
 * be created
 * @param	{string}	cookieName		The name of the cookie
 * @param	{string}	cookieContent	The value of the cookie
 * @author	Ninad Patkar
 */
export function setCookie(cookieName: string, cookieContent: string) {
  browser.setCookies({
    name: cookieName,
    value: cookieContent,
  });
}
