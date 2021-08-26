/**
 * Grouping of all delivery and fee detail actions
 * @function enquiryType
 * @function jobUnitCount
 * @function recommenderPlan
 * @function conditionForPaidMre
 */
import { clickWebElement } from "src/support/action/coreActions/clickActions";
import { selectOptions } from "src/support/action/coreActions/selectActions";
import {setInputFieldForElement} from "src/support/action/coreActions/inputFieldActions";
import { scrollToElement } from "src/support/action/coreActions/mouseActions";
class DeliveryAndFeeDetailsPage {
    get inputEnquiryType(){
        return '#enquiry_type';
    }
    get inputWordCount(){
        return $("#job_unit_count");
    }
    get inputConditionForPaidMre(){
        return $("#paid-mre-questions-box>div>div:nth-of-type(1)>label:nth-of-type(4)");
    }
    /**
	 * fill enquiry type details with feature data
	 * @param	{string}	_type	enquiry type Normal/Valid-MRE/Paid-MRE/Quality-redit
	 */
    enquiryType(_type:string){
        scrollToElement("start",$("#enquiry_type"))
        selectOptions("text",_type,this.inputEnquiryType);
    }
    /**
	 * fill enquiry type details with feature data
	 * @param	{string}	_type	job unit count 
	 */
    jobUnitCount(_type:string){
        setInputFieldForElement("set",_type, this.inputWordCount);
    }
    recommenderPlan(){
        let recommenderBtn=browser.$("#recommend_tat.btn");
        clickWebElement("click",recommenderBtn);
        let selectAndContinue=browser.$('#select-tat');
        scrollToElement("start",selectAndContinue);
        clickWebElement("click",selectAndContinue);
        let calculatorRate=browser.$("//button[normalize-space()='Calculate']");
        scrollToElement("start",calculatorRate);
        clickWebElement("click",calculatorRate);
    }
    conditionForPaidMre(){
        scrollToElement("start",this.inputConditionForPaidMre);
        clickWebElement("click",this.inputConditionForPaidMre);
    }

}
export const deliveryAndFeeDetailsPage = new DeliveryAndFeeDetailsPage();