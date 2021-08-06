class Login {
    LoginInitiate(env: string) {
        if (env == "prod") {
            //CRMlogin.OpenBrowser();

            browser.url("https://crm.cactusglobal.com/login");
            browser.maximizeWindow();
        } else {
            //CRMlogin.OpenBrowser();

            browser.url("https://" + env + ".crm.cactusglobal.com/login");
            browser.maximizeWindow();
        }
    }
}
export default new Login();