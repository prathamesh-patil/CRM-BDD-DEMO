Feature: Payment Page
    Background: I am on payment page
        Given I open the website "/payment"

    Scenario Outline: I expect that all links on payment page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @chn
        Examples:
            | element                                | link           |
            | //*[@id="menuLapis"]/div/app-lynk[1]/a | "/payment"     |
            | //*[@id="menuLapis"]/div/app-lynk[2]/a | "/invoices"    |
            | //*[@id="menuLapis"]/div/app-lynk[3]/a | "/pre-payment" |

    Scenario Outline: I expect to open faq answers when clicking on faq questions in payment page
        Then I expect that element <faqQuestionPath> has the class <faqQuestionClass>
        When I click on the element <faqQuestionPath>
        Then I expect that element <faqAnswerPath> has the class <faqAnswerClass>
        @chn
        Examples:
            | faqQuestionPath        | faqQuestionClass | faqAnswerPath          | faqAnswerClass     |
            | //app-faq-block//li[1] | "text-ruby-beta" | //app-faq-block//li[1] | "text-pearl-delta" |
   
    @sanity
    Scenario Outline: I expect to open the forms on clicking on forms CTA on payment page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the link <eosElementLink>
        And I should go back to the previous page
        @chn
        Examples:
            | path                                                                   | link                        | eosElementPath                                                                                                              | eosElementLink                              |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[8]/app-lynk/a | "/order/ncf?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/ng-component/ng-component/div[1]/div/div/div/div[1]/div/a | "/order/ncf/english-editing?source=website" |
