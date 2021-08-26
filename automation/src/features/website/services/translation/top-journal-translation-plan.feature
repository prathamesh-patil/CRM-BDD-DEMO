Feature: Top journal translation plan service

    Background: I am on top journal translation plan service
        Given I open the website "/services/translation/top-journal-translation-plan"

    @sanity
    Scenario Outline: I expect that all links on top journal translation plan page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @jpn
        Examples:
            | element                                                                                              | link                                                                                  |
            | //*[@id="serviceOptions"]/app-options-ruby/div[1]/app-lynk/a                                         | "/services/translation"                                                               |
            | //*[@id="serviceOptions"]/app-options-ruby/div[2]/app-lynk/a                                         | "/services/translation/standard-translation-plan"                                     |
            | //*[@id="serviceOptions"]/app-options-ruby/div[3]/app-lynk/a                                         | "/services/translation/premium-translation-plan"                                      |
            | //*[@id="serviceOptions"]/app-options-ruby/div[4]/app-lynk/a                                         | "/services/translation/top-journal-translation-plan"                                  |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/div/ul/li[1]/app-lynk/a                            | "/services/translation/basic-translation-plan"                                        |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/div/ul/li[2]/app-lynk/a                            | "/services/other/book-translation-and-editing"                                        |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/div/ul/li[3]/app-lynk/a                            | "/services/translation/english-to-japanese"                                           |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/div/ul/li[4]/app-lynk/a                            | "/info/ppc/thesis-translation"                                                        |
            | //*[@id="serviceOptions"]/app-options-ruby/div[6]/div/ul/li[1]/app-lynk/a                            | "/pricing/translation-service"                                                        |
            | //*[@id="serviceOptions"]/app-options-ruby/div[6]/div/ul/li[2]/app-lynk/a                            | "/services/translation/compare-plans"                                                 |
            | //*[@id="serviceOptions"]/app-options-ruby/div[6]/div/ul/li[3]/app-lynk/a                            | "/quality"                                                                            |
            | //*[@id="serviceOptions"]/app-options-ruby/div[6]/div/ul/li[4]/app-lynk/a                            | "/services/translation/japanese-to-english/sample"                                    |
            | //*[@id="serviceOptions"]/app-options-ruby/div[6]/div/ul/li[5]/app-lynk/a                            | "/subject-expertise"                                                                  |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[6]/app-lynk/a  | "/order/ncf/j2e-translation-services/japan-tl-plus-scientific-editing?source=website" |
            | /html/body/app-root/ng-component/app-featured-block-lapis/div[2]/div/div/div[2]/app-lynk/a           | "/order/ncf/translation-services?source=website"                                      |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[2]/div[3]/app-lynk/a | "/order/ncf/j2e-translation-services/japan-tl-plus-scientific-editing?source=website" |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                               | "/order/ncf/j2e-translation-services/japan-tl-plus-scientific-editing?source=website" |

    Scenario Outline: I expect FAQs should be functional on top journal translation plan page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @jpn
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[3] |

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms CTA on top journal translation page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page

        @jpn
        Examples:
            | path                                                                                                 | link                                                                                  | eosElementPath                                 | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                               | "/order/ncf/j2e-translation-services/japan-tl-plus-scientific-editing?source=website" | //*[@id="prospect"]/div/div/div/div/div/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[6]/app-lynk/a  | "/order/ncf/j2e-translation-services/japan-tl-plus-scientific-editing?source=website" | //*[@id="prospect"]/div/div/div/div/div/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[2]/div[3]/app-lynk/a | "/order/ncf/j2e-translation-services/japan-tl-plus-scientific-editing?source=website" | //*[@id="prospect"]/div/div/div/div/div/button | "btn-primary-blue" |