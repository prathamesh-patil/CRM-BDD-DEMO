/**
 * Grouping of create enquiry actions on crm
 * @function createEnquiry
 */
import { clientDetailsPage } from "src/support/pages/crm/enquiry/CreateAndCloneEnquiry/ClientDetailsPage";
import { clientInformationPage } from "src/support/pages/crm/enquiry/CreateAndCloneEnquiry/ClientInformationPage";
import { serviceAndJobInformationPage } from "src/support/pages/crm/enquiry/CreateAndCloneEnquiry/ServiceAndJobInformationPage";
import { clickWebElement } from "../../coreActions/clickActions";
import {closeFirstOpenedTab} from "src/support/action/coreActions/windowActions";
import { uploadFilesPage } from "src/support/pages/crm/enquiry/CreateAndCloneEnquiry/UploadFilesPage";
import { clientInstructionsPage } from "src/support/pages/crm/enquiry/CreateAndCloneEnquiry/ClientInstructionsPage";
import { deliveryAndFeeDetailsPage } from "src/support/pages/crm/enquiry/CreateAndCloneEnquiry/DeliveryAndFeeDetailsPage";
import { paymentPreferencesPage } from "src/support/pages/crm/enquiry/CreateAndCloneEnquiry/PaymentPreferencesPage";
import { clientDetailsEnquiryPage } from "src/support/pages/crm/enquiry/CreateAndCloneEnquiry/ClientDetailsEnquiryPage";
import { scrollTo, scrollToElement } from "../../coreActions/mouseActions";
import { crmHeader } from "src/support/pages/crm/crmHeader/CrmHeaderPage";
const data = require("data/testData.js");
/**
 * Get ec or nc type client for create enquiry from crm
 * @param {string} _type ec or nc client type input parameter
 * @param {string} _firstNameAndLastName email_id for nc type client input parameter
 * @param {string} _serviceName service name of an enquiry as an input parameter
 * @param {string} _enquiryType type of an enquiry as input parameter
 * @param {string} _wc word count for an enquiry as input parameter
 * @author Prathamesh Patil
 */
let enquiryId:any;
let split_url:any;
let getEnquiryId:any;
let split_service_name:any;
let split_service_type:any;
let serviceName:any;

export function createEnquiry(_type: string,_firstNameAndLastName:string,_serviceName:string,_enquiryType:string,_wc:string) {
	let enquiryFiles='#block-files-view > div.box-body > div > div:nth-child(1) > div > div:nth-child(5) > div > div.col-xs-6 > span.file-groupHeadTitle.lft-pad';
	let submitAndSaveEnquiry=$("#submit_enquiry");
	clickWebElement("click",$('//*[@id="base_wrapper"]/header/nav/div[2]/ul[1]/li[2]/a/i'));
	clickWebElement("click",$('#base_wrapper > header > nav > div.navbar-custom-menu > ul:nth-child(1) > li.dropdown.notifications-menu.hidden-xs.visible-md.visible-lg.open > ul > li > div > ul > li:nth-child(1) > a'));
	closeFirstOpenedTab();
	if (_type.toLowerCase() == 'ec') {
		clientDetailsPage.getClientCode();
	}
	else {
		clientDetailsPage.getClientEmailID(_firstNameAndLastName+"@mailinator.com");
		clientInformationPage.defaultClientInformations();
		clientDetailsEnquiryPage.clientDetails();
	}//
	console.log("Service_Name:"+_serviceName);
	split_service_name=_serviceName.split('_')[0];
    split_service_type=_serviceName.split('_')[1];
	serviceName=split_service_name+" "+split_service_type;
	serviceAndJobInformationPage.serviceAndJobRelatedInformation(serviceName);
	uploadFilesPage.fileUploadEnquiryFiles();
	clientInstructionsPage.editEntireDocument();
	console.log("Enquiry_Type:"+_enquiryType);
	if((_enquiryType.split("_").length)>1)
	{
        deliveryAndFeeDetailsPage.enquiryType((_enquiryType.split("_")[0])+" "+(_enquiryType.split("_")[1]));
	}
	else
	{
		deliveryAndFeeDetailsPage.enquiryType(_enquiryType);
	}
	console.log("Word_count:"+_wc);
	deliveryAndFeeDetailsPage.jobUnitCount(_wc);
	deliveryAndFeeDetailsPage.recommenderPlan();
	if(_enquiryType=='Paid_MRE'){
		deliveryAndFeeDetailsPage.conditionForPaidMre();
	}
	if(_type.toLowerCase() == 'ec'){
		paymentPreferencesPage.usePreviousPreferences();
	}
	scrollTo("center","#feedback_check")
	clickWebElement("click",submitAndSaveEnquiry);
	clickWebElement("click",$("#me-info-header>div.new-enquiry>div:nth-child(1)>div.col-md-4>div>button.btn.btn-grey.dropdown-toggle"));
	enquiryId=browser.getUrl();
	split_url=enquiryId.split('://')[1];
    getEnquiryId=split_url.split('/')[3];
    console.log("Enquiry_ID:"+getEnquiryId);
	crmHeader.crmLogout();
}

