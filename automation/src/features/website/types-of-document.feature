Feature: Types of document

    Background: I am on types of document page
        Given I open the website "/types-of-document"

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms CTA on type of document page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page

        @jpn
        Examples:
            | path                                                                   | link                        | eosElementPath                                                                                                                     | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a | "/order/ncf?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/ng-component/ng-component/div[1]/div[2]/div/div/div/div[1]/div/a | "btn-primary-blue" |
