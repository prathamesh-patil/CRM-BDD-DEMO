Feature: English editing services

    Background: I am on english editing page
        Given I open the website "/services/english-editing"

    @sanity
    Scenario Outline: I expect that all links on english editing page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @eng @chn
        Examples:
            | element                                                                                                                                     | link                                                           |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[1]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website"   |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[2]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/english-editing/premium-editing?source=website"    |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[3]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/english-editing/scientific-editing?source=website" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[2]/app-lynk/a                                                      | "/order/ncf/english-editing?source=website"                    |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[1]/div/app-lynk/a                                               | "/order/ncf/english-editing?source=website"                    |
        @eng @chn @pending-kor
        Examples:
            | element                                                                                   | link                                                 |
            | //a[@data-description='eng editing-sec nav-ParentEnglishEditing-null-click-Sec Nav-null'] | "/services/english-editing"                          |
            | //a[@data-description='eng editing-sec nav-AdvancedEditing-null-click-Sec Nav-null']      | "/services/english-editing/standard-editing-plan"    |
            | //a[@data-description='eng editing-sec nav-PremiumEditing-null-click-Sec Nav-null']       | "/services/english-editing/premium-editing-plan"     |
            | //a[@data-description='eng editing-sec nav-Scientific-null-click-Sec Nav-null']           | "/services/english-editing/top-journal-editing-plan" |

        @eng
        Examples:
            | element                                                                                                  | link                                                                   |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/app-lynk/a                                             | "/services/english-editing/compare-plans"                              |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                                   | "/order/ncf/english-editing?source=website"                            |
            | /html/body/app-root/ng-component/app-offer-strip-ruby/div/div/div/div[2]/app-lynk/a                      | "order/ncf/english-editing/scientific-editing/document?source=website" |
            | /html/body/app-root/ng-component/app-custom-quote-block-ruby/section/div[1]/div/div[1]/div[3]/app-lynk/a | "/services/english-editing/abstract-editing"                           |
            | /html/body/app-root/ng-component/app-custom-quote-block-ruby/section/div[1]/div/div[2]/div[3]/app-lynk/a | "/services/english-editing/case-report-editing"                        |

        @chn
        Examples:
            | element                                                      | link                                      |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/app-lynk/a | "/services/english-editing/compare-plans" |

    Scenario Outline: I expect to see correct pricing for english editing services
        Then I expect that element <element> matches the text <price>
        @chn
        Examples:
            | element                                                                                                                             | price         |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[1]/app-plan-information-block/div/div[1]/div/h2 | "￥0.32/词 起" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[2]/app-plan-information-block/div/div[1]/div/h2 | "￥0.56/词 起" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[3]/app-plan-information-block/div/div[1]/div/h2 | "￥1.40/词 起" |

    Scenario Outline: I expect to see correct links on each english editing samples
        When I scroll the page to center and click on the element <element>
        Then I expect that element <button> has the link <link>
        @eng @chn
        Examples:
            | element                                                                                                     | button                                                                             | link                                            |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[1] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[3]/app-lynk/a | "/order/ncf/english-editing/standard-editing"   |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[2] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[3]/app-lynk/a | "/order/ncf/english-editing/premium-editing"    |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[3] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[3]/app-lynk/a | "/order/ncf/english-editing/scientific-editing" |

    @sanity
    Scenario Outline: I expect the service widget on english editing page should be functional
        Then I expect that element /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div[2]/app-screen-widget-field[1]/div/input has the class "w-full"
        When I add "234" to the inputfield /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div[2]/app-screen-widget-field[1]/div/input
        And I add "abcd@mailinator.com" to the inputfield /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div[2]/app-screen-widget-field[2]/div/input
        And I add "96196368810" to the inputfield /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div[2]/app-screen-widget-field[3]/div/input
        And I click on the element <radio>
        And I click on the button /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div[2]/app-lynk/button
        Then I expect that element <elementPath> has the class <elementClass>
        And I expect the url to contain <url>
        And I expect the url to contain "pii=ZW1haWw6YWJjZEBtYWlsaW5hdG9yLmNvbSxwaG9uZTo5NjE5NjM2ODgxMA"
        And I should go back to the previous page
        @chn
        Examples:
            | radio             | url                                                                     | elementPath                                                                                                                                                               | elementClass       |
            | //*[@id="radio0"] | "/order/ncf/english-editing/standard-editing/document/plan?units=234"   | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-plan/div/div/app-phoenix-plan-items/form/div[2]/button | "btn-primary-blue" |
            | //*[@id="radio1"] | "/order/ncf/english-editing/premium-editing/document/plan?units=234"    | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-plan/div/div/app-phoenix-plan-items/form/div[2]/button | "btn-primary-blue" |
            | //*[@id="radio2"] | "/order/ncf/english-editing/scientific-editing/document/plan?units=234" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-plan/div/div/app-phoenix-plan-items/form/div[2]/button | "btn-primary-blue" |

    Scenario Outline: I expect the service widget on english editing page to throw validation in case user enters invalid value in any field
        Then I expect that element /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div[2]/app-screen-widget-field[1]/div/input has the class "w-full"
        When I add <value> to the inputfield <field>
        And I click on the button /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div[2]/app-lynk/button
        Then I expect that element <field> has the class "ng-invalid"
        @chn
        Examples:
            | value            | field                                                                                                                                 |
            | "wrongwordcount" | /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div[2]/app-screen-widget-field[1]/div/input |
            | "wrongemail"     | /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div[2]/app-screen-widget-field[2]/div/input |
            | "wrongphone"     | /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div[2]/app-screen-widget-field[3]/div/input |

    Scenario Outline: I expect FAQs should be functional on english editing page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @eng @pending-kor
        Examples:
            | element                |
            | //app-faq-block//li[1] |

    @sanity
    Scenario Outline: I expect to open service page on forms by clicking on forms CTA on english editing page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @eng
        Examples:
            | path                                                                                                                                        | link                                                           | eosElementPath                                                                                                  | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                                                                      | "/order/ncf/english-editing?source=website"                    | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div[1]/ul/li[2]/div[1]/h3 | "comp-head"        |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[1]/div/app-lynk/a                                               | "/order/ncf/english-editing?source=website"                    | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div[1]/ul/li[2]/div[1]/h3 | "comp-head"        |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[2]/app-lynk/a                                                      | "/order/ncf/english-editing?source=website"                    | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div[1]/ul/li[2]/div[1]/h3 | "comp-head"        |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[1]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website"   | //*[@id="field_file_upload_order"]/div/div[1]/div/div[1]                                                        | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[2]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/english-editing/premium-editing?source=website"    | //*[@id="field_file_upload_order"]/div/div[1]/div/div[1]                                                        | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[3]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/english-editing/scientific-editing?source=website" | //*[@id="field_file_upload_order"]/div/div[1]/div/div[1]                                                        | "btn-primary-blue" |

        @chn
        Examples:
            | path                                                                                                                                        | link                                                           | eosElementPath                                                                                                                                                             | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[8]/app-lynk/a                                                                      | "/order/ncf/english-editing?source=website"                    | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div[1]/ul/li[2]/div[1]/h3                                                            | "comp-head"        |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[1]/div/app-lynk/a                                               | "/order/ncf/english-editing?source=website"                    | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div[1]/ul/li[2]/div[1]/h3                                                            | "comp-head"        |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[2]/app-lynk/a                                                      | "/order/ncf/english-editing?source=website"                    | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div[1]/ul/li[2]/div[1]/h3                                                            | "comp-head"        |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[1]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website"   | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[2]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/english-editing/premium-editing?source=website"    | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[3]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/english-editing/scientific-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |

    @sanity
    Scenario Outline: I expect to open service page on forms on clicking on forms tabs CTA on english editing page
        When I expect that element <elementPath1> has the class "cursor-pointer"
        And  I scroll the page to center and click on the element <elementPath1>
        Then I expect that element <elementPath2> has the link <link>
        And  I scroll the page to center and click on the element <elementPath2>
        And  I expect that element <eosElementPath3> has the class <eosElementClass>
        And  I should go back to the previous page
        @eng
        Examples:
            | elementPath1                                                                                                | elementPath2                                                                       | link                                                           | eosElementPath3                                          | eosElementClass    |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[1] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[3]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website"   | //*[@id="field_file_upload_order"]/div/div[1]/div/div[1] | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[2] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[3]/app-lynk/a | "/order/ncf/english-editing/premium-editing?source=website"    | //*[@id="field_file_upload_order"]/div/div[1]/div/div[1] | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[3] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[3]/app-lynk/a | "/order/ncf/english-editing/scientific-editing?source=website" | //*[@id="field_file_upload_order"]/div/div[1]/div/div[1] | "btn-primary-blue" |

        @chn
        Examples:
            | elementPath1                                                                                                | elementPath2                                                                       | link                                                           | eosElementPath3                                                                                                                                                            | eosElementClass    |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[1] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[3]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website"   | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[2] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[3]/app-lynk/a | "/order/ncf/english-editing/premium-editing?source=website"    | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[3] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[3]/app-lynk/a | "/order/ncf/english-editing/scientific-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |

    @regression
    Scenario Outline: I expect to verify the scientific prices with data description of get quote CTAs of pricing table on english editing page for CHN partner
        When I click on the element //div[3]/app-plan-information-block//app-lynk[contains(@class,'underline-hover')]/a
        When I click on the element <1-3000 word count tab>
        Then I expect that element //app-tat-information-block[1]//div[2]/p matches the text "¥1.90/词"
        And I expect that element //app-tat-information-block[2]//div[2]/p matches the text "￥2.42/词"
        And I expect that element //app-pricing-block-ruby//a  has the attribute data-description containing value Premium SCI Paper Translation-pricing grid-1-1000
        When I click on the element <3001-5000 word count tab>
        Then I expect that element //app-tat-information-block[1]//div[2]/p matches the text "¥1.69/词"
        And I expect that element //app-tat-information-block[2]//div[2]/p matches the text "¥2.16/词"
        And I expect that element //app-pricing-block-ruby//a  has the attribute data-description containing value Premium SCI Paper Translation-pricing grid-1001-3000
        When I click on the element <5001-7000 word count tab>
        Then I expect that element //app-tat-information-block[1]//div[2]/p matches the text "¥1.60/词"
        And I expect that element //app-tat-information-block[2]//div[2]/p matches the text "¥2.04/词"
        And I expect that element //app-pricing-block-ruby//a  has the attribute data-description containing value Premium SCI Paper Translation-pricing grid-3000-5000
        When I click on the element <7001-9000 word count tab>
        Then I expect that element //app-tat-information-block[1]//div[2]/p matches the text "¥1.40/词"
        And I expect that element //app-tat-information-block[2]//div[2]/p matches the text "¥1.78/词"
        And I expect that element //app-pricing-block-ruby//a  has the attribute data-description containing value Premium SCI Paper Translation-pricing grid-5000-7000
        When I click on the element <9000 plus word count tab>
        Then I expect that element //app-tat-information-block[1]//div[2]/p matches the text "￥1.30/词"
        And I expect that element //app-tat-information-block[2]//div[2]/p matches the text "¥1.65/词"
        And I expect that element //app-pricing-block-ruby//a  has the attribute data-description containing value Premium SCI Paper Translation-pricing grid-7000plus
        And I click on the element //lib-dialog//button//span

        @chn
        Examples:
            | 1-3000 word count tab                                                    | 3001-5000 word count tab                                                 | 5001-7000 word count tab                                                 | 7001-9000 word count tab                                                 | 9000 plus word count tab                                                 |
            | //app-pricing-block-ruby//div[contains(@class,'flex shadow')][1]/span[1] | //app-pricing-block-ruby//div[contains(@class,'flex shadow')][1]/span[2] | //app-pricing-block-ruby//div[contains(@class,'flex shadow')][1]/span[3] | //app-pricing-block-ruby//div[contains(@class,'flex shadow')][1]/span[4] | //app-pricing-block-ruby//div[contains(@class,'flex shadow')][1]/span[5] |

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on pricing CTA on english editing page for pes, ses & sce
        When I click on the element <path>
        Then I expect that element /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/h2 has the class "text-center"
        Then I click on the element <tabPath>
        Then I expect that element <formCTAPath> has the link <formCTAPathLink>
        Then I click on the element <formCTAPath>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @chn
        Examples:
            | path                                                                                                                                           | tabPath                                                                                                                  | formCTAPath                                                                                                                        | formCTAPathLink                                                | eosElementPath                                                                                                                                                             | eosElementClass    |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[1]/app-plan-information-block/div/div[1]/div[2]/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[1] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website"   | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[1]/app-plan-information-block/div/div[1]/div[2]/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[2] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website"   | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[1]/app-plan-information-block/div/div[1]/div[2]/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[3] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website"   | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[1]/app-plan-information-block/div/div[1]/div[2]/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[4] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website"   | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[1]/app-plan-information-block/div/div[1]/div[2]/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[5] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div/app-lynk/a    | "/order/ncf/english-editing/standard-editing?source=website"   | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[2]/app-plan-information-block/div/div[1]/div[2]/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[1] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/premium-editing?source=website"    | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[2]/app-plan-information-block/div/div[1]/div[2]/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[2] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/premium-editing?source=website"    | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[2]/app-plan-information-block/div/div[1]/div[2]/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[3] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/premium-editing?source=website"    | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[2]/app-plan-information-block/div/div[1]/div[2]/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[4] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/premium-editing?source=website"    | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[2]/app-plan-information-block/div/div[1]/div[2]/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[5] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div/app-lynk/a    | "/order/ncf/english-editing/premium-editing?source=website"    | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[3]/app-plan-information-block/div/div[1]/div[2]/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[1] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/scientific-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[3]/app-plan-information-block/div/div[1]/div[2]/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[2] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/scientific-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[3]/app-plan-information-block/div/div[1]/div[2]/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[3] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/scientific-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[3]/app-plan-information-block/div/div[1]/div[2]/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[4] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/scientific-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[3]/app-plan-information-block/div/div[1]/div[2]/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[5] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div/app-lynk/a    | "/order/ncf/english-editing/scientific-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
    @chn
    Scenario: I expect to verify the h1 tags on english editing page
        Then I expect the page to contain tagname h1 to be equal to count 1

    Scenario Outline: I expect to verify all links have the attribute with the required value
        Then I expect that element <element> has the attribute <attribute> with value <value>
        @chn
        Examples:
            | element                                                                                                                                     | attribute | value    |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[1]/div/app-lynk/a                                               | rel       | nofollow |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[1]/app-plan-information-block/div/div[3]/div/app-lynk/a | rel       | nofollow |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[2]/app-plan-information-block/div/div[3]/div/app-lynk/a | rel       | nofollow |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[3]/app-plan-information-block/div/div[3]/div/app-lynk/a | rel       | nofollow |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[2]/app-lynk/a                                                      | rel       | nofollow |

    Scenario Outline: I expect to see correct links on each english editing samples
        When I scroll the page to center and click on the element <tab>
        Then I expect that element <element> has the attribute <attribute> with value <value>
        @chn
        Examples:
            | tab                                                                                                         | element                                                                            | attribute | value    |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[1] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[3]/app-lynk/a | rel       | nofollow |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[2] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[3]/app-lynk/a | rel       | nofollow |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[3] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[3]/app-lynk/a | rel       | nofollow |

    @sanity
    Scenario Outline: I expect to verify QnA offer banner on english editing page
        When I click on the element <ViewDetailsLink>
        And I click on the element <getQuoteCTA>
        Then I expect the url to contain <ExpectedUrl>

        @eng @chn
        Examples:
            | ViewDetailsLink                                                     | getQuoteCTA         | ExpectedUrl                 |
            | //app-offer-banner-ruby//app-lynk[contains(@class,'pearl-beta')]//a | //app-modal-jade//a | "order/ncf/english-editing" |

    @regression
    Scenario Outline: I expect to verify QnA offer banner footer links on english editing page
        When I click on the element <FooterLink>
        Then I expect the url to contain <ExpectedUrl>

        @eng @chn
        Examples:
            | FooterLink                                            | ExpectedUrl                                         |
            | //app-offer-banner-ruby//div[2]//div[1]/app-lynk[1]/a | "services/english-editing/premium-editing-plan"     |
            | //app-offer-banner-ruby//div[2]//div[1]/app-lynk[2]/a | "services/english-editing/top-journal-editing-plan" |
            | //app-offer-banner-ruby//div[2]//div[3]/app-lynk[1]/a | "order/ncf/english-editing"                         |

    @sanity
    Scenario Outline: I expect that all secondary-navigation menu links on english editing  page should be verified.
        When I click on the element <Menu>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | Menu                                    | ExpectedUrl                                          |
            | //app-breadcrumb-option-large/div[2]//a | "/services/english-editing/standard-editing-plan"    |
            | //app-breadcrumb-option-large/div[3]//a | "/services/english-editing/premium-editing-plan"     |
            | //app-breadcrumb-option-large/div[4]//a | "/services/english-editing/top-journal-editing-plan" |
            | //app-breadcrumb-option-large/div[5]//a | "/pricing/editing-service"                           |

    @sanity
    Scenario Outline: I expect that all secondary-navigation sub-menu links on english editing  page should be verified.
        When I click on the element <Menu>
        Then I expect that element <sub-menu> has the attribute <data> with value <value>
        And I click on the element <sub-menu>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | Menu                                             | sub-menu                                                       | ExpectedUrl                                    | data             | value                                                   |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[2]//a         | "/services/english-editing/compare-plans"      | data-description | editing overview v2-secondary nav-click-compare plans   |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[4]//a         | "/services/english-editing/re-editing"         | data-description | editing overview v2-secondary nav-click-re-editing      |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[2]/div[2]/app-lynk/a | "/services/other/book-translation-and-editing" | data-description | editing overview v2-secondary nav-click-book TL editing |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[5]//a         | "/services/english-editing/sample"             | data-description | editing overview v2-secondary nav-click-editing sample  |

    @regression
    Scenario Outline: I expect to verify secondary-navigation sub-menu links on english editing  page opening in new tab
        When I click on the element <Menu>
        And I wait for <sub-menu> to be displayed on page
        Then I expect that element <sub-menu> has the attribute <data> with value <value>
        And I click on the element <sub-menu>
        Then I expect the url <ExpectedUrl> is opened in a new window
        @jpn
        Examples:
            | Menu                                             | sub-menu                                                       | ExpectedUrl                                                         | data             | value                                                           |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[3]//a         | "/info/editing_serv/support.html"                                   | data-description | editing overview v2-secondary nav-click-after sales support     |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[6]//a         | "/info/editing_serv/fileformats.html"                               | data-description | editing overview v2-secondary nav-click-file formats            |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[7]//a         | "/info/editing_serv/curation-english-manuscript-writing-posts.html" | data-description | editing overview v2-secondary nav-click-how to write manuscript |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[2]/div[3]/app-lynk/a | "/info/ppc/thesis-editing"                                          | data-description | editing overview v2-secondary nav-click-thesis editing          |

    @sanity
    Scenario Outline: I expect that Get quote CTA on english editing  page should be verified
        When I click on the element <getQuoteCTA>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | getQuoteCTA                  | ExpectedUrl                  |
            | //app-navigator[2]//li[4]//a | "/order/ncf/english-editing" |

    @sanity
    Scenario Outline: The links in the plan section of english editing  service page should be verified
        When I click on the element <CompareplanCTA>
        Then I expect the url to contain <link>

        @jpn
        Examples:
            | CompareplanCTA                                              | link                                                 |
            | //a[contains(@data-description,'standard editing details')] | "/services/english-editing/standard-editing-plan"    |
            | //a[contains(@data-description,'premium editing details')]  | "/services/english-editing/premium-editing-plan"     |
            | //a[contains(@data-description,'journal editing details')]  | "/services/english-editing/top-journal-editing-plan" |

    @sanity
    Scenario Outline: I expect to verify QnA offer banner on english editing  page
        When I click on the element <ViewDetailsLink>
        And I click on the element <getQuoteCTA>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | ViewDetailsLink                                                     | getQuoteCTA         | ExpectedUrl                 |
            | //app-offer-banner-ruby//app-lynk[contains(@class,'pearl-beta')]//a | //app-modal-jade//a | "order/ncf/english-editing" |

    @regression
    Scenario Outline: I expect that featured block cta on english editing  page should be verified
        When I scroll the page to center and click on the element <featuredBlockCTA>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | featuredBlockCTA                   | ExpectedUrl                        |
            | //app-featured-block-diamond[1]//a | "/order/ncf/english-editing"       |
            | //app-featured-block-diamond[2]//a | "/services/english-editing/sample" |
            | //app-featured-block-diamond[3]//a | "/order/ncf/english-editing"       |
            | //app-featured-block-diamond[4]//a | "/order/ncf/english-editing"       |

    @sanity
    Scenario Outline: I expect that all subject-area and sample page redirections on english editing  page should be verified.
        When I click on the element <SaPage>
        Then I expect the url to contain <SaPagelink>
        And I should go back to the previous page
        And I click on the element <SamplePage>
        Then I expect the url to contain <SamplePagelink>

        @jpn
        Examples:
            | SaPage                                                 | SaPagelink                                            | SamplePage                                             | SamplePagelink                     |
            | //app-featured-card-pearl//div[1]/div[2]/app-lynk[1]/a | "/subject-expertise/medical-sciences"                 | //app-featured-card-pearl//div[1]/div[2]/app-lynk[2]/a | "/services/english-editing/sample" |
            | //app-featured-card-pearl//div[2]/div[2]/app-lynk[1]/a | "/subject-expertise/life-sciences"                    | //app-featured-card-pearl//div[2]/div[2]/app-lynk[2]/a | "/services/english-editing/sample" |
            | //app-featured-card-pearl//div[3]/div[2]/app-lynk[1]/a | "/subject-expertise/physical-science-and-engineering" | //app-featured-card-pearl//div[3]/div[2]/app-lynk[2]/a | "/services/english-editing/sample" |
            | //app-featured-card-pearl//div[4]/div[2]/app-lynk[1]/a | "/subject-expertise/humanities-and-social-sciences"   | //app-featured-card-pearl//div[4]/div[2]/app-lynk[2]/a | "/services/english-editing/sample" |
            | //app-featured-card-pearl//div[5]/div[2]/app-lynk[1]/a | "/subject-expertise/business-and-economics"           | //app-featured-card-pearl//div[5]/div[2]/app-lynk[2]/a | "/services/english-editing/sample" |

    @regression @jpn
    Scenario Outline: I expect that all links on testimonials on english-editing  page should be verified
        When I scroll to center of element "//app-carousel-cards//li[1]//a"
        When I click on the element //app-carousel-cards//li[1]//a
        Then I expect //app-modal-pearl//div[contains(@style,'background-image')] should be displayed on page
        When I click on the button //lib-dialog//button
        And  I click on the element //app-carousel-cards//div[contains(@style,'arrow-right')]
        When I wait for //app-carousel-cards//li//div[contains(@style,'editing-main-clients-0001.png')] to be displayed on page
        And  I click on the element //app-carousel-cards//li[2]//a
        Then I expect //app-modal-pearl//div[contains(@style,'background-image')] should be displayed on page
        When I click on the button //lib-dialog//button
        And  I click on the element //app-carousel-cards//div[contains(@style,'arrow-right')]
        When I wait for //app-carousel-cards//li//div[contains(@style,'editing-main-clients-0003.png')] to be displayed on page
        And  I click on the element //app-carousel-cards//div[contains(@style,'arrow-right')]
        When I wait for //app-carousel-cards//li//div[contains(@style,'standard-editing-client-0009.png')] to be displayed on page
        And  I click on the element //app-carousel-cards//li[4]//a
        Then I expect //app-modal-pearl//div[contains(@style,'background-image')] should be displayed on page
        When I click on the button //lib-dialog//button
        And  I click on the element //app-carousel-cards//div[contains(@style,'arrow-right')]
        When I wait for //app-carousel-cards//li//div[contains(@style,'standard-editing-client-0008.png')] to be displayed on page
        And  I click on the element //app-carousel-cards//li[5]//a
        Then I expect //app-modal-pearl//div[contains(@style,'background-image')] should be displayed on page
        When I click on the button //lib-dialog//button

    @regression
    Scenario Outline: I expect that links at our editor profile section on english-editing  page should be verified
        When I scroll to center of element <editorProfileSection>
        When I click on the element //app-carousel-cards-jasper//div[3]/app-lynk/a
        Then I expect the url "/subject/editors" is opened in a new window
        When I click on the element <Card1>
        Then I expect //app-modal-pearl/section/div should be displayed on page
        When I click on the button //lib-dialog//button
        When I click on the element <Card2>
        Then I expect //app-modal-pearl/section/div should be displayed on page
        When I click on the button //lib-dialog//button
        When I click on the element <Card3>
        Then I expect //app-modal-pearl/section/div should be displayed on page
        When I click on the button //lib-dialog//button
        When I click on the element //app-carousel-cards-jasper//app-carousel//div[contains(@style,'arrow-right')]
        When I click on the element <Card4>
        Then I expect //app-modal-pearl/section/div should be displayed on page
        When I click on the button //lib-dialog//button
        When I click on the element //app-carousel-cards-jasper//app-carousel//div[contains(@style,'arrow-right')]
        When I click on the element <Card5>
        Then I expect //app-modal-pearl/section/div should be displayed on page
        When I click on the button //lib-dialog//button
        When I click on the element //app-carousel-cards-jasper//app-carousel//div[contains(@style,'arrow-right')]
        When I click on the element <Card6>
        Then I expect //app-modal-pearl/section/div should be displayed on page
        When I click on the button //lib-dialog//button
        And I should go back to the previous page

        @jpn
        Examples:
            | editorProfileSection                                       | Card1                                                            | Card2                                                            | Card3                                                            | Card4                                                            | Card5                                                            | Card6                                                            |
            | "//app-carousel-cards-jasper//section[@class='container']" | //app-carousel-cards-jasper//app-carousel//li[1]//div/p//a       | //app-carousel-cards-jasper//app-carousel//li[2]//div/p//a       | //app-carousel-cards-jasper//app-carousel//li[3]//div/p//a       | //app-carousel-cards-jasper//app-carousel//li[4]//div/p//a       | //app-carousel-cards-jasper//app-carousel//li[5]//div/p//a       | //app-carousel-cards-jasper//app-carousel//li[6]//div/p//a       |
            | "//app-carousel-cards-jasper//section[@class='container']" | //app-carousel-cards-jasper//app-carousel//li[1]//div/app-lynk/a | //app-carousel-cards-jasper//app-carousel//li[2]//div/app-lynk/a | //app-carousel-cards-jasper//app-carousel//li[3]//div/app-lynk/a | //app-carousel-cards-jasper//app-carousel//li[4]//div/app-lynk/a | //app-carousel-cards-jasper//app-carousel//li[5]//div/app-lynk/a | //app-carousel-cards-jasper//app-carousel//li[6]//div/app-lynk/a |

    @sanity
    Scenario Outline: I expect all links on custom quote block on english editing  page should be verified
        When I click on the element <CustomQuoteCTA>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | CustomQuoteCTA                                          | ExpectedUrl                                    |
            | //a[contains(@data-description,'book tl plus editing')] | "/services/other/book-translation-and-editing" |
            | //a[contains(@data-description,'website creation')]     | "/info/rakuraku-web/"                          |

    @regression
    Scenario Outline: I expect FAQs should be functional on english editing  page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        When I click on the element //app-faq-block//app-lynk[contains (@class,'btn btn-primary')]//a
        Then I expect the url to contain "/help"
        @jpn
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[3] |

    @regression
    Scenario Outline: I expect to verify FAQ answer link on premium editing  page
        When I click on the element <FAQ 4th question>
        And I click on the element <View formatting page link>
        Then I expect the url <ExpectedUrl> is opened in a new window
        @jpn
        Examples:
            | FAQ 4th question       | View formatting page link                                   | ExpectedUrl                          |
            | //app-faq-block//li[4] | //app-faq-block//app-lynk[contains (@class,'underline')]//a | "/info/editing_serv/formatting.html" |

    @regression
    Scenario Outline: I expect the carousel-cards-lapis should be verified on english editing  page
        When I scroll to center of element <carouselCardsLapis>
        Then I expect //app-carousel-cards-lapis//li[1]//img should be displayed on page
        When I scroll the page to center and click on the element //app-carousel-cards-lapis//div[contains(@style,'arrow-right')]
        Then I expect //app-carousel-cards-lapis//li[2]//img should be displayed on page
        When I scroll the page to center and click on the element //app-carousel-cards-lapis//div[contains(@style,'arrow-right')]
        When I scroll the page to center and click on the element //app-carousel-cards-lapis//div[contains(@style,'arrow-right')]
        Then I expect //app-carousel-cards-lapis//li[3]//img should be displayed on page

        @jpn
        Examples:
            | carouselCardsLapis                                              |
            | "//app-carousel-cards-lapis//div[contains(@class,'container')]" |

    @regression
    Scenario Outline: I expect all links for contact details should be verified against expectation on english editing  page
        Then I expect that element <element> has the link <link>
        And I should go back to the previous page
        Examples:
            | element                           | link                             |
            | //app-feature-lapis[1]/app-lynk/a | "tel:0120502987"                 |
            | //app-feature-lapis[3]/app-lynk/a | "mailto:submissions@editage.com" |

    @regression
    Scenario Outline: I expect that the data description of all links/CTA's should ve verified on english editing  page
        Then I expect that element <element> has the attribute <data> with value <value>

        @jpn
        Examples:
            | element                                                           | data             | value                                                                     |
            | //app-plan-information-block[1]//a                                | data-description | editing overview v2-plan selection-top journal editing details-click      |
            | //app-plan-information-block[2]//a                                | data-description | editing overview v2-plan selection-premium editing details-click          |
            | //app-plan-information-block[3]//a                                | data-description | editing overview v2-plan selection-standard editing details-click         |
            | //app-featured-block-diamond[1]//a                                | data-description | editing overview v2-content-cta band sample-click-get quote               |
            | //app-featured-card-pearl//div[1]/div[2]/app-lynk[1]/a            | data-description | editing overview v2-subject area-content-click-medical sciences           |
            | //app-featured-card-pearl//div[1]/div[2]/app-lynk[2]/a            | data-description | editing overview v2-subject area-content-click-medical sciences sample    |
            | //app-featured-card-pearl//div[2]/div[2]/app-lynk[1]/a            | data-description | editing overview v2-subject area-content-click-life sciences              |
            | //app-featured-card-pearl//div[2]/div[2]/app-lynk[2]/a            | data-description | editing overview v2-subject area-content-click-life sciences sample       |
            | //app-featured-card-pearl//div[3]/div[2]/app-lynk[1]/a            | data-description | editing overview v2-subject area-content-click-phy engg                   |
            | //app-featured-card-pearl//div[3]/div[2]/app-lynk[2]/a            | data-description | editing overview v2-subject area-content-click-phy engg sample            |
            | //app-featured-card-pearl//div[4]/div[2]/app-lynk[1]/a            | data-description | editing overview v2-subject area-content-click-social sciences            |
            | //app-featured-card-pearl//div[4]/div[2]/app-lynk[2]/a            | data-description | editing overview v2-subject area-content-click-social sciences sample     |
            | //app-featured-card-pearl//div[5]/div[2]/app-lynk[1]/a            | data-description | editing overview v2-subject area-content-click-business economics         |
            | //app-featured-card-pearl//div[5]/div[2]/app-lynk[2]/a            | data-description | editing overview v2-subject area-content-click-business economics sample  |
            | //app-featured-block-diamond[2]//a                                | data-description | editing overview v2-content-cta band sample-click-view sample             |
            | //app-featured-block-diamond[3]//a                                | data-description | editing overview v2-content-cta band-click-get quote2                     |
            | //app-featured-block-diamond[4]//a                                | data-description | editing overview v2-content-cta band sample-click-get quote3              |
            | //app-custom-quote-block-ruby//div[1]/div[3]//app-lynk/a          | data-description | editing overview v2-content-custom quote block-click-book tl plus editing |
            | //app-custom-quote-block-ruby//div[2]/div[3]//app-lynk/a          | data-description | editing overview v2-content-custom quote block-click-website creation     |
            | //app-faq-block//app-lynk[contains (@class,'btn btn-primary')]//a | data-description | editing overview v2-faq-click-view more                                   |
            | //app-carousel-cards-jasper//app-carousel//li[1]//div/app-lynk/a  | data-description | editing overview v2-editor profile-click-view profile av                  |
            | //app-carousel-cards-jasper//app-carousel//li[2]//div/app-lynk/a  | data-description | editing overview v2-editor profile-click-view profile mb                  |
            | //app-carousel-cards-jasper//app-carousel//li[3]//div/app-lynk/a  | data-description | editing overview v2-editor profile-click-view profile mm                  |
            | //app-carousel-cards-jasper//app-carousel//li[4]//div/app-lynk/a  | data-description | editing overview v2-editor profile-click-view profile rw                  |
            | //app-carousel-cards-jasper//app-carousel//li[5]//div/app-lynk/a  | data-description | editing overview v2-editor profile-click-view profile ms                  |
            | //app-carousel-cards-jasper//app-carousel//li[6]//div/app-lynk/a  | data-description | editing overview v2-editor profile-click-view profile kd                  |
            | //app-carousel-cards-jasper//app-carousel//li[1]//div/p//a        | data-description | editing overview v2-editor profile-click-view more av                     |
            | //app-carousel-cards-jasper//app-carousel//li[2]//div/p//a        | data-description | editing overview v2-editor profile-click-view more mb                     |
            | //app-carousel-cards-jasper//app-carousel//li[3]//div/p//a        | data-description | editing overview v2-editor profile-click-view more mm                     |
            | //app-carousel-cards-jasper//app-carousel//li[4]//div/p//a        | data-description | editing overview v2-editor profile-click-view more rw                     |
            | //app-carousel-cards-jasper//app-carousel//li[5]//div/p//a        | data-description | editing overview v2-editor profile-click-view more ms                     |
            | //app-carousel-cards-jasper//app-carousel//li[6]//div/p//a        | data-description | editing overview v2-editor profile-click-view more kd                     |
            | //app-breadcrumb-option-large/div[1]//a                           | data-description | editing overview v2-sec nav-ParentEnglishEditing-null-click-Sec Nav-null  |
            | //app-breadcrumb-option-large/div[2]//a                           | data-description | editing overview v2-sec nav-AdvancedEditing-null-click-Sec Nav-null       |
            | //app-breadcrumb-option-large/div[3]//a                           | data-description | editing overview v2-sec nav-PremiumEditing-null-click-Sec Nav-null        |
            | //app-breadcrumb-option-large/div[4]//a                           | data-description | editing overview v2-sec nav-Scientific-null-click-Sec Nav-null            |
            | //app-breadcrumb-option-large/div[5]//a                           | data-description | editing overview v2-secondary nav-click-editing pricing                   |

    @regression
    Scenario Outline: I expect all links for contact details should be verified on english editing  page
        Then I expect that element <element> has the link <link>
        And I should go back to the previous page

        @jpn
        Examples:
            | element                           | link                             |
            | //app-feature-lapis[1]/app-lynk/a | "tel:0120502987"                 |
            | //app-feature-lapis[3]/app-lynk/a | "mailto:submissions@editage.com" |