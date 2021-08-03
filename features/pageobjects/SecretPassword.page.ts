class SecretPassword {

    get username() { return $("#email_id");}
    get password() { return $("#password");}
    get submitBtn() { return $("#login_form > div.row > div.col-lg-12 > button");}

    secretPasswordSaved(){
        this.username.waitForExist();
        this.username.setValue('nikhita.more@cactusglobal.com');
        this.password.setValue('Ca1234567');
        this.submitBtn.click();
    }
    secretPasswordGeneration(){
        browser.waitUntil(
            () =>  $("#drilldown > div > section > div:nth-child(2) > div > div > h4").isDisplayed() === true,
            {
                timeout: 100000,
                timeoutMsg: 'title is not displayed after the given time'
            }
        );
        $("#idmainSearchtype").setValue("!secret password");
        browser.keys('Enter');
    }

}
export default new SecretPassword();