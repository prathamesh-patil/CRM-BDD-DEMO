/**
 * Grouping of functions related to checks on uploaded files
 * @function checkFileUpload
 */

import type { Selector } from "webdriverio";
import { scrollTo } from "../action/coreActions/mouseActions";
import { waitForAvailability } from "../action/coreActions/waitActions";

/**
 * Verify uploaded files names are displayed or not
 * @param	{string}	fileNames	names of files to verify
 * @param	{Selector}	selector	element array of uploaded files
 * @author	Ninad Patkar
 */

export function checkFileUpload(fileNames: string, selector: Selector) {
	scrollTo("center", selector);
	//Element of uploaded files
	const elementsArray: ElementArrayImport = $$(selector);

	//individual filenames to verify
	let fileName: string[] = fileNames.split(";", elementsArray.length);

	elementsArray.forEach((element) => {
		waitForAvailability(element, false, "displayed");
		expect(element.getText()).toBe(fileName.shift());
	});
}
