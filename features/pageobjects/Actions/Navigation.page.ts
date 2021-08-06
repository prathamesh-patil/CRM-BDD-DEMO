class Navigation{
    EnquiryNavigation(){
        const createNewEnquiry=browser.$('ul.nav.navbar-nav>li:nth-of-type(2)>a.dropdown-toggle>span:nth-of-type(1)');
        createNewEnquiry.click();
    }
}
export default new Navigation();