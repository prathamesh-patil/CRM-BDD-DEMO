import { Given, When, Then } from '@cucumber/cucumber';
import Login from '../pageobjects/Actions/Login.page';
import CreateEnquiryCRM from '../pageobjects/Actions/CreateEnquiry.page';
import SecretPassword from '../pageobjects/Actions/SecretPassword.page';
import allureReporter from '@wdio/allure-reporter';
import Logout from '../pageobjects/Actions/Logout.page';
import ConfirmJob from '../pageobjects/Actions/ConfirmJob.page'
import PMActions from '../pageobjects/Actions/PMActions.page';
let cHandle:any;
let job_code:any;
let split_url:any;
let jobCode:any;
let handles:any;
Given(/^I am on Login Page from (.+)$/, { timeout: 90000 }, function (env) {
    Login.LoginInitiate(env);
});

When(/^Secret Password is captured for (.+) Admin Login for (.+) and (.+)$/, { timeout: 90000 }, function (env, username, password) {
    allureReporter.addSeverity('Normal');
    SecretPassword.secretPassWordExecution(env, username, password);
    browser.execute(function () {
        const Loaders = <Element>document.getElementById('preloader');
        Loaders.style = "display:none";
    });
    Logout.logoutProfile();
});

Then(/^Log in by CM Credentials on (.+) and Create Enquiry from CRM for (.+)$/, { timeout: 90000 }, function (env, useremailid) {
    allureReporter.addSeverity('Critical');
    SecretPassword.secretPasswordCMLogin();
    browser.setTimeout({ 'implicit': 5000 });
    browser.execute(function () {
        var Loaders = <Element>document.getElementById('preloader');
        Loaders.style = "display:none";
    });
    allureReporter.addSeverity('Blocker')
    const navigation = browser.$("body > div:nth-child(2) > header:nth-child(1) > nav:nth-child(5) > div:nth-child(3) > ul:nth-child(1) > li:nth-child(2) > a:nth-child(1) > i:nth-child(2)");
    navigation.waitForEnabled();
    navigation.click();
    browser.pause(3000);
    if (env == "prod") {
        browser.url('https://crm.cactusglobal.com/backend/enquiry/create');
    } else {
        browser.url('https://' + env + '.crm.cactusglobal.com/backend/enquiry/create')
    }

    const ClientUserID = $("#email_id");
    ClientUserID.setValue(useremailid);
    CreateEnquiryCRM.CreateEnquiry();
});

Then(/^Confirm Job Successfully from (.+)$/, {timeout:90000} ,function (env) {
    ConfirmJob.ConfirmJobWithEmail();
    cHandle=browser.getWindowHandle();
    handles=browser.getWindowHandles();
    var newHandle:any;
    for (let i = 0; i<handles.length; i++) {
      if(handles[i]!=cHandle){
          newHandle=handles[i];
      }
      
    }
    if (handles.length > 1) {
        browser.switchToWindow(handles[1]);
        job_code=browser.getUrl();
        browser.switchToWindow(handles[0]);
        }
    split_url=job_code.split('://')[1];
    jobCode=split_url.split('/')[3];
    console.log("The First JobCode:"+jobCode);
});

Then(/^Enquiry is Created Successfully$/,{ timeout: 90000 }, function () {
    browser.pause(5000);
    Logout.logoutProfile();
});

Then(/^Login by PM Credentials on (.+) for PM Login$/,{ timeout: 90000 }, function (env) {
    SecretPassword.secretPasswordPMLogin();
    //browser.navigateTo('https://'+ env +'.crm.cactusglobal.com/job/view/'+jobCode);
    var naCount=browser.$("#tz-pm-selected > div.col-md-8 > div:nth-child(1) > div.box-body > div > div > div > div > table > tbody > tr.mrh-detail-row.metric-row.not-queued > td:nth-child(6) > div > a");
    naCount.waitForClickable({timeout:2000});
    naCount.click();
    browser.pause(20000);
    var notqueued=browser.$("#drilldown > div > section > div:nth-child(2) > div > div.row > div.col-md-9 > div > h2");
    browser.waitUntil(
        () =>  notqueued.isDisplayed() === true,
        {
            timeout: 20000,
            timeoutMsg: 'title is not displayed after the given time'
        });
    var searchFinder=browser.$(".search-popover-wrap");
    browser.waitUntil(
        () =>  searchFinder.isDisplayed() === true,
        {
            timeout: 20000,
            timeoutMsg: 'title is not displayed after the given time'
        });
    searchFinder.click();
    $('#target_zero_drilldown_rows > tr > td:nth-child(1) > div.bold > a').click();
    $("#headerSearchBox").setValue(jobCode);
    /*if (handles.length > 1) {
        browser.switchToWindow(handles[1]);
        browser.refresh();
        browser.pause(1000);
    }
    browser.pause(10000);*/
    console.log("Handles on:"+handles);
    console.log("The Job Code:"+jobCode);
});

When(/^PM Clicks on ManualAllocation Action from More Option (.+)$/,{ timeout: 90000 }, function (env) {
    console.log('**Before Effect**');
   // $('#header-transfer-pm-edit > a > span').click();
    browser.pause(10000);
    browser.switchWindow("CACTUS CRM")
    console.log("**After Effect***");
    PMActions.moreAction();
    console.log(browser.getUrl());
});

Then(/^Allocate the job from PM to FL OR EOC OR InhouseUser$/,{ timeout: 90000 }, function () {
    PMActions.allocateJob();
    console.log(browser.getUrl());
    browser.pause(5000);
});

Then(/^Logout from PM Credentials Successfully$/,{ timeout: 90000 }, function () {
    browser.execute(function () {
        const Loaders = <Element>document.getElementById('preloader');
        Loaders.style = "display:none";
    });
    Logout.logoutProfile();
    browser.closeWindow();
});
