/**
 * Grouping of all upload file actions
 * @function fileUploadEnquiryFiles
 */
import { uploadFileForElement } from "src/support/action/coreActions/fileUploadActions";
const data = require("data/testData.js");
class UploadFilesPage{
    fileUploadEnquiryFiles(){
        let cdetails = data.common.details;
        const inputFile=browser.$('#top-scroll > input:nth-child(10)');
        uploadFileForElement(cdetails.no_files,cdetails.file_path,inputFile);
    }
}
export const uploadFilesPage = new UploadFilesPage();