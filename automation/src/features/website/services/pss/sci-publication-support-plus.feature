Feature: Sci publication support plus service

    Background: I am on sci publication plus support service
        Given I open the website "/services/publishing-services-packs/sci-publication-support-plus"

    @sanity
    Scenario Outline: I expect that all links on sci publication support plus full page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @pending-kor
        Examples:
            | element                                             | link                                                               |
            | //*[@id="serviceOptions"]/app-options/app-lynk[1]/a | "/services/publishing-services-packs"                              |
            | //*[@id="serviceOptions"]/app-options/app-lynk[2]/a | "/services/publishing-services-packs/sci-publication-support"      |
            | //*[@id="serviceOptions"]/app-options/app-lynk[3]/a | "/services/publishing-services-packs/sci-publication-support-plus" |
            | //*[@id="serviceOptions"]/app-options/app-lynk[4]/a | "/services/publishing-services-packs/express-pack"                 |
            | //*[@id="serviceOptions"]/app-options/app-lynk[5]/a | "/services/publishing-services-packs/compare-plans"                |