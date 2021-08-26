/**
 * Grouping of all client information actions
 * @function partnerId
 * @function subPartnerId
 * @function clientType
 * @function proceedBtn
 * @function defaultClientInformations
 */
import { selectOptions } from "src/support/action/coreActions/selectActions";
import {clickWebElement} from "src/support/action/coreActions/clickActions";
class ClientInformationPage {
    get inputPartnerId() {
        return '#partner_id';
    }
    get inputSubPartnerId(){
        return '#spl_identier';
    }
    get inputProceedBtn(){
        return $("#get-client-details");
    }
    get clientTypeIndividualRadioBtn(){
        return $("#client_type_individual");
    }
    get clientTypeCorporateRadioBtn(){
        return $("#client_type_corporate");
    }
	/**
	 * fill payment details with common data
	 * @param	{string}	_type	partner name
	 */
    partnerId(_type:string){
        selectOptions("text",_type,this.inputPartnerId);
    }
	/**
	 * fill payment details with common data
	 * @param	{string}	_type	subpartner name
	 */
    subPartnerId(_type:string){
        selectOptions("text",_type,this.inputSubPartnerId);
    }
	/**
	 * fill payment details with common data
	 * @param	{string}	_type	type of client individual/corporate
	 */
    clientType(_type:string){
        if(_type.toLowerCase() == 'individual')
        {
            clickWebElement("click",this.clientTypeIndividualRadioBtn);
        }
        else
        {
            clickWebElement("click",this.clientTypeCorporateRadioBtn);
        }
    }

    proceedBtn(){
        clickWebElement("click",this.inputProceedBtn);
    }
    defaultClientInformations(){
        this.partnerId("ENG");
        this.subPartnerId("ASTRO");
        this.clientType("individual");
        this.proceedBtn();
    }
}
export const clientInformationPage = new ClientInformationPage();