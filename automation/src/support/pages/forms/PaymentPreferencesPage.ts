/**
 * Grouping of functions related to Payments
 * @function fillCommonPaymentDetails
 */

import { setInputFieldForElement } from "src/support/action/coreActions/inputFieldActions";

const data = require("data/testData.js");

class PaymentPreferencesPage {
	get inputPayerLastName() {
		return $("//input[@id='field_pay_pref_lastname']");
	}
	get inputPayerAddr() {
		return $("//textarea[@id='field_pay_pref_payment_addr-street_textarea']");
	}

	/**
	 * fill payment details with common data
	 * @param	{string}	_partner	client partner
	 */
	fillCommonPaymentDetails(_partner: string) {
		const cdetails = data.common.details;

		setInputFieldForElement(
			"set",
			cdetails.payer_name,
			this.inputPayerLastName
		);
		setInputFieldForElement("set", cdetails.payer_address, this.inputPayerAddr);
	}
}
export const paymentPref = new PaymentPreferencesPage();
