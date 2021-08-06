import FileUpload from '../Actions/FileUpload.page';
class CreateEnquiryCRM{
    Enquiry_ID:any;
    
    CreateEnquiry(){
        const proccedtocreateenquiry=browser.$("#step-2-1");
        proccedtocreateenquiry.click();
        browser.pause(6000);
        const selectservice=browser.$("//span[@id='select2-service_id-container']");
        browser.waitUntil(
            () =>  selectservice.isDisplayed() === true,
            {
                timeout: 6000,
                timeoutMsg: 'title is not displayed after the given time'
            }
        );
        selectservice.click();
        console.log("Services:******"+selectservice)
        const serviceName=browser.$('//*[@id="service_id"]/option[5]');
        serviceName.click();
        const mreOption=browser.$('//input[@id="field_enq_ex_is_it_mre_no"]');
        mreOption.waitForEnabled({ timeout: 5000 });
        mreOption.click();
        $('//input[@id="field_enq_ex_can_we_start_yes"]').click();
        const typeOfDocument=browser.$("#field_enq_ex_type_of_doc");
        typeOfDocument.click();
        $('//*[@id="field_enq_ex_type_of_doc"]/option[2]').click();
        const formatting=browser.$("#field_enq_ex_formatng_info_no");
        formatting.scrollIntoView();
        formatting.click();
        $("#field_enq_ex_client_support_preference").click();
        $('//select[@id="field_enq_ex_client_support_preference"]/option[@value="4"]').click();
        browser.pause(5000);
        const clickableSAlink=browser.$('//*[@id="browse-sa-container"]/a');
        browser.waitUntil(
            () =>  clickableSAlink.isDisplayed() === true,
            {
                timeout: 10000,
                timeoutMsg: 'title is not displayed after the given time'
            }
        );
        clickableSAlink.click();
        const selectSa_1_6=browser.$('//*[@id="myModalLabel"]');
        browser.waitUntil(
            () =>  selectSa_1_6.isDisplayed() === true,
            {
                timeout: 6000,
                timeoutMsg: 'title is not displayed after the given time'
            }
        );
        const sa_1_6=browser.$('//ul[@id="ecf-subject-area"]/li[@class=" "]/a[@href="#sa1-13-tab"]');
        sa_1_6.scrollIntoView();
        sa_1_6.click();
        $('//*[@sa_label="Anesthesiology and pain medicine"]').click();
        $('//button[@id="btn-sa-continue"]').click();
        FileUpload.FileUploadEnquiryFiles();
        const clientInstructions=browser.$("//input[@id='client_edit_instruction_all']");
        clientInstructions.scrollIntoView();
        clientInstructions.click();
        $("//input[@id='job_delivered_by_pm']").click();
        $('//*[@id="enquiry_type"]/option[1]').click();
        $("//input[@id='job_unit_count']").setValue(100);
        const recommenderBtn=browser.$("#recommend_tat.btn");
        recommenderBtn.click();
        browser.pause(10000);
        const selectAndContinue=browser.$('#select-tat');
        selectAndContinue.scrollIntoView();
        selectAndContinue.click();
        const calculatorRate=browser.$("//button[normalize-space()='Calculate']");
        browser.waitUntil(
            () =>  calculatorRate.isDisplayed() === true,
            {
                timeout: 20000,
                timeoutMsg: 'title is not displayed after the given time'
            }
        );
        calculatorRate.click();
        const paymentPreference=browser.$('#psit-preference-buttons > div:nth-child(1) > div > button');
        browser.waitUntil(
            () =>  paymentPreference.isDisplayed() === true,
            {
                timeout: 20000,
                timeoutMsg: 'title is not displayed after the given time'
            }
        );
        paymentPreference.scrollIntoView();
        paymentPreference.click();
        const saveEnquiry=browser.$("//button[normalize-space()='Submit and Save']");
        saveEnquiry.scrollIntoView();
        saveEnquiry.click();
        browser.pause(10000);
        console.log("Url of the Page:"+browser.getUrl());
        this.Enquiry_ID=browser.getUrl();
    }
    Enquirycode(){
        console.log("Then Page URL:"+this.Enquiry_ID);
        browser.url(this.Enquiry_ID);
    }
}
export default new CreateEnquiryCRM();