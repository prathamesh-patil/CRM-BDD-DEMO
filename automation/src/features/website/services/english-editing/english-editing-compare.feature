Feature: English editing compare page

    Background: I am on english editing compare page
        Given I open the website "/services/english-editing/compare-plans"

    @sanity
    Scenario Outline: I expect that all links on english editing compare page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @eng @chn @pending-kor
        Examples:
            | element                                                      | link                                                 |
            | //*[@id="serviceOptions"]/app-options-ruby/div[1]/app-lynk/a | "/services/english-editing"                          |
            | //*[@id="serviceOptions"]/app-options-ruby/div[2]/app-lynk/a | "/services/english-editing/standard-editing-plan"    |
            | //*[@id="serviceOptions"]/app-options-ruby/div[3]/app-lynk/a | "/services/english-editing/premium-editing-plan"     |
            | //*[@id="serviceOptions"]/app-options-ruby/div[4]/app-lynk/a | "/services/english-editing/top-journal-editing-plan" |

        @chn
        Examples:
            | element                                                                                                  | link                                                           |
            | //app-comparison-block//div[contains(@class,'relative')][1]//app-lynk[contains(@class,'btn-primary')]//a | "/order/ncf/english-editing/standard-editing?source=website"   |
            | //app-comparison-block//div[contains(@class,'relative')][2]//app-lynk[contains(@class,'btn-primary')]//a | "/order/ncf/english-editing/premium-editing?source=website"    |
            | //app-comparison-block//div[contains(@class,'relative')][3]//app-lynk[contains(@class,'btn-primary')]//a | "/order/ncf/english-editing/scientific-editing?source=website" |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/app-lynk/a                                             | "/services/english-editing/compare-plans"                      |

        @eng
        Examples:
            | element                                                      | link                                      |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/app-lynk/a | "/services/english-editing/compare-plans" |

        @pending-kor
        Examples:
            | element                                                                                 | link                                                           |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                  | "/order/ncf/english-editing?source=website"                    |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[21]/div[2]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website"   |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[21]/div[3]/app-lynk/a | "/order/ncf/english-editing/premium-editing?source=website"    |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[21]/div[4]/app-lynk/a | "/order/ncf/english-editing/scientific-editing?source=website" |

    Scenario Outline: I expect to see correct pricing for all editing compare page
        Then I expect that element <element> matches the text <price>

        @jpn
        Examples:
            | element                                                                                                                       | price      |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[4]/app-compare-block-information[1]/div/div/span[1]         | "5円～"    |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[4]/app-compare-block-information[2]/div/div/span[1]         | "11円～"   |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[4]/app-compare-block-information[3]/div/div[3]/span[2]      | "24.9円～" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[4]/app-compare-block-information[3]/div/div[3]/span[1]/span | "30円"     |

        @chn
        Examples:
            | element                                                                                                                  | price   |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[4]/app-compare-block-information[1]/div/div/span[1]    | "￥0.32" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[4]/app-compare-block-information[2]/div/div/span[1]    | "￥0.56" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[4]/app-compare-block-information[3]/div/div[3]/span[1] | "￥1.4"  |

        @pending-kor
        Examples:
            | element                                                                                                                       | price  |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[4]/app-compare-block-information[1]/div/div/span[1]         | "5円"  |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[4]/app-compare-block-information[2]/div/div/span[1]         | "11円" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[4]/app-compare-block-information[3]/div/div[3]/span[2]      | "27円" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[4]/app-compare-block-information[3]/div/div[3]/span[1]/span | "33円" |

    @sanity
    Scenario Outline: I expect to open service page on forms on clicking on forms CTA on compare editing page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @eng
        Examples:
            | path                                                                                                     | link                                                           | eosElementPath                                                                                                  | eosElementClass        |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                                   | "/order/ncf/english-editing?source=website"                    | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div[1]/ul/li[2]/div[1]/h3 | "comp-head"            |
            | //app-comparison-block//div[contains(@class,'relative')][1]//app-lynk[contains(@class,'btn-primary')]//a | "/order/ncf/english-editing/standard-editing?source=website"   | //a[@data-description="ncf-screen 3-36-upload document-click-I dont have document ready-null"]                  | "text-underline-hover" |
            | //app-comparison-block//div[contains(@class,'relative')][2]//app-lynk[contains(@class,'btn-primary')]//a | "/order/ncf/english-editing/premium-editing?source=website"    | //a[@data-description="ncf-screen 3-1-upload document-click-I dont have document ready-null"]                   | "text-underline-hover" |
            | //app-comparison-block//div[contains(@class,'relative')][3]//app-lynk[contains(@class,'btn-primary')]//a | "/order/ncf/english-editing/scientific-editing?source=website" | //a[@data-description="ncf-screen 3-102-upload document-click-I dont have document ready-null"]                 | "text-underline-hover" |

        @chn
        Examples:
            | path                                                                                                     | link                                                           | eosElementPath                                                                                                                                                             | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[8]/app-lynk/a                                   | "/order/ncf/english-editing?source=website"                    | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div[1]/ul/li[2]/div[1]/h3                                                            | "comp-head"        |
            | //app-comparison-block//div[contains(@class,'relative')][1]//app-lynk[contains(@class,'btn-primary')]//a | "/order/ncf/english-editing/standard-editing?source=website"   | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | //app-comparison-block//div[contains(@class,'relative')][2]//app-lynk[contains(@class,'btn-primary')]//a | "/order/ncf/english-editing/premium-editing?source=website"    | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | //app-comparison-block//div[contains(@class,'relative')][3]//app-lynk[contains(@class,'btn-primary')]//a | "/order/ncf/english-editing/scientific-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
        @jpn
        Examples:
            | path                                                                                                     | link                                                           | eosElementPath                                                                                                                                                             | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                                   | "/order/ncf/english-editing?source=website"                    | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div[1]/ul/li[2]/div[1]/h3                                                            | "comp-head"        |
            | //app-comparison-block//div[contains(@class,'relative')][1]//app-lynk[contains(@class,'btn-primary')]//a | "/order/ncf/english-editing/standard-editing?source=website"   | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | //app-comparison-block//div[contains(@class,'relative')][2]//app-lynk[contains(@class,'btn-primary')]//a | "/order/ncf/english-editing/premium-editing?source=website"    | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | //app-comparison-block//div[contains(@class,'relative')][3]//app-lynk[contains(@class,'btn-primary')]//a | "/order/ncf/english-editing/scientific-editing?source=website" | //ng-component//h1                                                                                                                                                         | "main-title"       |

    @regression
    Scenario Outline: I expect to verify the scientific prices with data description of get quote CTAs of pricing table on english editing compare page for CHN partner
        When I click on the element //app-compare-block-information[3]//app-lynk[contains(@class,'underline-hover')]/a
        When I click on the element <1-3000 word count tab>
        Then I expect that element //app-tat-information-block[1]//div[2]/p matches the text "¥1.90/词"
        And I expect that element //app-tat-information-block[2]//div[2]/p matches the text "¥2.42/词"
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
        Then I expect that element //app-tat-information-block[1]//div[2]/p matches the text "¥1.30/词"
        And I expect that element //app-tat-information-block[2]//div[2]/p matches the text "¥1.65/词"
        And I expect that element //app-pricing-block-ruby//a  has the attribute data-description containing value Premium SCI Paper Translation-pricing grid-7000plus
        And I click on the element //lib-dialog//button//span

        @chn
        Examples:
            | 1-3000 word count tab                                                    | 3001-5000 word count tab                                                 | 5001-7000 word count tab                                                 | 7001-9000 word count tab                                                 | 9000 plus word count tab                                                 |
            | //app-pricing-block-ruby//div[contains(@class,'flex shadow')][1]/span[1] | //app-pricing-block-ruby//div[contains(@class,'flex shadow')][1]/span[2] | //app-pricing-block-ruby//div[contains(@class,'flex shadow')][1]/span[3] | //app-pricing-block-ruby//div[contains(@class,'flex shadow')][1]/span[4] | //app-pricing-block-ruby//div[contains(@class,'flex shadow')][1]/span[5] |

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on pricing CTA on compare editing page pes, ses & sce
        When I click on the element <path>
        Then I expect that element /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/h2 has the class "text-center"
        Then I click on the element <tabPath>
        Then I expect that element <formCTAPath> has the link <formCTAPathLink>
        Then I click on the element <formCTAPath>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @jpn
        Examples:
            | path                                                                                                                 | tabPath                                                                                                                  | formCTAPath                                                                                                                        | formCTAPathLink                                              | eosElementPath                                                                                                                                                             | eosElementClass    |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[1]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[1] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[1]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[2] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[1]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[3] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[1]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[4] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[1]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[5] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div/app-lynk/a    | "/order/ncf/english-editing/standard-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[2]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[1] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/premium-editing?source=website"  | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[2]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[2] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/premium-editing?source=website"  | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[2]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[3] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/premium-editing?source=website"  | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[2]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[4] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/premium-editing?source=website"  | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[2]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[5] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div/app-lynk/a    | "/order/ncf/english-editing/premium-editing?source=website"  | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |

        @chn
        Examples:
            | path                                                                                                                 | tabPath                                                                                                                  | formCTAPath                                                                                                                        | formCTAPathLink                                                | eosElementPath                                                                                                                                                             | eosElementClass    |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[1]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[1] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website"   | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[1]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[2] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website"   | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[1]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[3] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website"   | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[1]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[4] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website"   | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[1]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[5] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div/app-lynk/a    | "/order/ncf/english-editing/standard-editing?source=website"   | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[2]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[1] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/premium-editing?source=website"    | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[2]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[2] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/premium-editing?source=website"    | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[2]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[3] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/premium-editing?source=website"    | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[2]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[4] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/premium-editing?source=website"    | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[2]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[5] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div/app-lynk/a    | "/order/ncf/english-editing/premium-editing?source=website"    | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[3]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[1] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/scientific-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[3]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[2] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/scientific-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[3]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[3] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/scientific-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[3]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[4] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/scientific-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[3]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[1]/span[5] | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[3]/div/app-lynk/a    | "/order/ncf/english-editing/scientific-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on pricing CTA on compare editing page pes plus
        When I click on the element <path>
        Then I expect that element <formCTAPath> has the link <formCTAPathLink>
        Then I click on the element <formCTAPath>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @jpn
        Examples:
            | path                                                                                                                 | formCTAPath                                                                                                                        | formCTAPathLink                                                | eosElementPath     | eosElementClass |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[5]/app-compare-block-information[3]/div/app-lynk/a | /html/body/lib-dialog/div/div/app-modal-component-ruby/div/div/app-pricing-block-ruby/section/div/div/div/div[2]/div[2]/app-lynk/a | "/order/ncf/english-editing/scientific-editing?source=website" | //ng-component//h1 | "main-title"    |


    @chn
    Scenario: I expect to verify the h1 tags on compare editing page
        Then I expect the page to contain tagname h1 to be equal to count 1