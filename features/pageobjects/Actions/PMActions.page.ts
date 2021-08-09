class PMActions{
    moreAction(){
        const moreAction=browser.$("#me-info-header > div.jobs-header.label-warning > div:nth-child(1) > div.col-md-4 > div.header-btn-wrap > button");
        moreAction.scrollIntoView();
        moreAction.click();
    }
    allocateJob(){
        const JobAllocation=browser.$("#me-info-header > div.jobs-header.label-warning > div:nth-child(1) > div.col-md-4 > div.header-btn-wrap.open > ul > li:nth-child(1) > a");
        JobAllocation.scrollIntoView();
        JobAllocation.click();
    }
}
export default new PMActions();