Feature: Translation services

    Background: I am on translation service
        Given I open the website "/services/translation"

    @sanity
    Scenario Outline: I expect that all links on translation page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @chn
        Examples:
            | element                                                                                                  | link                                  |
            | //*[@id="serviceOptions"]/app-options-ruby/div[1]/app-lynk/a                                             | "/services/translation"               |
            | //*[@id="serviceOptions"]/app-options-ruby/div[2]/app-lynk/a                                             | "/services/translation/AI"            |
            | //*[@id="serviceOptions"]/app-options-ruby/div[3]/app-lynk/a                                             | "/services/translation/professional"  |
            | //*[@id="serviceOptions"]/app-options-ruby/div[4]/app-lynk/a                                             | "/services/translation/upgraded"      |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/app-lynk/a                                             | "/services/translation/compare-plans" |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[1]/div/app-lynk/a            | "/order/ncf/translation-services"     |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[1]/div/app-lynk/a            | "/order/ncf/translation-services"     |
            | /html/body/app-root/ng-component/app-custom-quote-block-ruby/section/div[1]/div/div[1]/div[3]/app-lynk/a | "/info/translation-customform/"       |
            | /html/body/app-root/ng-component/app-custom-quote-block-ruby/section/div[1]/div/div[2]/div[3]/app-lynk/a | "/info/translation-customform/"       |

        @eng
        Examples:
            | element                                                                                                                                  | link                                             |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[1]/div/app-lynk/a                                            | "/order/ncf/translation-services"                |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div/div/div[1]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/translation-services"                |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div/div/div[2]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/translation-services"                |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div/div/div[3]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/translation-services"                |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                                                                   | "/order/ncf/translation-services?source=website" |

        @jpn
        Examples:
            | element                                                                                                     | link                                                          |
            | //*[@id="serviceOptions"]/app-options-ruby/div[1]/app-lynk/a                                                | "/services/translation"                                       |
            | //*[@id="serviceOptions"]/app-options-ruby/div[2]/app-lynk/a                                                | "/services/translation/standard-translation-plan"             |
            | //*[@id="serviceOptions"]/app-options-ruby/div[3]/app-lynk/a                                                | "/services/translation/premium-translation-plan"              |
            | //*[@id="serviceOptions"]/app-options-ruby/div[4]/app-lynk/a                                                | "/services/translation/top-journal-translation-plan"          |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/div/ul/li[1]/app-lynk/a                                   | "/services/translation/basic-translation-plan"                |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/div/ul/li[2]/app-lynk/a                                   | "/services/other/book-translation-and-editing"                |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/div/ul/li[3]/app-lynk/a                                   | "/services/translation/english-to-japanese"                   |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/div/ul/li[4]/app-lynk/a                                   | "/info/ppc/thesis-translation"                                |
            | //*[@id="serviceOptions"]/app-options-ruby/div[6]/div/ul/li[1]/app-lynk/a                                   | "/pricing/translation-service"                                |
            | //*[@id="serviceOptions"]/app-options-ruby/div[6]/div/ul/li[2]/app-lynk/a                                   | "/services/translation/compare-plans"                         |
            | //*[@id="serviceOptions"]/app-options-ruby/div[6]/div/ul/li[3]/app-lynk/a                                   | "/quality"                                                    |
            | //*[@id="serviceOptions"]/app-options-ruby/div[6]/div/ul/li[4]/app-lynk/a                                   | "/services/translation/japanese-to-english/sample"            |
            | //*[@id="serviceOptions"]/app-options-ruby/div[6]/div/ul/li[5]/app-lynk/a                                   | "/subject-expertise"                                          |
            | //app-plan-information-block[1]//a                                                                          | "/services/translation/standard-translation-plan"             |
            | //app-plan-information-block[2]//a                                                                          | "/services/translation/premium-translation-plan"              |
            | //app-plan-information-block[3]//a                                                                          | "/services/translation/top-journal-translation-plan"          |
            | /html/body/app-root/ng-component/app-featured-block-lapis/div[2]/div/div/div[2]/app-lynk/a                  | "/order/ncf/translation-services?source=website"              |
            | /html/body/app-root/ng-component/app-custom-quote-block-ruby/section/div[1]/div/div[1]/div[3]/app-lynk[2]/a | "/services/translation/basic-translation-plan"                |
            | /html/body/app-root/ng-component/app-custom-quote-block-ruby/section/div[1]/div/div[2]/div[3]/app-lynk[2]/a | "/services/other/book-translation-and-editing"                |
            | /html/body/app-root/ng-component/app-custom-quote-block-ruby/section/div[1]/div/div[3]/div[3]/app-lynk[2]/a | "/services/translation/english-to-japanese"                   |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                                      | "/order/ncf/translation-services?ss=j2e&pd=js&source=website" |
            | //app-plan-information-block[1]//a                                                                          | "/services/translation/standard-translation-plan"             |
            | //app-plan-information-block[2]//a                                                                          | "/services/translation/premium-translation-plan"              |
            | //app-plan-information-block[3]//a                                                                          | "/services/translation/top-journal-translation-plan"          |
            | /html/body/app-root/ng-component/app-featured-block-diamond[2]/section/div/div/div[2]/div[2]/app-lynk/a     | "/services/translation/japanese-to-english/sample"            |
            | /html/body/app-root/ng-component/app-service-pitch-ruby/div[2]/div/div[1]/div/div[2]/div[2]/div/app-lynk/a  | "/info/ppc/thesis-translation/"                               |
            | /html/body/app-root/ng-component/app-service-sample/section/div/div/div[2]/div[2]/div[2]/app-lynk/a         | "/services/translation/japanese-to-english/sample/medicine"   |

        @pending-kor
        Examples:
            | element                                                                                                  | link                                              |
            | //*[@id="serviceOptions"]/app-options/app-lynk[1]/a                                                      | "/services/translation"                           |
            | //*[@id="serviceOptions"]/app-options/app-lynk[2]/a                                                      | "/services/translation/standard-translation-plan" |
            | //*[@id="serviceOptions"]/app-options/app-lynk[3]/a                                                      | "/services/translation/premium-translation-plan"  |
            | //*[@id="serviceOptions"]/app-options/app-lynk[4]/a                                                      | "/services/translation/compare-plans"             |
            | /html/body/app-root/ng-component/app-custom-quote-block-ruby/section/div[1]/div/div[1]/div[3]/app-lynk/a | "/services/translation/general-plans"             |
            | /html/body/app-root/ng-component/app-custom-quote-block-ruby/section/div[1]/div/div[2]/div[3]/app-lynk/a | "/services/translation/large-projects-plans"      |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                                   | "/order/ncf/translation-services"                 |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[1]/div/app-lynk/a            | "/order/ncf/translation-services"                 |

    @sanity
    Scenario Outline: I expect to see correct pricing for translation services
        Then I expect that element <element> matches the text <price>
        @chn
        Examples:

            | element                                                                                                                             | price         |
            | /html/body/app-root/ng-component/app-plan-selection-jade/section/div[1]/div/app-plan-information-jade-block[1]/div[1]/div[1]/div/h2 | "￥0.45/字 起" |
            | /html/body/app-root/ng-component/app-plan-selection-jade/section/div[1]/div/app-plan-information-jade-block[2]/div[1]/div[1]/div/h2 | "￥0.65/字 起" |
            | /html/body/app-root/ng-component/app-plan-selection-jade/section/div[1]/div/app-plan-information-jade-block[3]/div[1]/div[1]/div/h2 | "￥1.01/字 起" |
        @eng
        Examples:
            | element                                                                                                                             | price         |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div/div/div[1]/app-plan-information-block/div/div[1]/div/h2    | "$0.06/word"  |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div/div/div[2]/app-plan-information-block/div/div[1]/div[1]/h2 | "$0.075/word" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div/div/div[3]/app-plan-information-block/div/div[1]/div/h2    | "$0.11/word"  |

    @sanity
    Scenario Outline: I expect the service widget on translation page should be functional
        Then I expect that element /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div[2]/app-screen-widget-field[1]/div/input has the class "w-full"
        When I add "234" to the inputfield /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div[2]/app-screen-widget-field[1]/div/input
        And I add "abcd@mailinator.com" to the inputfield /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div[2]/app-screen-widget-field[2]/div/input
        And I add "96196368810" to the inputfield /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div[2]/app-screen-widget-field[3]/div/input
        And I click on the element <radio>
        And I click on the button /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div[2]/app-lynk/button
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I expect the url to contain <url>
        And I expect the url to contain "pii=ZW1haWw6YWJjZEBtYWlsaW5hdG9yLmNvbSxwaG9uZTo5NjE5NjM2ODgxMA"
        And I should go back to the previous page
        @chn
        Examples:
            | radio             | url                                                                                                            | eosElementPath                                                                                                                                                             | eosElementClass    |
            | //*[@id="radio0"] | "/order/ncf/translation-services/simplified-chinese-to-english-level-1/document/plan"                          | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | //*[@id="radio1"] | "/order/ncf/translation-services/simplified-chinese-to-english-translation-standard-editing/document/plan"     | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | //*[@id="radio2"] | "/order/ncf/translation-services/simplified-chinese-to-english-translation-premium-editing-plus/document/plan" | //*[@id="field_file_upload_order"]/div/div[1]/div[1]/div                                                                                                                   | "btn-primary-blue" |

    Scenario Outline: I expect the service widget on translation page to throw validation in case user enters invalid value in any field
        When I add <value> to the inputfield <field>
        And I click on the button /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div[2]/app-lynk/button
        Then I expect that element <field> has the class "ng-invalid"
        @chn
        Examples:
            | value            | field                                                                                                                                 |
            | "wrongwordcount" | /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div[2]/app-screen-widget-field[1]/div/input |
            | "wrongemail"     | /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div[2]/app-screen-widget-field[2]/div/input |
            | "wrongphone"     | /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div[2]/app-screen-widget-field[3]/div/input |

    Scenario Outline: I expect FAQs should be functional on translation page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @eng @chn
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[3] |

    @sanity
    Scenario Outline: I expect to open service page on forms on clicking on forms CTA on translation page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @eng
        Examples:
            | path                                                                                                                                     | link                                             | eosElementPath       | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                                                                   | "/order/ncf/translation-services?source=website" | //*[@id="sl2Submit"] | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[1]/div/app-lynk/a                                            | "/order/ncf/translation-services?source=website" | //*[@id="sl2Submit"] | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div/div/div[1]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/translation-services?source=website" | //*[@id="sl2Submit"] | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div/div/div[2]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/translation-services?source=website" | //*[@id="sl2Submit"] | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div/div/div[3]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/translation-services?source=website" | //*[@id="sl2Submit"] | "btn-primary-blue" |

        @chn
        Examples:
            | path                                                                                                                                 | link                                                                                                            | eosElementPath                                                                                                                                                             | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[8]/app-lynk/a                                                               | "/order/ncf/translation-services?source=website"                                                                | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div/div[1]/table/tbody/tr[4]/td[2]/button                                            | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[1]/div/app-lynk/a                                        | "/order/ncf/translation-services?source=website"                                                                | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div/div[1]/table/tbody/tr[4]/td[2]/button                                            | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-jade/section/div[1]/div/app-plan-information-jade-block[1]/div[3]/div/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-level-1?source=website"                          | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-jade/section/div[1]/div/app-plan-information-jade-block[2]/div[3]/div/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-standard-editing?source=website"     | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-jade/section/div[1]/div/app-plan-information-jade-block[3]/div[3]/div/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-premium-editing-plus?source=website" | //*[@id="field_file_upload_order"]/div/div[1]/div[1]/div                                                                                                                   | "btn-primary-blue" |

        @jpn
        Examples:
            | path                                                                                                        | link                                                                                                                                                | eosElementPath                                                                                                                                                     | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                                      | "/order/ncf/translation-services?ss=j2e&pd=js&source=website"                                                                                       | *//ul[@class ="tc-table"]/li[1]//h3                                                                                                                                | "tc-head-text"     |
            | /html/body/app-root/ng-component/app-custom-quote-block-ruby/section/div[1]/div/div[1]/div[3]/app-lynk[1]/a | "/order/ncf/j2e-translation-services/basic-translation/document?ss=j2e&pd=ou&source=website"                                                        | //*[@id="prospect"]/div/div/div/div/div/button                                                                                                                     | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-custom-quote-block-ruby/section/div[1]/div/div[3]/div[3]/app-lynk[1]/a | "/order/ncf/translation-services?ss=e2j&source=website"                                                                                             | //button[@data-description="ncf-screen 2-22-select sl2 top-click-select-translation"]                                                                              | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-custom-quote-block-ruby/section/div[1]/div/div[4]/div[3]/app-lynk/a    | "/order/ncf/j2e-translation-services/japanese-custom-translation/document/plan/add-on/information?loop=enter-large-wc&addonskip=yes&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[7]/div[2]/button | "btn-primary-blue" |

    Scenario Outline: I expect to open order page on forms on clicking on pricing CTA on translation page pes & ses
        When I click on the element <path>
        Then I expect that element /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/h2 has the class "text-center"
        Then I click on the element <tabPath>
        Then I expect that element <formCTAPath> has the link <formCTAPathLink>
        Then I click on the element <formCTAPath>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @jpn
        Examples:
            | path | tabPath | formCTAPath | formCTAPathLink | eosElementPath | eosElementClass |


    Scenario Outline: I expect to open order page on forms on clicking on pricing CTA on translation page pes plus
        When I click on the element <path>
        Then I expect that element <formCTAPath> has the link <formCTAPathLink>
        Then I click on the element <formCTAPath>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @jpn
        Examples:
            | path | formCTAPath | formCTAPathLink | eosElementPath | eosElementClass |

    @chn
    Scenario: I expect to verify the h1 tags on translation page
        Then I expect the page to contain tagname h1 to be equal to count 1

    Scenario Outline: I expect to verify all links have the attribute with the required value
        Then I expect that element <element> has the attribute <attribute> with value <value>
        @chn
        Examples:
            | element                                                                                                                              | attribute | value    |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[1]/div/app-lynk/a                                        | rel       | nofollow |
            | /html/body/app-root/ng-component/app-plan-selection-jade/section/div[1]/div/app-plan-information-jade-block[1]/div[3]/div/app-lynk/a | rel       | nofollow |
            | /html/body/app-root/ng-component/app-plan-selection-jade/section/div[1]/div/app-plan-information-jade-block[2]/div[3]/div/app-lynk/a | rel       | nofollow |
            | /html/body/app-root/ng-component/app-plan-selection-jade/section/div[1]/div/app-plan-information-jade-block[3]/div[3]/div/app-lynk/a | rel       | nofollow |

    @sanity
    Scenario Outline: I expect to open book translation and editing page and should scroll to formstack form according to expectation from translation service page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <formstackPath> has the class <formstackClass>
        @jpn
        Examples:
            | path                                                                                                        | link                                                                      | formstackPath        | formstackClass |
            | /html/body/app-root/ng-component/app-custom-quote-block-ruby/section/div[1]/div/div[2]/div[3]/app-lynk[1]/a | "/services/other/book-translation-and-editing?section=book-services-form" | //*[@id="formStack"] | "wrapper"      |
