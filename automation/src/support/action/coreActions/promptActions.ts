/**
 * Grouping of all prompt box / alert box based actions
 * @function handlePrompt
 * @function setPromptText
 */

/**
 * Handle a modal
 * @param	{string}	action		Action to perform on the modal (accept, dismiss)
 * @param	{string}	modalType	Type of modal (alertBox, confirmBox, prompt)
 * @author	Ninad Patkar
 */
export function handlePrompt(
  action: "accept" | "dismiss",
  modalType: "alertBox" | "confirmBox" | "prompt"
) {
  //The command to perform on the browser object
  let command: string = `${action.slice(0, 1).toLowerCase()}${action.slice(
    1
  )}Alert` as "acceptAlert" | "dismissAlert";

  // Alert boxes can't be dismissed, this causes Chrome to crash during tests
  if (modalType === "alertBox") {
    command = "acceptAlert";
  }

  browser[command]();
}

/**
 * Set the text of the current prompt
 * @param	{string}	modalText	The text to set to the prompt
 * @author	Ninad Patkar
 */
export function setPromptText(modalText: string) {
  browser.sendAlertText(modalText);
}
