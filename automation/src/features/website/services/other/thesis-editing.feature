Feature: Thesis editing service

    Background: I am on thesis editing page
        Given I open the website "/services/other/thesis-editing"

    @sanity
    Scenario Outline: I expect to see correct pricing for thesis editing service
        Then I expect that element <element> matches the text <price>
        @eng
        Examples:
            | element                                                                                         | price  |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[2]/div[1]/div[1]/h2 | "$205" |

    @sanity
    Scenario Outline: I expect to see correct buy now link on thesis editing page
        Then I expect that element <element> has the link <link>
        @eng
        Examples:
            | element                                                                                          | link                                                          |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[2]/div[1]/app-lynk/a | "/info/nclient-proofreading-and-language-check-services.html" |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                           | "/info/nclient-proofreading-and-language-check-services.html" |

    Scenario Outline: I expect FAQs should be functional on thesis editing page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @eng
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[2] |