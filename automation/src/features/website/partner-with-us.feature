Feature: Partner with us

    Background: I am on partner with us page
        Given I open the website "/partner-with-us"

    Scenario Outline: I expect that partnership offering service tabs should be working
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        @eng @chn @jpn @pending-kor
        Examples:
            | element                                                                              |
            | /html/body/app-root/ng-component/app-service-information/section/div[1]/div/ul/li[1] |
            | /html/body/app-root/ng-component/app-service-information/section/div[1]/div/ul/li[2] |
            | /html/body/app-root/ng-component/app-service-information/section/div[1]/div/ul/li[3] |

    @sanity
    Scenario Outline: I expect that all links on partner with us page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @eng
        Examples:
            | element                                                                       | link                                        |
            | /html/body/app-root/ng-component/app-information-block-jade/div[2]/app-lynk/a | "mailto:daniel.prathipati@cactusglobal.com" |