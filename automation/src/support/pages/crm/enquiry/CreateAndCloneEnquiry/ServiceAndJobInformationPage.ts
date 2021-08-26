/**
 * Grouping of all client information actions
 * @function serviceName
 * @function startWorkImmediatelyRadioBtn
 * @function typeOfDocument
 * @function journalFormattingRadioBtn
 * @function saSelection
 * @function serviceAndJobRelatedInformation
 */
import { selectOptions } from "src/support/action/coreActions/selectActions";
import { clickWebElement } from "src/support/action/coreActions/clickActions";

class ServiceAndJobInformationPage {
    get inputServiceName() 
    {
        return '#service_id';
    }
    get inputStartWorkImmediatelyYesBtn(){
        return $("#field_enq_ex_can_we_start_yes");
    }
    get inputStartWorkImmediatelyNoBtn(){
        return $("#field_enq_ex_can_we_start_no");
    }
    get inputTypeOfDocument(){
        return '#field_enq_ex_type_of_doc';
    }
    get inputJournalFormattingNoBtn(){
        return $("#field_enq_ex_formatng_info_no");
    }
    get inputClientSupportPreference(){
        return $("#field_enq_ex_client_support_preference");
    }
    /**
	 * fill payment details with common data
	 * @param	{string}	_type	service name 
	 */
    serviceName(_type:string){
        selectOptions("text",_type,this.inputServiceName);
    }
    /**
	 * fill payment details with common data
	 * @param	{string}	_type	radio btn of startworkImmediately
	 */
    startWorkImmediatelyRadioBtn(_type:string){
        if(_type.toLowerCase()=="yes")
        {
            clickWebElement("click",this.inputStartWorkImmediatelyYesBtn);
        }
        else
        {
            clickWebElement("click",this.inputStartWorkImmediatelyNoBtn);

        }

    }
    typeOfDocument(){
        const typeOfDocument=browser.$("#field_enq_ex_type_of_doc");
        typeOfDocument.click();
        $('//*[@id="field_enq_ex_type_of_doc"]/option[2]').click();
    }
    journalFormattingRadioBtn(){

            clickWebElement("click",this.inputJournalFormattingNoBtn);
    }
    saSelection(){
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
    }
    serviceAndJobRelatedInformation(_serviceName:string){
        this.serviceName(_serviceName);
        this.startWorkImmediatelyRadioBtn("Yes");
        this.typeOfDocument();
        this.journalFormattingRadioBtn();
        this.saSelection();
    }
}
export const serviceAndJobInformationPage = new ServiceAndJobInformationPage();