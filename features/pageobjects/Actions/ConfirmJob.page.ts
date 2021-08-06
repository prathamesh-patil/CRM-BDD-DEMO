let jobCode:string;
class ConfirmJob {
    ConfirmJobWithEmail() {
        const confirmJobBtn = browser.$("#me-info-header>div.new-enquiry>div>div.col-md-4>div>button.btn.btn-skyb.__click.wb-action-button.action-link");
        confirmJobBtn.click();
        const confirmJobwithoutEmailBtn = browser.$("#confirm-job-no-email_save");
        confirmJobwithoutEmailBtn.scrollIntoView();
        confirmJobwithoutEmailBtn.click();
        browser.execute(function () {
            const Loaders = <Element>document.getElementById('preloader');
            Loaders.style = "display:none";
        });
        const jobCodeUrl=browser.$("#left-view > div:nth-child(2) > div > div > div > div.col-md-5 > h3 > a");
        jobCodeUrl.click();
        jobCode=browser.getUrl();
        expect(jobCode==browser.getUrl());
    }

}
export default new ConfirmJob();

function ConfirmJobWithEmail() {
    throw new Error("Function not implemented.");
}
