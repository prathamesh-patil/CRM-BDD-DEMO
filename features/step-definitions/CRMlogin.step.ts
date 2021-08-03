import { Given, When, Then } from '@cucumber/cucumber';
import CRMlogin from '../pageobjects/CRMlogin.page';
Given(/^I am on the login page$/,{timeout:100000},function() {
    CRMlogin.OpenBrowser();
    browser.maximizeWindow();
});

When(/^I login with CM credentials$/,{timeout:100000},function() {
    CRMlogin.CMlogin();
    CRMlogin.Password();
    CRMlogin.SubmitBtn();
    browser.pause(20000);
    const founderElement=browser.$('//*[@id="drilldown"]/div/section/div[2]/div/div/h4');
    browser.waitUntil(
        () =>  founderElement.isDisplayed() === true,
        {
            timeout: 10000,
            timeoutMsg: 'title is not displayed after the given time'
        }
    );
});

Then(/^I shall be sucessfully logged in for CM login$/,{timeout:100000},function() {
    /*const navigation=$("#top-scroll > div.wrapper > header > nav > div.navbar-custom-menu > ul:nth-child(1) > li:nth-child(2) > a > i");
    navigation.click();
    browser.pause(1000);
    const createEnquiryOption=$("#base_wrapper > header > nav > div.navbar-custom-menu > ul:nth-child(1) > li.dropdown.notifications-menu.hidden-xs.visible-md.visible-lg.open > ul > li > div > ul > li:nth-child(1) > a");
    createEnquiryOption.click();*/
    browser.maximizeWindow();
    const timeout=browser.getTimeouts();
    console.log("Time out returned as:"+JSON.stringify(timeout));
    browser.pause(10000);
    const navigation=$("#top-scroll > div.wrapper > header > nav > div.navbar-custom-menu > ul:nth-child(1) > li:nth-child(2) > a > i");
    navigation.click();
    browser.pause(5000); 
    const profile= browser.$("#base_wrapper > header > nav > div.navbar-custom-menu > ul:nth-child(1) > li.dropdown.notifications-menu.user-menu > a > span");
    profile.click();
    const logout=browser.$("#base_wrapper > header > nav > div.navbar-custom-menu > ul:nth-child(1) > li.dropdown.notifications-menu.user-menu.open > ul > li > div > ul > li:nth-child(3) > a");
    logout.click();
    //browser.setTimeouts(40000,50000,50000);
    //const addEnquiryPage=browser.$('//*[@id="page-header"]');
    //console.log("Name_Element:"+JSON.stringify(addEnquiryPage));
    //expect(browser).toHaveTitle("Add New Enquiry|CACTUS CRM");
});

When(/^I login with PM credentials$/,{timeout:100000},function() {
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
});

Then(/^I shall be sucessfully logged in for PM login$/,{timeout:100000},function() {
    const navigation=$("#top-scroll > div.wrapper > header > nav > div.navbar-custom-menu > ul:nth-child(1) > li:nth-child(2) > a > i");
    navigation.click();
    browser.pause(5000);
    const profile= browser.$("#top-scroll > div.wrapper > header > nav > div.navbar-custom-menu > ul:nth-child(1) > li:nth-child(11) > a > span");
    profile.click();
    const logout=browser.$("#top-scroll > div.wrapper > header > nav > div.navbar-custom-menu > ul:nth-child(1) > li.dropdown.notifications-menu.user-menu.open > ul > li > div > ul > li:nth-child(7) > a");
    logout.click();
    //browser.setTimeouts(40000,50000,50000);
    //const addEnquiryPage=browser.$('//*[@id="page-header"]');
    //console.log("Name_Element:"+JSON.stringify(addEnquiryPage));
    //expect(browser).toHaveTitle("Add New Enquiry|CACTUS CRM");
});

When(/^I login with Translator credentials$/,{timeout:100000},function() {
    CRMlogin.Translatorlogin();
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
});

Then(/^I shall be sucessfully logged in for Translator login$/,{timeout:100000},function() {
    const navigation=$("#top-scroll > div.wrapper > header > nav > div.navbar-custom-menu > ul:nth-child(1) > li:nth-child(2) > a > i");
    navigation.click();
    browser.pause(5000);
    const profile= browser.$('//*[@id="base_wrapper"]/header/nav/div[2]/ul[1]/li[7]/a/span');
    profile.click();
    const logout=browser.$('//*[@id="base_wrapper"]/header/nav/div[2]/ul[1]/li[7]/ul/li/div/ul/li[3]/a');
    logout.click();
    //browser.setTimeouts(40000,50000,50000);
    //const addEnquiryPage=browser.$('//*[@id="page-header"]');
    //console.log("Name_Element:"+JSON.stringify(addEnquiryPage));
    //expect(browser).toHaveTitle("Add New Enquiry|CACTUS CRM");
});
When(/^I login with Freelancer credentials$/,{timeout:100000},function() {
    CRMlogin.Freelancerlogin();
    CRMlogin.Password();
    CRMlogin.SubmitBtn();
    browser.execute(function(){
        const Loaders=<HTMLInputElement>document.getElementById('preloader');
        Loaders.display="none";
    });
    const founderElement=browser.$('#drilldown > div > section > div:nth-child(1) > div.row.hidden-xs.employee-dash-header > div > div.col-md-3.hidden-xs > div > div > div > div.left-text-karma > p.karma-points > span');
    browser.waitUntil(
        () =>  founderElement.isDisplayed() === true,
        {
            timeout: 6000,
            timeoutMsg: 'title is not displayed after the given time'
        }
    );
});

Then(/^I shall be sucessfully logged in for Freelancer login$/,{timeout:100000},function() {
    const profile= browser.$('//*[@id="base_wrapper"]/header/nav/div[2]/ul[1]/li[4]/a/span');
    profile.click();
    const logout=browser.$('//*[@id="base_wrapper"]/header/nav/div[2]/ul[1]/li[4]/ul/li/div/ul/li[7]/a');
    logout.click();
});