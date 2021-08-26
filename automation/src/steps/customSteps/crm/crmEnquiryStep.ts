import { Then } from "@cucumber/cucumber";
import {createEnquiry} from "src/support/action/customActions/crm/crmCreateEnquiryActions";
Then(/^I expect to create enquiry for (.+) with (.+) (.+) (.+) (.+)$/,createEnquiry);