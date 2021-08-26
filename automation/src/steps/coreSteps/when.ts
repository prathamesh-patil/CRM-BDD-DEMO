import { When } from "@cucumber/cucumber";
import {
	pause,
	pressKey,
	refreshSession,
	refreshPage,
} from "src/support/action/coreActions/browserActions";
import {
	clickElement,
	scrollAndClick,
} from "src/support/action/coreActions/clickActions";
import {
	deleteCookies,
	setCookie,
} from "src/support/action/coreActions/cookieActions";
import {
	removeUploadedFile,
	uploadFile,
} from "src/support/action/coreActions/fileUploadActions";
import {
	clearInputField,
	deletePrefillValue,
	setInputField,
} from "src/support/action/coreActions/inputFieldActions";
import {
	dragElement,
	mouseHover,
	scrollTo,
} from "src/support/action/coreActions/mouseActions";
import {
	handlePrompt,
	setPromptText,
} from "src/support/action/coreActions/promptActions";
import {
	selectOptions,
	selectOptionsByIndex,
} from "src/support/action/coreActions/selectActions";
import {
	waitForAvailability,
	waitUntilUrlMatches,
} from "src/support/action/coreActions/waitActions";
import {
	closeLastOpenedTab,
	focusLastOpenedTab,
} from "src/support/action/coreActions/windowActions";

When(/^I (click|doubleClick) on the (link|button|element) (.*)$/, clickElement);

When(
	/^I scroll the page to (start|center|end) and (click|doubleClick) on the (link|button|element) (.*)$/,
	scrollAndClick
);

When(/^I (add|set) "([^"]*)?" to the inputfield (.*)$/, setInputField);

When(/^I clear the inputField "([^"]*)?"$/, clearInputField);

When(/^I drag element "([^"]*)?" to element "([^"]*)?"$/, dragElement);

When(/^I pause for (\d+)ms$/, pause);

When(/^I set a cookie "([^"]*)?" with the content "([^"]*)?"$/, setCookie);

When(/^I delete the cookie "([^"]*)?"$/, deleteCookies);

When(/^I press "([^"]*)?"$/, pressKey);

When(/^I delete prefilled value of inputfield (.*)$/, deletePrefillValue);

When(/^I scroll to (start|center|end) of element "([^"]*)?"$/, scrollTo);

When(/^I move to element (.*)(?: with an offset of (\d+),(\d+))*$/, mouseHover);

When(/^I close the last opened window$/, closeLastOpenedTab);

When(/^I focus the last opened window$/, focusLastOpenedTab);

When(
	/^I select the (\d+) option for element "([^"]*)?"$/,
	selectOptionsByIndex
);

When(
	/^I select the option with the (name|value|text) "([^"]*)?" for element "([^"]*)?"$/,
	selectOptions
);

When(/^I upload (.*) files (.*) at (.*)$/, uploadFile);

When(/^I remove (.*) files (.*)$/, removeUploadedFile);

When(
	/^I wait for (.*) to( not)* be (displayed|exist|enabled|clickable) on page$/,
	{ wrapperOptions: { retry: 2 } },
	waitForAvailability
);
When(
	/^I wait for url to( not)* contain (.*)$/,
	{ wrapperOptions: { retry: 2 } },
	waitUntilUrlMatches
);

When(/^I clear browser session$/, refreshSession);

When(/^I (accept|dismiss) (alertBox|confirmBox|prompt)$/, handlePrompt);

When(/^I enter "([^"]*)?" into the prompt$/, setPromptText);

When(/^I refresh the page$/, refreshPage);
