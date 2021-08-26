/**
 * Grouping of all open site / url actions
 * @function openSite
 * @function openSiteAndWaitForLoad
 */

import { setCookie } from "./cookieActions";
import { waitUntilUrlMatches } from "./waitActions";

/**
 * Open the given URL
 * @param	{string}	type	Type of navigation (url|website|crm|eos|sso|legacy_website)
 * @param	{string}	page	The URL to navigate to
 * @author	Ninad Patkar
 */
export function openSite(
	type: "url" | "website" | "crm" | "eos" | "sso" | "legacy_website",
	page: string
) {
	//The URL to navigate to
	page = page.replace(/^(\/)/, "");
	const currentUrl: string = browser.getUrl();

	//generate url as per environment parameter values
	const url: string =
		type === "url" ? page : `${process.env[type.toUpperCase()]}/${page}`;
	if (currentUrl === url) {
		return;
	}
	browser.url(url);
}

/**
 * Open the given URL and wait for loading
 * @param	{string}	type	Type of navigation (url|website|crm|eos|sso|legacy_website)
 * @param	{string}	page	The URL to navigate to
 * @author	Ninad Patkar
 */
export function openSiteAndWaitForLoad(
	type: "url" | "website" | "crm" | "eos" | "sso" | "legacy_website",
	page: string
) {
	openSite(type, page);

	//waiting till the url load is completed
	page = page.replace(/^(\/)/, "");
	waitUntilUrlMatches(false, page);
}
