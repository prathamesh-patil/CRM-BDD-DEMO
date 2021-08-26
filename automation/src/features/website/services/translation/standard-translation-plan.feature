Feature: Standard translation plan service

    Background: I am on standard translation plan service
        Given I open the website "/services/translation/standard-translation-plan"

    @sanity
    Scenario Outline: I expect that all links on standard translation plan page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @jpn
        Examples:
            | element                                                                                                     | link                                                                                                                                 |
            | //*[@id="serviceOptions"]/app-options-ruby/div[1]/app-lynk/a                                                | "/services/translation"                                                                                                              |
            | //*[@id="serviceOptions"]/app-options-ruby/div[2]/app-lynk/a                                                | "/services/translation/standard-translation-plan"                                                                                    |
            | //*[@id="serviceOptions"]/app-options-ruby/div[3]/app-lynk/a                                                | "/services/translation/premium-translation-plan"                                                                                     |
            | //*[@id="serviceOptions"]/app-options-ruby/div[4]/app-lynk/a                                                | "/services/translation/top-journal-translation-plan"                                                                                 |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/div/ul/li[1]/app-lynk/a                                   | "/services/translation/basic-translation-plan"                                                                                       |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/div/ul/li[2]/app-lynk/a                                   | "/services/other/book-translation-and-editing"                                                                                       |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/div/ul/li[3]/app-lynk/a                                   | "/services/translation/english-to-japanese"                                                                                          |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/div/ul/li[4]/app-lynk/a                                   | "/info/ppc/thesis-translation"                                                                                                       |
            | //*[@id="serviceOptions"]/app-options-ruby/div[6]/div/ul/li[1]/app-lynk/a                                   | "/pricing/translation-service"                                                                                                       |
            | //*[@id="serviceOptions"]/app-options-ruby/div[6]/div/ul/li[2]/app-lynk/a                                   | "/services/translation/compare-plans"                                                                                                |
            | //*[@id="serviceOptions"]/app-options-ruby/div[6]/div/ul/li[3]/app-lynk/a                                   | "/quality"                                                                                                                           |
            | //*[@id="serviceOptions"]/app-options-ruby/div[6]/div/ul/li[4]/app-lynk/a                                   | "/services/translation/japanese-to-english/sample"                                                                                   |
            | //*[@id="serviceOptions"]/app-options-ruby/div[6]/div/ul/li[5]/app-lynk/a                                   | "/subject-expertise"                                                                                                                 |
            | /html/body/app-root/ng-component/app-featured-block-lapis/div[2]/div/div/div[2]/app-lynk/a                  | "/order/ncf/j2e-translation-services/standard-translation?source=website"                                                            |
            | /html/body/app-root/ng-component/app-custom-quote-block-ruby/section/div[1]/div/div[1]/div[3]/app-lynk[1]/a | "/order/ncf/j2e-translation-services/japanese-custom-translation/document/plan/add-on/information?loop=enter-large-wc&addonskip=yes" |
            | /html/body/app-root/ng-component/app-custom-quote-block-ruby/section/div[1]/div/div[1]/div[3]/app-lynk[2]/a | "/info/translation/large-volume.html"                                                                                                |
            | /html/body/app-root/ng-component/app-custom-quote-block-ruby/section/div[1]/div/div[2]/div[3]/app-lynk[2]/a | "/services/other/book-translation-and-editing"                                                                                       |
            | /html/body/app-root/ng-component/app-service-pitch-ruby/div[2]/div/div[1]/div/div[2]/div[2]/div/app-lynk/a  | "/info/ppc/thesis-translation/"                                                                                                      |

        @pending-kor
        Examples:
            | element                                                                                           | link                                              |
            | //*[@id="serviceOptions"]/app-options/app-lynk[1]/a                                               | "/services/translation"                           |
            | //*[@id="serviceOptions"]/app-options/app-lynk[2]/a                                               | "/services/translation/standard-translation-plan" |
            | //*[@id="serviceOptions"]/app-options/app-lynk[3]/a                                               | "/services/translation/premium-translation-plan"  |
            | //*[@id="serviceOptions"]/app-options/app-lynk[4]/a                                               | "/services/translation/compare-plans"             |
            | /html/body/app-root/ng-component/app-custom-quote-block-ruby/section/div[1]/div/div[1]/app-lynk/a | "/services/translation/general-plans"             |
            | /html/body/app-root/ng-component/app-custom-quote-block-ruby/section/div[1]/div/div[2]/app-lynk/a | "/services/translation/large-projects-plans"      |



    Scenario Outline: I expect FAQs should be functional on standard translation plan page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @jpn
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[3] |

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms CTA on standard translation page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page

        @jpn
        Examples:
            | path                                                                                                | link                                                                      | eosElementPath                                 | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                              | "/order/ncf/j2e-translation-services/standard-translation?source=website" | //*[@id="prospect"]/div/div/div/div/div/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[5]/app-lynk/a | "/order/ncf/j2e-translation-services/standard-translation?source=website" | //*[@id="prospect"]/div/div/div/div/div/button | "btn-primary-blue" |

    Scenario Outline: I expect to open order page on forms on clicking on forms tabs on standard translation page
        Then I expect that element /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1] has the class "rounded-t-lg"
        When I click on the element <elementPath>
        Then I expect that element <buttonPath> has the link <link>
        And I click on the element <buttonPath>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page

        @jpn
        Examples:
            | elementPath                                                                                | buttonPath                                                                                           | link                                                                                                                                                | eosElementPath                                                                                                                                                     | eosElementClass    |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[1] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/j2e-translation-services/standard-translation?source=website"                                                                           | //*[@id="prospect"]/div/div/div/div/div/button                                                                                                                     | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[2] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/j2e-translation-services/standard-translation?source=website"                                                                           | //*[@id="prospect"]/div/div/div/div/div/button                                                                                                                     | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[3] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/j2e-translation-services/standard-translation?source=website"                                                                           | //*[@id="prospect"]/div/div/div/div/div/button                                                                                                                     | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[4] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/j2e-translation-services/standard-translation?source=website"                                                                           | //*[@id="prospect"]/div/div/div/div/div/button                                                                                                                     | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[5] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div/app-lynk/a    | "/order/ncf/j2e-translation-services/japanese-custom-translation/document/plan/add-on/information?source=website&loop=enter-large-wc&addonskip=yes" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[7]/div[2]/button | "btn-primary-blue" |

    @sanity
    Scenario Outline: I expect to open book translation and editing page and should scroll to formstack form according to expectation from standard translation plan page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <formstackPath> has the class <formstackClass>
        @jpn
        Examples:
            | path                                                                                                        | link                                                                      | formstackPath        | formstackClass |
            | /html/body/app-root/ng-component/app-custom-quote-block-ruby/section/div[1]/div/div[2]/div[3]/app-lynk[1]/a | "/services/other/book-translation-and-editing?section=book-services-form" | //*[@id="formStack"] | "wrapper"      |