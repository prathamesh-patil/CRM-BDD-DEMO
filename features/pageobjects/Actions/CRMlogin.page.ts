class CRMlogin {

    get usernameLogin() { return $("#email_id");}
    get passwordLogin() { return $("#password");}
    get submitBtnLogin() { return $("#login_form > div.row > div.col-lg-12 > button");}
    
    OpenBrowser(){
        browser.url("https://crm.cactusglobal.com/login");
    }
    SecretPasswordlogin(){
        this.usernameLogin.waitForExist();
        this.usernameLogin.setValue("nikhita.more@cactusglobal.com");
        this.passwordLogin.setValue("Ca1234567");
    }

    CMlogin(){
        this.usernameLogin.waitForExist();
        this.usernameLogin.setValue("sujeong.kim@cactusglobal.com");
    }
    PMlogin(){
        this.usernameLogin.waitForExist();
        this.usernameLogin.setValue("naveenr@cactusglobal.com");
    }
    Translatorlogin(){
        this.usernameLogin.waitForExist();
        this.usernameLogin.setValue("geetat@cactusglobal.com");
    }
    Freelancerlogin(){
        this.usernameLogin.waitForExist();
        this.usernameLogin.setValue("testsanitywinchester@gmail.com");
    }
    Password(){
        this.passwordLogin.setValue("C1234567");
    }
    SubmitBtn(){
        this.submitBtnLogin.click(); 
    }
}
export default new CRMlogin();