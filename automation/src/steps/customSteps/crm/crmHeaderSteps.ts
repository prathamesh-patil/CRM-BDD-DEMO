import { When,Then } from "@cucumber/cucumber";
import { getPassword } from "src/support/action/customActions/crm/crmHeaderActions";
import {getCMSecretPasswordLogin} from "src/support/action/customActions/crm/crmHeaderActions";

When(/^I expect to get (.+) password from crm$/, getPassword);
When(/^I expect to login from cm admin role$/,getCMSecretPasswordLogin);
