import { Given, When, Then } from '@cucumber/cucumber';
import CRMlogin from '../pageobjects/CRMlogin.page';
import CreateEnquiryCRM from '../pageobjects/CreateEnquiry.page';
import SecretPassword from '../pageobjects/SecretPassword.page';
let enquiryID: string;
let secretPasswordValue: string;
let jobCode: string;
Given(/^I am on Login Page$/,{timeout:90000},function() {
    CRMlogin.OpenBrowser();
    browser.maximizeWindow();
});
When(/^Secret Password is captured for CM Login$/,{timeout:100000},function(){
    SecretPassword.secretPasswordSaved();
    browser.setTimeout({'implicit':5000});
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
Then(/^Log in by CM Credentials and Create Enquiry from CRM$/,{timeout: 90000},function(){
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
    const navigation=browser.$("body > div:nth-child(2) > header:nth-child(1) > nav:nth-child(5) > div:nth-child(3) > ul:nth-child(1) > li:nth-child(2) > a:nth-child(1) > i:nth-child(2)");
    navigation.waitForEnabled();
    navigation.click();
    //$("//ul[@class='menu']//a[contains(text(),'Add enquiry (new)')]").click();
    browser.pause(3000);
    browser.url('http://test48.crm.cactusglobal.com/backend/enquiry/create');
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
When(/^PM Logins from Secret Password$/,function(){
    CRMlogin.PMlogin();
    CRMlogin.Password();
    CRMlogin.SubmitBtn();
    const founderElement=browser.$('#idmainSearchtype');
    browser.waitUntil(
        () =>  founderElement.isDisplayed() === true,
        {
            timeout: 6000,
            timeoutMsg: 'title is not displayed after the given time'
        }
    );
    CreateEnquiryCRM.Enquirycode(enquiryID);
});
Then(/^Confirm the Job Successfully$/,function(){
    const confirmJob=browser.$('//*[@id="me-info-header"]/div[1]/div/div[2]/div/button[2]');
    confirmJob.click();
    const confirmJobwithoutemail=browser.$('//*[@id="confirm-job-no-email_save"]');
    browser.waitUntil(
        () =>  confirmJobwithoutemail.isDisplayed() === true,
        {
            timeout: 6000,
            timeoutMsg: 'title is not displayed after the given time'
        }
    );
    confirmJobwithoutemail.scrollIntoView();
    confirmJobwithoutemail.click();
    const jobcodelink=browser.$('#left-view > div:nth-child(2) > div > div > div > div.col-md-5 > h3 > a');
    browser.waitUntil(
        () =>  jobcodelink.isDisplayed() === true,
        {
            timeout: 6000,
            timeoutMsg: 'title is not displayed after the given time'
        }
    );
    jobcodelink.click();
    browser.pause(5000);
    const profile= browser.$('#top-scroll > div.wrapper > header > nav > div.navbar-custom-menu > ul:nth-child(1) > li.dropdown.notifications-menu.user-menu > a > span > i');
    profile.scrollIntoView();
    profile.click();
    const logout=browser.$('#top-scroll > div.wrapper > header > nav > div.navbar-custom-menu > ul:nth-child(1) > li.dropdown.notifications-menu.user-menu.open > ul > li > div > ul > li:nth-child(3) > a');
    logout.click(); 
});

