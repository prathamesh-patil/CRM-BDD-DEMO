/**
 * Grouping of actions related to form submissions
 * @function submitForm
 */

import { addOn } from "src/support/pages/forms/AddOnPage";
import { serviceQuestions } from "src/support/pages/forms/DocumentPreferencesPage";
import { uploadDoc } from "src/support/pages/forms/DocumentUploadPage";
import { plan } from "src/support/pages/forms/PlansPage";
import { prospect } from "src/support/pages/forms/ProspectPage";
import { sl2Page } from "src/support/pages/forms/SL2Pages";
import { thanksPage } from "src/support/pages/forms/ThankYouPage";
import { wcPage } from "src/support/pages/forms/WcDetailsPage";

const data = require("data/testData.js");

/**
 * Submit 2.0 form
 * @param	{string}	_sl2	service level 2
 * @param	{string}	_loop	wc or skipWc
 * @param	{String}	_wcOrType	wc count or sendQuote or startJob
 * @param	{string}	_partner	select partner
 * @author	Makarand Dhuri
 */
export function submitForm(
	_sl2: string,
	_loop: "wc" | "skipWc",
	_wcOrType: string,
	_partner: string
) {
	let partner = _partner.toLowerCase().trim();
	let cdetails = data.common.details;
	const partnerData = data.partners[partner];

	let successMsg =
		_loop !== "skipWc"
			? partnerData[_loop.toLowerCase()].success_message
			: partnerData[_loop.toLowerCase()][_wcOrType.toLowerCase()]
					.success_message;

	_sl2 = _sl2
		.replace(/\s/g, "")
		.replace('"', "")
		.replace('"', "")
		.toLowerCase()
		.trim();

	sl2Page.selectSL1Sl2(_sl2);
	wcPage.selectWcOrSkipWcLoop(_loop, _wcOrType);

	if (!(partner == "jpn" || partner == "kor"))
		prospect.enterProspectDetails(
			partnerData.email,
			partnerData.phone,
			partnerData.country_code
		);

	plan.selectPlan();
	addOn.selectAddonAndProceed(_sl2, partner);

	uploadDoc.uploadJobFile(cdetails.no_files, cdetails.file_path);

	serviceQuestions.fillServiceQuestions(
		_sl2,
		_wcOrType,
		partnerData.doc_type,
		cdetails.sa1,
		cdetails.sa2,
		partnerData.reference_source,
		partner
	);

	if (_wcOrType.toLowerCase().trim() == "startJob")
		successMsg = partnerData.wc.success_message;

	thanksPage.verifyThankYouMessage(successMsg, _partner, _loop, _wcOrType);
}
