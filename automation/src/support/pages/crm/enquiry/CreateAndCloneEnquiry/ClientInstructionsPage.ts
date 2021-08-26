/**
 * Grouping of all client instruction actions
 * @function editEntireDocument
 */
import { clickWebElement } from "src/support/action/coreActions/clickActions";
class ClientInstructionsPage {
    get inputEditEntireDocument(){
        return $("#client_edit_instruction_all");
    }
    editEntireDocument(){
        this.inputEditEntireDocument.scrollIntoView();
        clickWebElement("click",this.inputEditEntireDocument);
    }    
}
export const clientInstructionsPage = new ClientInstructionsPage();