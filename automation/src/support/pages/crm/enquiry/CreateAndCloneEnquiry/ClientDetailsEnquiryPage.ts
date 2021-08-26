/**
 * Grouping of all client details enquiry actions
 * @function firstName
 * @function lastName
 * @function salutationTitle
 * @function primaryPhoneNumber
 * @function getphoneNumber
 * @function howDidTheClientHearAboutEditage
 * @function clientDetails
 */
import { clickWebElement } from "src/support/action/coreActions/clickActions";
import { setInputFieldForElement } from "src/support/action/coreActions/inputFieldActions";
import { selectOptions } from "src/support/action/coreActions/selectActions";
class ClientDetailsEnquiryPage {
    get inputFirstName(){
        return $("#field_client_profile_firstname");
    }
    get inputLastName(){
        return $("#field_client_profile_lastname");
    }
    get inputSalutation(){
        return '#field_client_profile_salutation';
    }
    get inputPrimaryPhoneNumber(){
        return '#field_client_profile_primary_ph_country_codes';
    }
    get inputPhoneNumber(){
        return $("#field_client_profile_primary_ph_number");
    }
    get inputHowDidTheClientHearAboutEditage(){
        return '#field_client_profile_ref_source';
    }
    firstName(){
        clickWebElement("click",this.inputFirstName)
        setInputFieldForElement("set","Test",this.inputFirstName);
    }
    lastName(){
        clickWebElement("click",this.inputLastName)
        setInputFieldForElement("set","User",this.inputLastName);
    }
    salutationTitle(){
        selectOptions("text","Mr.",this.inputSalutation);
    }
    primaryPhoneNumber(){
        selectOptions("text","India (+91)",this.inputPrimaryPhoneNumber);
    }
    getphoneNumber(){
        setInputFieldForElement("set","9876543212",this.inputPhoneNumber);
    }
    howDidTheClientHearAboutEditage(){
        selectOptions("text","Google",this.inputHowDidTheClientHearAboutEditage);
    }
    clientDetails(){
        this.firstName();
        this.lastName();
        this.salutationTitle();
        this.primaryPhoneNumber();
        this.getphoneNumber();
        this.howDidTheClientHearAboutEditage();
    }
}
export const clientDetailsEnquiryPage = new ClientDetailsEnquiryPage();