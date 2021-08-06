import CRMlogin from "../Actions/CRMlogin.page";
class SecretPassword {
    secretPasswordValue:any ;
    get username() { return $("#email_id");}
    get password() { return $("#password");}
    get submitBtn() { return $("#login_form > div.row > div.col-lg-12 > button");}

    secretPasswordSaved(){
        this.username.waitForExist();
        this.username.setValue('nikhita.more@cactusglobal.com');
        this.password.setValue('Ca1234567');
        this.submitBtn.click();
    }
    secretPassWordExecution(env:string,username:string,password:string){
        if (env == "prod") {
            this.secretPasswordSaved();
            browser.setTimeout({'implicit':5000});
            this.secretPasswordGeneration();
        } else {
            this.username.setValue(username);
            this.password.setValue(password);
            this.submitBtn.click();
            browser.setTimeout({'implicit':60000});
            this.secretPasswordGeneration();
        }
        this.secretPasswordValue=$("#widgetMainContent > div").getText();
        browser.pause(5000);
    }
    
    secretPasswordGeneration(){
        browser.waitUntil(
            () =>  $(".form-control.navbar-search-input").isDisplayed() === true,
            {
                timeout: 100000,
                timeoutMsg: 'title is not displayed after the given time'
            }
        );
        $(".form-control.navbar-search-input").setValue("!secret password");
        browser.keys('Enter');
    }

    secretPasswordCMLogin(){
        if(this.secretPasswordValue != null)
        {
          CRMlogin.CMlogin();
          $("#password").setValue(this.secretPasswordValue);
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
    }
    secretPasswordPMLogin(){
        if(this.secretPasswordValue != null)
        {
          CRMlogin.PMlogin();
          $("#password").setValue(this.secretPasswordValue);
          CRMlogin.SubmitBtn();
          console.log("Printed the IF part");
         }
      else
         {
          CRMlogin.PMlogin();
          CRMlogin.Password();
          CRMlogin.SubmitBtn();
          console.log("Printed the ELSE Part");
         }
    }

}
export default new SecretPassword();