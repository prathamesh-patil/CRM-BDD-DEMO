Feature: Media impact service

    Background: I am on media impact service
        Given I open the website "/services/research-promotion/media-impact"

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms CTA on media impact page
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
            | elementPath1                                                                                                                 | elementPath2                                                                                                                 | elementPath3                                                                                                                 | buyNowButton                                                                    | link                                                                                                                                                                             | eosElementPath1                                                                                                                          | eosElementClass | eosElementPath2                                                                                                                                                    | eosContent1  | eosElementPath3                                                                                                                                                    | eosContent2                 | eosElementPath4                                                                                                                                                    | eosContent3                |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[1]/div/div[2]/app-lynk/a | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[2]/div/div[2]/app-lynk/a | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[3]/div/div[2]/app-lynk/a | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[3]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?add-ons=research-news-stories,global-media-distribution,media-impact-infographic&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "Press Note" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[2]/div[1]/span | "Global Media Distribution" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[3]/div[1]/span | "Media impact infographic" |

        @chn
        Examples:
            | elementPath1                                                                                                                 | elementPath2                                                                                                                 | elementPath3                                                                                                                 | buyNowButton                                                                    | link                                                                                                                                                                             | eosElementPath1                                                                                                                          | eosElementClass | eosElementPath2                                                                                                                                                    | eosContent1 | eosElementPath3                                                                                                                                                    | eosContent2    | eosElementPath4                                                                                                                                                    | eosContent3        |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[1]/div/div[2]/app-lynk/a | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[2]/div/div[2]/app-lynk/a | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[3]/div/div[2]/app-lynk/a | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[3]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?add-ons=research-news-stories,global-media-distribution,media-impact-infographic&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "新闻稿"    | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[2]/div[1]/span | "全球媒体投放" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[3]/div[1]/span | "适配媒体的信息图" |

        @jpn
        Examples:
            | elementPath1                                                                                                                 | elementPath2                                                                                                                 | elementPath3                                                                                                                 | buyNowButton                                                                    | link                                                                                                                                                                             | eosElementPath1                                                                                                                          | eosElementClass | eosElementPath2                                                                                                                                                    | eosContent1                    | eosElementPath3                                                                                                                                                    | eosContent2            | eosElementPath4                                                                                                                                                    | eosContent3                          |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[1]/div/div[2]/app-lynk/a | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[2]/div/div[2]/app-lynk/a | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[3]/div/div[2]/app-lynk/a | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[3]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?add-ons=research-news-stories,global-media-distribution,media-impact-infographic&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "プレスリリース・ライティング" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[2]/div[1]/span | "海外メディア配信代行" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[3]/div[1]/span | "メディア配信用インフォグラフィック" |

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms tabs CTA on media impact page
        When I click on the element <elementPath1>
        Then I expect that element <elementPath2> has the link <link>
        And I click on the element <elementPath2>
        And I expect that element <eosElementPath1> has the class <eosElementClass>
        And I expect that element <eosElementPath2> matches the text <eosContent1>
        And I should go back to the previous page
        @eng
        Examples:
            | elementPath1                                                                                                | elementPath2                                                                                                           | link                                                                                                                                                  | eosElementPath1                                                                                                                          | eosElementClass | eosElementPath2                                                                                                                                                    | eosContent1                 |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[1] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&add-ons=research-news-stories&source=website"     | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "Press Note"                |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[2] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&add-ons=global-media-distribution&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "Global Media Distribution" |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[3] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&add-ons=media-impact-infographic&source=website"  | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "Media impact infographic"  |

        @chn
        Examples:
            | elementPath1                                                                                                | elementPath2                                                                                                           | link                                                                                                                                                  | eosElementPath1                                                                                                                          | eosElementClass | eosElementPath2                                                                                                                                                    | eosContent1        |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[1] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&add-ons=research-news-stories&source=website"     | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "新闻稿"           |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[2] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&add-ons=global-media-distribution&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "全球媒体投放"     |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[3] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&add-ons=media-impact-infographic&source=website"  | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "适配媒体的信息图" |

        @jpn
        Examples:
            | elementPath1                                                                                                | elementPath2                                                                                                           | link                                                                                                                                                  | eosElementPath1                                                                                                                          | eosElementClass | eosElementPath2                                                                                                                                                    | eosContent1                          |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[1] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&add-ons=research-news-stories&source=website"     | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "プレスリリース・ライティング"       |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[2] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&add-ons=global-media-distribution&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "海外メディア配信代行"               |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[3] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&add-ons=media-impact-infographic&source=website"  | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] | "content"       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "メディア配信用インフォグラフィック" |

    @sanity
    Scenario Outline: I expect that all links on media impact page should be verified against expectation
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

    Scenario Outline: I expect to see correct pricing for media impact service
        Then I expect that element <element> matches the text <price>
        @eng
        Examples:
            | element                                                                                                             | price  |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[1]/div/div[2]/p | "$500" |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[2]/div/div[2]/p | "$500" |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[3]/div/div[2]/p | "$600" |
        @chn
        Examples:
            | element                                                                                                             | price    |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[1]/div/div[2]/p | "¥3,500" |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[2]/div/div[2]/p | "¥3,500" |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[3]/div/div[2]/p | "¥4,200" |

        @jpn
        Examples:
            | element                                                                                                             | price     |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[1]/div/div[2]/p | "¥54,000" |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[2]/div/div[2]/p | "¥54,000" |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[3]/div/div[2]/p | "¥65,000" |

    Scenario Outline: I expect FAQs should be functional on media impact page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @eng @chn @jpn @pending-kor
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[2] |

    @chn
    Scenario: I expect to verify the h1 tags on media impact page
        Then I expect the page to contain tagname h1 to be equal to count 1

    Scenario Outline: I expect to verify all links have the attribute with the required value
        Then I expect that element <element> has the attribute <attribute> with value <value>
        @chn
        Examples:
            | element                                                                         | attribute | value    |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[3]/app-lynk/a | rel       | nofollow |

    Scenario Outline: I expect to verify all links have the attribute with the required value on media impact page
        When I click on the element <elementPath1>
        Then I expect that element <elementPath2> has the attribute <attribute> with value <value>
        @chn
        Examples:
            | elementPath1                                                                                                | elementPath2                                                                                                           | attribute | value    |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[1] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | rel       | nofollow |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[2] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | rel       | nofollow |
            | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/div[1]/app-best-plan-card[3] | /html/body/app-root/ng-component/app-best-plan-block/section/div/div[2]/div[1]/app-best-plan-content/div[2]/app-lynk/a | rel       | nofollow |