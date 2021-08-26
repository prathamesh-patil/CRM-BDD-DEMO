Feature: Manuscript editing services

    Background: I am on manuscript editing page
        Given I open the website "/services/english-editing/manuscript-editing"

    Scenario Outline: I expect FAQs should be functional on manuscript editing page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @eng
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[3] |

    @sanity
    Scenario Outline: I expect to open service page on forms by clicking on forms CTA on manuscript editing page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @eng
        Examples:
            | path                                                                                                                                     | link                                                           | eosElementPath                                                                                                  | eosElementClass        |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                                                                   | "/order/ncf/english-editing?source=website"                    | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div[1]/ul/li[2]/div[1]/h3 | "comp-head"            |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[1]/div/app-lynk/a                                            | "/order/ncf/english-editing?source=website"                    | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div[1]/ul/li[2]/div[1]/h3 | "comp-head"            |
            | /html/body/app-root/ng-component/app-listing-ruby[2]/div[1]/div/div[3]/app-lynk/a                                                        | "/order/ncf/english-editing?source=website"                    | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div[1]/ul/li[2]/div[1]/h3 | "comp-head"            |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div/div/div[1]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website"   | //a[@data-description="ncf-screen 3-36-upload document-click-I dont have document ready-null"]                  | "text-underline-hover" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div/div/div[2]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/english-editing/premium-editing?source=website"    | //a[@data-description="ncf-screen 3-1-upload document-click-I dont have document ready-null"]                   | "text-underline-hover" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div/div/div[3]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/english-editing/scientific-editing?source=website" | //a[@data-description="ncf-screen 3-102-upload document-click-I dont have document ready-null"]                 | "text-underline-hover" |
