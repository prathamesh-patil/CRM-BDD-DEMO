/**
 * Grouping of all file upload actions
 * @function uploadFile
 * @function uploadFileForElement
 * @function removeUploadedFile
 */

import { Selector } from "webdriverio";
import { scrollTo, scrollToElement } from "./mouseActions";
import { waitForAvailability, waitForAvailabilityOFElement } from "./waitActions";

/**
 * Uploads given number of files on given field
 * @param	{number}	number		number of files to upload
 * @param	{string}	filepath	complete path of files to upload
 * @param	{Selector}	locator	for file upload
 * @author	Ninad Patkar
 */
export function uploadFile(
	number: number,
	filePaths: string,
	locator: Selector
) {
	const path: any = require("path");
	const element: WebdriverIO.Element = $(locator);

	//waiting till upload element is enabled
	waitForAvailability(locator, false, "enabled");

	//file paths of individual files
	const filepathsArray: string[] = filePaths.split(";", number);

	scrollTo("center", locator);

	for (let i = 0; i < number; i++) {
		let filepath = path.resolve(__dirname, filepathsArray[i]);
		element.addValue(filepath);
	}
}

/**
 * Uploads given number of files on given field
 * @param	{number}	number		number of files to upload
 * @param	{string}	filepath	complete path of files to upload
 * @param	{WebdriverIO.Element}	element	WebElement for file upload
 * @author	Makarand Dhuri
 */
 export function uploadFileForElement(
	number: number,
	filePaths: string,
	element: WebdriverIO.Element
) {
	const path: any = require("path");

	//waiting till upload element is enabled
	waitForAvailabilityOFElement(element, false, "enabled");

	//file paths of individual files
	const filepathsArray: string[] = filePaths.split(";", number);

	scrollToElement("center", element);

	for (let i = 0; i < number; i++) {
		let filepath = path.resolve(__dirname, filepathsArray[i]);
		element.addValue(filepath);
	}
}

/**
 * remove given number of uploaded files on given field
 * @param	{number}	number		number of files to remove
 * @param	{string}	fileNames	files to remove
 * @author	Ninad Patkar
 */
export function removeUploadedFile(number: number, fileNames: String) {
	//array of individual file names to remove
	const fileName: string[] = fileNames.split(";", number);

	for (let i = 0; i < fileName.length; i++) {
		//xpath for close button on individual file element
		let xpathClose: string =
			"//span[text()='" + fileName[i] + "']//following-sibling::button";

		//xpath for individual file element
		let xpathFile: string = "//span[text()='" + fileName[i] + "']";

		//element locator for individual file close button
		let elementClose: WebdriverIO.Element = $(xpathClose);

		//waiting till close button on file element is enabled
		waitForAvailability(xpathClose, false, "enabled");

		scrollTo("center", xpathFile);

		//remove file action
		elementClose.click();

		//waiting till file is removed
		waitForAvailability(xpathFile, true, "displayed");
	}
}
