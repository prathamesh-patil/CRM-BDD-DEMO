import { Given } from "@cucumber/cucumber";
import {
	openSite,
	openSiteAndWaitForLoad,
} from "src/support/action/coreActions/openSiteActions";
import {
	closeAllButFirstTab,
	setWindowSize,
} from "src/support/action/coreActions/windowActions";

import {
	checkCookieContent,
	checkCookieExists,
} from "src/support/check/cookieChecks";
import {
	checkAvailability,
	checkDimension,
	checkIfElementExists,
	checkOffset,
} from "src/support/check/elementAvailabilityChecks";
import { checkTitle, checkURL } from "src/support/check/pageUrlChecks";
import {
	checkContainsAnyText,
	checkPromptText,
	checkText,
	compareText,
} from "src/support/check/textChecks";

Given(
	/^I open the (url|website|crm|eos|sso|legacy_website) "([^"]*)?"$/,
	openSite
);

Given(
	/^I open the (url|website|crm|eos|sso|legacy_website) "([^"]*)" and wait for load$/,
	openSiteAndWaitForLoad
);

Given(
	/^the element "([^"]*)?" is( not)* (displayed|enabled|selected|clickable)$/,
	checkAvailability
);

Given(
	/^element "([^"]*)?" (an|no) does( not)* exist on the page$/,
	checkIfElementExists
);

Given(/^the title is( not)* "([^"]*)?"$/, checkTitle);

Given(
	/^the element "([^"]*)?" contains( not)* the same text as element "([^"]*)?"$/,
	compareText
);

Given(
	/^the (button|element) "([^"]*)?"( not)* (matches|contains) the text "([^"]*)?"$/,
	checkText
);

Given(
	/^the (button|element) "([^"]*)?"( not)* contains any text$/,
	checkContainsAnyText
);

Given(/^the page url is( not)* "([^"]*)?"$/, checkURL);

Given(
	/^the cookie "([^"]*)?" contains( not)* the value "([^"]*)?"$/,
	checkCookieContent
);

Given(/^the cookie "([^"]*)?" does( not)* exist$/, checkCookieExists);

Given(
	/^the element "([^"]*)?" is( not)* ([\d]+)px (broad|tall)$/,
	checkDimension
);

Given(
	/^the element "([^"]*)?" is( not)* positioned at ([\d]+)px on the (x|y) axis$/,
	checkOffset
);

Given(/^I have a screen that is ([\d]+) by ([\d]+) pixels$/, setWindowSize);

Given(/^I have closed all but the first window$/, closeAllButFirstTab);

Given(/^a popup is( not)* opened$/, checkPromptText);
