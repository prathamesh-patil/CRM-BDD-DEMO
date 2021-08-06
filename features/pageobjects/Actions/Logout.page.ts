class Logout{
    logoutProfile(){
        const profile= browser.$('.dropdown.notifications-menu.user-menu');
        //#base_wrapper > header > nav > div.navbar-custom-menu > ul:nth-child(1) > li.dropdown.notifications-menu.user-menu > a > span > i
        browser.waitUntil(
            () =>  profile.isDisplayed() === true,
            {
                timeout: 90000,
                timeoutMsg: 'title is not displayed after the given time'
            }
        );
        profile.scrollIntoView();
        profile.click();
        const logout=browser.$("a[href*='logout']");
        logout.click();
    }
}
export default new Logout();