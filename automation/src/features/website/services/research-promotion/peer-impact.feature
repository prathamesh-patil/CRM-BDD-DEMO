Feature: Peer impact service

    Background: I am on peer impact service
        Given I open the website "/services/research-promotion/peer-impact"

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms CTA on peer impact page
        When I click on the element <elementPath1>
        And I click on the element <elementPath2>
        And I click on the element <elementPath3>
        And I expect that element <buyNowButton> has the link <link>
        And I click on the element <buyNowButton>
        And I expect that element <eosElementPath1> has the class <eosElementClass>
        And I expect that element <eosElementPath2> matches the text <eosContent1>
        And I expect that element <eosElementPath3> matches the text <eosContent2>
        And I expect that element <eosElementPath4> matches the text <eosContent3>
        And I should go back to the previous page
        @eng
        Examples:
            | elementPath1                                                                                                                 | elementPath2                                                                                                                 | elementPath3                                                                                                                 | buyNowButton                                                                    | link                                                                                                                                                                                            | eosElementPath1                                                                                                                          | eosElementClass | eosElementPath2                                                                                                                                                    | eosContent1                  | eosElementPath3                                                                                                                                                    | eosContent2                   | eosElementPath4                                                                                                                                                    | eosContent3    |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[1]/div/div[2]/app-lynk/a | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[2]/div/div[2]/app-lynk/a | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[3]/div/div[2]/app-lynk/a | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[3]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?add-ons=shareable-research-summary,research-impact-infographic,smart-conference-poster-creation&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "Shareable research summary" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[2]/div[1]/span | "Research impact infographic" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[3]/div[1]/span | "Smart poster" |

        @chn
        Examples:
            | elementPath1                                                                                                                 | elementPath2                                                                                                                 | elementPath3                                                                                                                 | buyNowButton                                                                    | link                                                                                                                                                                                            | eosElementPath1                                                                                                                          | eosElementClass | eosElementPath2                                                                                                                                                    | eosContent1          | eosElementPath3                                                                                                                                                    | eosContent2          | eosElementPath4                                                                                                                                                    | eosContent3      |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[1]/div/div[2]/app-lynk/a | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[2]/div/div[2]/app-lynk/a | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[3]/div/div[2]/app-lynk/a | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[3]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?add-ons=shareable-research-summary,research-impact-infographic,smart-conference-poster-creation&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "利于传播的论文摘要" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[2]/div[1]/span | "提升影响力的信息图" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[3]/div[1]/span | "有设计感的海报" |

        @jpn
        Examples:
            | elementPath1                                                                                                                 | elementPath2                                                                                                                 | elementPath3                                                                                                                 | buyNowButton                                                                    | link                                                                                                                                                                                            | eosElementPath1                                                                                                                          | eosElementClass | eosElementPath2                                                                                                                                                    | eosContent1                        | eosElementPath3                                                                                                                                                    | eosContent2            | eosElementPath4                                                                                                                                                    | eosContent3        |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[1]/div/div[2]/app-lynk/a | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[2]/div/div[2]/app-lynk/a | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[3]/div/div[2]/app-lynk/a | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[3]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?add-ons=shareable-research-summary,research-impact-infographic,smart-conference-poster-creation&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "リサーチ・サマリー・ライティング" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[2]/div[1]/span | "インフォグラフィック" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[3]/div[1]/span | "スマートポスター" |

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms tabs CTA on peer impact page
        When I click on the element <elementPath1>
        Then I expect that element <elementPath2> has the link <link>
        And I click on the element <elementPath2>
        And I expect that element <eosElementPath1> has the class <eosElementClass>
        And I expect that element <eosElementPath2> matches the text <eosContent1>
        And I should go back to the previous page
        @eng
        Examples:
            | elementPath1                                                                                                | elementPath2                                                                                                           | link                                                                                                                                                         | eosElementPath1                                                                                                                          | eosElementClass | eosElementPath2                                                                                                                                                    | eosContent1                   |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[1] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&add-ons=shareable-research-summary&source=website"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "Shareable research summary"  |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[2] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&add-ons=research-impact-infographic&source=website"      | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "Research impact infographic" |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[3] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&add-ons=smart-conference-poster-creation&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "Smart poster"                |

        @chn
        Examples:
            | elementPath1                                                                                                | elementPath2                                                                                                           | link                                                                                                                                                         | eosElementPath1                                                                                                                          | eosElementClass | eosElementPath2                                                                                                                                                    | eosContent1          |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[1] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&add-ons=shareable-research-summary&source=website"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "利于传播的论文摘要" |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[2] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&add-ons=research-impact-infographic&source=website"      | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "提升影响力的信息图" |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[3] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&add-ons=smart-conference-poster-creation&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "有设计感的海报"     |

        @jpn
        Examples:
            | elementPath1                                                                                                | elementPath2                                                                                                           | link                                                                                                                                                         | eosElementPath1                                                                                                                          | eosElementClass | eosElementPath2                                                                                                                                                    | eosContent1                        |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[1] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&add-ons=shareable-research-summary&source=website"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "リサーチ・サマリー・ライティング" |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[2] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&add-ons=research-impact-infographic&source=website"      | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "インフォグラフィック"             |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[3] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&add-ons=smart-conference-poster-creation&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "スマートポスター"                 |

    @sanity
    Scenario Outline: I expect that all links on peer impact page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @eng @chn @jpn @pending-kor
        Examples:
            | element                                                                         | link                                                                                                                |
            | //*[@id="serviceOptions"]/app-options-ruby/div[1]/app-lynk/a                    | "/services/research-promotion"                                                                                      |
            | //*[@id="serviceOptions"]/app-options-ruby/div[2]/app-lynk/a                    | "/services/research-promotion/peer-impact"                                                                          |
            | //*[@id="serviceOptions"]/app-options-ruby/div[3]/app-lynk/a                    | "/services/research-promotion/media-impact"                                                                         |
            | //*[@id="serviceOptions"]/app-options-ruby/div[4]/app-lynk/a                    | "/services/research-promotion/funder-impact"                                                                        |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[3]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&source=website" |

        @eng
        Examples:
            | element                                                                | link                                                                                                                |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&source=website" |

        @chn
        Examples:
            | element                                                                | link                                                                                                                |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[8]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&source=website" |

        @jpn @pending-kor
        Examples:
            | element                                                                | link                                                                                                                |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&source=website" |

    Scenario Outline: I expect to see correct pricing for peer impact service
        Then I expect that element <element> matches the text <price>
        @eng
        Examples:
            | element                                                                                                             | price  |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[1]/div/div[2]/p | "$300" |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[2]/div/div[2]/p | "$600" |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[3]/div/div[2]/p | "$550" |
        @chn
        Examples:
            | element                                                                                                             | price    |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[1]/div/div[2]/p | "¥2,100" |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[2]/div/div[2]/p | "¥4,200" |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[3]/div/div[2]/p | "¥3,900" |

        @jpn
        Examples:
            | element                                                                                                             | price     |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[1]/div/div[2]/p | "¥32,500" |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[2]/div/div[2]/p | "¥65,000" |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[3]/div/div[2]/p | "¥59,709" |

    Scenario Outline: I expect FAQs should be functional on peer impact page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @eng @chn @jpn @pending-kor
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[2] |

    @chn
    Scenario: I expect to verify the h1 tags on peer impact page
        Then I expect the page to contain tagname h1 to be equal to count 1

    Scenario Outline: I expect to verify all links have the attribute with the required value
        Then I expect that element <element> has the attribute <attribute> with value <value>
        @chn
        Examples:
            | element                                                                         | attribute | value    |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[3]/app-lynk/a | rel       | nofollow |

    Scenario Outline: I expect to verify all links have the attribute with the required value on peer impact page
        When I click on the element <elementPath1>
        Then I expect that element <elementPath2> has the attribute <attribute> with value <value>
        @chn
        Examples:
            | elementPath1                                                                                                | elementPath2                                                                                                           | attribute | value    |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[1] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | rel       | nofollow |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[2] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | rel       | nofollow |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[3] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | rel       | nofollow |