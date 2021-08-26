import { Then } from "@cucumber/cucumber";
import { previousPage } from "src/support/action/coreActions/browserActions";

import {
	checkCookieContent,
	checkCookieExists,
} from "src/support/check/cookieChecks";
import {
	checkAvailability,
	checkDimension,
	checkElementCount,
	checkFocus,
	checkIfElementExists,
	checkOffset,
	checkWithinViewPorts,
} from "src/support/check/elementAvailabilityChecks";
import {
	checkAttribute,
	checkClass,
	checkLinks,
	checkProperty,
} from "src/support/check/elementPropertyChecks";
import { checkFileUpload } from "src/support/check/fileUploadChecks";
import { checkTitle, checkURL } from "src/support/check/pageUrlChecks";
import {
	checkContainsAnyText,
	checkPromptText,
	checkText,
	compareText,
} from "src/support/check/textChecks";
import {
	checkIsOpenedInNewWindow,
	checkNewWindow,
} from "src/support/check/windowPropertyChecks";

Then(/^I expect the url to( not)* contain "([^"]*)?"$/, checkURL);

Then(
	/^I expect that element (.*)? (has|does not have) the link "([^"]*)?"( opening in new tab)*$/,
	checkLinks
);

Then(
	/^I expect that element (.*) (has|does not have) the class "([^"]*)?"$/,
	checkClass
);

Then(
	/^I expect that (button|element) (.*)( not)* (matches|contains) the text "([^"]*)?"$/,
	checkText
);

Then(
	/^I expect that element "([^"]*)?"( not)* contains the same text as element "([^"]*)?"$/,
	compareText
);

Then(
	/^I expect that (button|element) "([^"]*)?"( not)* contains any text$/,
	checkContainsAnyText
);

Then(/^I should go back to the previous page$/, previousPage);

Then(
	/^I expect the page to contain tagname (.*) to be (equal to|greater than|less than) count (.*)$/,
	checkElementCount
);

Then(
	/^I expect that element (.*)? has the attribute (.*) (with|containing) value (.*)$/,
	checkAttribute
);

Then(/^I expect files (.*) should be displayed at (.*)$/, checkFileUpload);

Then(/^I expect a popup modal is( not)* opened$/, checkPromptText);

Then(
	/^I expect a popup modal is( not)* opened with message (.*)?$/,
	checkPromptText
);

Then(
	/^I expect (.*) should( not)* be (displayed|enabled|selected|clickable) on page$/,
	checkAvailability
);

Then(
	/^I expect that the title ( not)* (matches|contains) "([^"]*)?"$/,
	checkTitle
);

Then(
	/^I expect that element "([^"]*)?" does( not)* appear exactly "([^"]*)?" times$/,
	checkIfElementExists
);

Then(
	/^I expect that element "([^"]*)?" is( not)* within the viewport$/,
	checkWithinViewPorts
);

Then(
	/^I expect that element "([^"]*)" does( not)* exist$/,
	checkIfElementExists
);

Then(
	/^I expect that the( css)* attribute "([^"]*)?" from element "([^"]*)?" is( not)* "([^"]*)?"$/,
	checkProperty
);

Then(
	/^I expect that cookie "([^"]*)?"( not)* contains "([^"]*)?"$/,
	checkCookieContent
);

Then(/^I expect that cookie "([^"]*)?"( not)* exists$/, checkCookieExists);

Then(
	/^I expect that element "([^"]*)?" is( not)* ([\d]+)px (broad|tall)$/,
	checkDimension
);

Then(
	/^I expect that element "([^"]*)?" is( not)* positioned at ([\d+.?\d*]+)px on the (x|y) axis$/,
	checkOffset
);

Then(/^I expect a new window has( not)* been opened$/, checkNewWindow);

Then(
	/^I expect the url "([^"]*)?" is opened in a new window$/,
	checkIsOpenedInNewWindow
);

Then(/^I expect that element "([^"]*)?" is( not)* focused$/, checkFocus);
