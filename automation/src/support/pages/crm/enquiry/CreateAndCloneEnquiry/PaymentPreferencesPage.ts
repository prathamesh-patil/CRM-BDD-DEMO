/**
 * Grouping of all payment preferences actions
 * @function usePreviousPreferences
 */
import { clickWebElement } from "src/support/action/coreActions/clickActions";
class PaymentPreferencesPage {
    get inputUsePreviousPreferences(){
        return $('#psit-preference-buttons > div:nth-child(1) > div > button');
    }
    usePreviousPreferences(){
        clickWebElement("click",this.inputUsePreviousPreferences);
    }
}
export const paymentPreferencesPage = new PaymentPreferencesPage();