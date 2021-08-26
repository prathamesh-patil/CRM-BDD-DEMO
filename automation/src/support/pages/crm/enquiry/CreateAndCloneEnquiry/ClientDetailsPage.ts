/**
 * Grouping of all client details actions
 * @function getClientEmailID
 * @function getClientCode
 */
import { clickWebElement } from "src/support/action/coreActions/clickActions";
import { setInputFieldForElement } from "src/support/action/coreActions/inputFieldActions";
const data = require("data/testData.js");
const userNameDetails = data.common.crm;

class ClientDetailsPage {
    get inputClientEmailId() {
        return $("#email_id");
    }
    get inputClientCode(){
        return $("#client_code");
    }
    get proccedToCreateEnquiry() {
        return $("#step-2-1");
    }
    /**
	 * fill client details with comman data
	 * @param	{string}	_type	client email_id
	 */
    getClientEmailID(_type:string) {
        clickWebElement("click",this.inputClientEmailId);
        setInputFieldForElement("set",_type, this.inputClientEmailId);
        clickWebElement("click", this.proccedToCreateEnquiry);
    }
    getClientCode() {
        clickWebElement("click",this.inputClientCode);
        setInputFieldForElement("set",userNameDetails.client_code,this.inputClientCode);
        clickWebElement("click",this.proccedToCreateEnquiry);

    }
}
export const clientDetailsPage = new ClientDetailsPage();