Feature: Large project plan service

    Background: I am on large project plans service
        Given I open the website "/services/translation/large-projects-plans"

    @sanity
    Scenario Outline: I expect that all links on large project plans page should be verified against expectation
        Then I expect that element <element> has the link <link>

        @pending-kor
        Examples:
            | element                                                                                             | link                                                           |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[5]/app-lynk/a | "order/ncf/k2e-translation-services/korean-custom-translation" |

    Scenario Outline: I expect FAQs should be functional on large project plans page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"

        @pending-kor
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[1] |
