import { Given, When, Then } from '@cucumber/cucumber';
import CRMlogin from '../pageobjects/CRMlogin.page';
import CreateEnquiryCRM from '../pageobjects/CreateEnquiry.page';
import SecretPassword from '../pageobjects/SecretPassword.page';
import allureReporter from '@wdio/allure-reporter';
let enquiryID: string;
let secretPasswordValue: string;
Given(/^I am on Login Page from (.+)$/,{timeout:90000},function(env) {
    if (env == "prod") {
            //CRMlogin.OpenBrowser();

    browser.url("https://crm.cactusglobal.com/login");
    browser.maximizeWindow();
    } else {
            //CRMlogin.OpenBrowser();

    browser.url("https://"+env+".crm.cactusglobal.com/login");
    browser.maximizeWindow();
    }

});
When(/^Secret Password is captured for (.+) Admin Login for (.+) and (.+)$/,{timeout: 90000},function(env, username, password){
    allureReporter.addSeverity('Normal')
    if (env == "prod") {
        SecretPassword.secretPasswordSaved();
        browser.setTimeout({'implicit':5000});
        SecretPassword.secretPasswordGeneration();
    } else {
        SecretPassword.username.setValue(username);
        SecretPassword.password.setValue(password);
        SecretPassword.submitBtn.click();
        browser.setTimeout({'implicit':60000});
        SecretPassword.secretPasswordGeneration();
    }
    browser.pause(5000);
    secretPasswordValue=$("#widgetMainContent > div").getText();
    browser.pause(5000);
    browser.execute(function(){
        const Loaders=<HTMLInputElement>document.getElementById('preloader');
        Loaders.style="display:none";
    });
    const profile= browser.$('#base_wrapper > header > nav > div.navbar-custom-menu > ul:nth-child(1) > li.dropdown.notifications-menu.user-menu > a > span > i');
    browser.waitUntil(
        () =>  profile.isDisplayed() === true,
        {
            timeout: 90000,
            timeoutMsg: 'title is not displayed after the given time'
        }
    );
    profile.scrollIntoView();
    profile.click();
    const logout=browser.$('#base_wrapper > header > nav > div.navbar-custom-menu > ul:nth-child(1) > li.dropdown.notifications-menu.user-menu.open > ul > li > div > ul > li:nth-child(3) > a');
    logout.click();
});
Then(/^Log in by CM Credentials on (.+) and Create Enquiry from CRM for (.+)$/,{timeout: 90000},function(env,useremailid){
    allureReporter.addSeverity('Critical')
    if(secretPasswordValue != null)
      {
        CRMlogin.CMlogin();
        $("#password").setValue(secretPasswordValue);
        CRMlogin.SubmitBtn();
        console.log("Printed the IF part");
       }
    else
       {
        CRMlogin.CMlogin();
        CRMlogin.Password();
        CRMlogin.SubmitBtn();
        console.log("Printed the ELSE Part");
       }
    browser.setTimeout({'implicit':5000});
    browser.execute(function(){
        const Loaders=<HTMLInputElement>document.getElementById('preloader');
        Loaders.style="display:none";
    });
    allureReporter.addSeverity('Blocker')
    const navigation=browser.$("body > div:nth-child(2) > header:nth-child(1) > nav:nth-child(5) > div:nth-child(3) > ul:nth-child(1) > li:nth-child(2) > a:nth-child(1) > i:nth-child(2)");
    navigation.waitForEnabled();
    navigation.click();
    //$("//ul[@class='menu']//a[contains(text(),'Add enquiry (new)')]").click();
    browser.pause(3000);
    if (env == "prod") {
        browser.url('http://crm.cactusglobal.com/backend/enquiry/create');
    } else {
       browser.url('http://'+env+'.crm.cactusglobal.com/backend/enquiry/create')
    }
    
    const ClientUserID=$("#email_id");
    ClientUserID.setValue(useremailid);
    CreateEnquiryCRM.CreateEnquiry();
    enquiryID=browser.getUrl();
    console.log("Page URL:"+enquiryID);
});
Then(/^Enquiry is Created Successfully$/,function(){
    browser.pause(5000);
    const profile= browser.$('//*[@id="top-scroll"]/div[3]/header/nav/div[2]/ul[1]/li[6]/a/span/i');
    profile.scrollIntoView();
    profile.click();
    const logout=browser.$('//*[@id="top-scroll"]/div[3]/header/nav/div[2]/ul[1]/li[6]/ul/li/div/ul/li[3]/a');
    logout.click();
    CreateEnquiryCRM.Enquirycode(enquiryID);
});