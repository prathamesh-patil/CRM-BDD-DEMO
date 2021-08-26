Feature: Proofreading service

    Background: I am on Proofreading page
        Given I open the website "/services/other/proof-reading"

    @sanity
    Scenario Outline: I expect to see correct buy now link on proofreading page
        Then I expect that element <element> has the link <link> opening in new tab
        @eng
        Examples:
            | element                                                                                       | link                                                          |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[1]/div/app-lynk/a | "/info/nclient-proofreading-and-language-check-services.html" |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                        | "/info/nclient-proofreading-and-language-check-services.html" |

    Scenario Outline: I expect FAQs should be functional on proofreading page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @eng
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[2] |