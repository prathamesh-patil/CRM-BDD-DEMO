Feature: General plans service

    Background: I am on generals plan service
        Given I open the website "/services/translation/general-plans"

    Scenario Outline: I expect to see correct pricing for general plans service
        Then I expect that element <element> matches the text <price>
        @pending-kor
        Examples:
            | element | price |
    # | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[1]/div[2]/h2 | "62" |

    Scenario Outline: I expect that all links on general plans page should be verified against expectation
        Then I expect that element <element> has the link <link>

        @pending-kor
        Examples:
            | element                                                                                             | link                                                                        |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[5]/app-lynk/a | "/order/ncf/k2e-translation-services/korean-to-english-translation-level-1" |

    Scenario Outline: I expect FAQs should be functional on general plans page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"

        @pending-kor
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[1] |
