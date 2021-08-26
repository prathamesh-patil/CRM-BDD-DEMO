/**
 * Grouping of functions related to Document upload file
 * @function uploadJobFile
 */

import { addStepInScenario } from "src/steps/coreSteps/after";
import { uploadFileForElement } from "src/support/action/coreActions/fileUploadActions";
import { waitForAvailability } from "src/support/action/coreActions/waitActions";

class DocumentUploadPage {
	get inputUploadJob() {
		return $("//div[@id='field_file_upload_order']//input[@name='qqfile']");
	}
	get progressBar() {
		return $("//div[@class='file-upload']//div[@role='progressbar']");
	}

	/**
	 * User upload job files
	 * @param	{string}	_no	        no of files to be uploaded
	 * @param	{string}	_filePaths	paths of the file to be uploaded
	 */
	uploadJobFile(_no: number, _filePaths: string) {
		addStepInScenario("Upload Job File", false);
		uploadFileForElement(_no, _filePaths, this.inputUploadJob);
		waitForAvailability(this.progressBar, true, "displayed");
	}
}

export const uploadDoc = new DocumentUploadPage();
