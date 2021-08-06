import { Given, When, Then } from '@cucumber/cucumber';
import Login from '../pageobjects/Actions/Login.page';
import CreateEnquiryCRM from '../pageobjects/Actions/CreateEnquiry.page';
import SecretPassword from '../pageobjects/Actions/SecretPassword.page';
import allureReporter from '@wdio/allure-reporter';
import Logout from '../pageobjects/Actions/Logout.page';
Given(/^I am on Login Page from (.+)$/,{timeout:90000},function(env) {
   Login.LoginInitiate(env);

});
When(/^Secret Password is captured for (.+) Admin Login for (.+) and (.+)$/,{timeout: 90000},function(env, username, password){
    allureReporter.addSeverity('Normal');
    SecretPassword.secretPassWordExecution(env,username,password);
    browser.execute(function(){
        const Loaders=<Element>document.getElementById('preloader');
        Loaders.style="display:none";
    });
    Logout.logoutProfile();
});
Then(/^Log in by CM Credentials on (.+) and Create Enquiry from CRM for (.+)$/,{timeout: 90000},function(env,useremailid){
    allureReporter.addSeverity('Critical');
    SecretPassword.secretPasswordCMLogin();
    browser.setTimeout({'implicit':5000});
    browser.execute(function(){
        var Loaders=<Element>document.getElementById('preloader');
        Loaders.style="display:none";
    });
    allureReporter.addSeverity('Blocker')
    const navigation=browser.$("body > div:nth-child(2) > header:nth-child(1) > nav:nth-child(5) > div:nth-child(3) > ul:nth-child(1) > li:nth-child(2) > a:nth-child(1) > i:nth-child(2)");
    navigation.waitForEnabled();
    navigation.click();
    browser.pause(3000);
    if (env == "prod") {
        browser.url('http://crm.cactusglobal.com/backend/enquiry/create');
    } else {
       browser.url('http://'+env+'.crm.cactusglobal.com/backend/enquiry/create')
    }
    
    const ClientUserID=$("#email_id");
    ClientUserID.setValue(useremailid);
    CreateEnquiryCRM.CreateEnquiry();
});
Then(/^Enquiry is Created Successfully$/,function(){
    browser.pause(5000);
    Logout.logoutProfile();
    CreateEnquiryCRM.Enquirycode();
    browser.closeWindow();
});