import { When } from "@cucumber/cucumber";
import { submitForm } from "src/support/action/customActions/forms/formSubmitActions";

When(
	/^I expect to submit NCF for (.*) in (wc|skipWc) (.*|sendQuote|startJob) loop for (.*) partner$/,
	submitForm
);
