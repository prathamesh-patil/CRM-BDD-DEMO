class CreateEnquiryCRM{
    //get Inq_email() { return $("#email_id");}
    
    CreateEnquiry(){
        //this.Inq_email.waitForExist();
        //this.Inq_email.setValue("testusercheck@mailinator.com");
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
        //$$("option[value='36']").click();
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
        //$('//*[@id="myModalLabel"]').click();
        const sa_1_6=browser.$('//ul[@id="ecf-subject-area"]/li[@class=" "]/a[@href="#sa1-13-tab"]');
        sa_1_6.scrollIntoView();
        sa_1_6.click();
        $('//*[@sa_label="Anesthesiology and pain medicine"]').click();
        $('//button[@id="btn-sa-continue"]').click();
        /*const uploadFilesScroll=browser.$("//input[@id='skip-job-file']");
        uploadFilesScroll.scrollIntoView();*/
        const path = require('path');
        //const inputDiv=browser.$("#job-files-container");
        const inputFile=browser.$('#top-scroll > input:nth-child(10)');
        const filePath = path.join(__dirname, './data/Final_SampleHubbleFileheavyEdit.docx');
        const remoteFilePath=browser.uploadFile(filePath);
        browser.execute(function(){
            const fileSelector=<HTMLInputElement>document.querySelector('#top-scroll > input:nth-child(10)');
            fileSelector.style="visibility: block";
        });
        inputFile.waitForDisplayed();
        inputFile.setValue(remoteFilePath);
        console.log("File_path:"+remoteFilePath);
        browser.pause(10000);
        //$("//input[@id='skip-job-file']").click();
        /*const input=browser.$('#top-scroll > input:nth-child(11)');
        input.scrollIntoView()
        const filePath = path.join(__dirname, './data/中野修正.doc');
        const remoteFilePath=browser.uploadFile(filePath);
        input.setValue(remoteFilePath);*/
        const clientInstructions=browser.$("//input[@id='client_edit_instruction_all']");
        clientInstructions.scrollIntoView();
        clientInstructions.click();
        $("//input[@id='job_delivered_by_pm']").click();
        $('//*[@id="enquiry_type"]/option[1]').click();
        $("//input[@id='job_unit_count']").setValue(100);
        const recommenderBtn=browser.$("#recommend_tat.btn");
        recommenderBtn.click();
        browser.pause(10000);
        /*const recommenderTAT=browser.$('#block-delivery-box > div.box-body > div:nth-child(3) > div > div > div.rr-tat-wrap > div.header > div.flt-lft.heading');
        browser.waitUntil(function(){
            return recommenderTAT.isDisplayed() === true
      },6000,'title is not displayed after the given time');*/
        const selectAndContinue=browser.$('#select-tat');
        selectAndContinue.scrollIntoView();
        selectAndContinue.click();
        //recommenderBtn.scrollIntoView();
        //recommenderBtn.click();
        //const planId=browser.$('//*/tbody/tr/td/div[@class="center"]/input[@id=10018]');
        //browser.waitUntil(function(){
        //    return planId.isDisplayed() === true
        //},8000,'title is not displayed after the given time');
        //planId.click();
        //console.log("******************Plan Verified*********************");
        //$("//label[normalize-space()='Cover letter creation (Cover letter creation)']").scrollIntoView();
        //const tatSelector=browser.$("#select-tat");
        //tatSelector.scrollIntoView();
        //tatSelector.click();
        //$("#delivery_date_time").setValue('18/06/2021 00:00');
        //$("#rate").setValue(0.01);
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
        //const value=selectservice.getValue();
        //console.log("Value:"+value);
        //selectservice.selectByAttribute('value','36');
        browser.pause(10000);
        console.log("Url of the Page:"+browser.getUrl());
    }
    Enquirycode(enquiryID){
        console.log("Then Page URL:"+enquiryID);
        browser.url(enquiryID);
    }
}
export default new CreateEnquiryCRM();