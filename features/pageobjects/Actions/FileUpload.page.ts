const customFilePath="./features/pageobjects/data/"
class FileUpload{
    customFilePath: any;
    FileUploadEnquiryFiles(){
        this.customFilePath=customFilePath;
        const EnquiryFile=(customFilePath+"Final_SampleHubbleFileheavyEdit.docx");
        const inputFile=browser.$('#top-scroll > input:nth-child(10)');
        //const filePath = path.join(__dirname, './data/Final_SampleHubbleFileheavyEdit.docx');
        const remoteFilePath=browser.uploadFile(EnquiryFile);
        //const remoteFilePath=browser.uploadFile(filePath);
        browser.execute(function(){
            const fileSelector=<Element>document.querySelector('#top-scroll > input:nth-child(10)');
            fileSelector.style="visibility: block";
        });
        inputFile.waitForDisplayed();
        inputFile.setValue(remoteFilePath);
        console.log("File_path:"+remoteFilePath);
        browser.pause(10000);
    }
}
export default new FileUpload();