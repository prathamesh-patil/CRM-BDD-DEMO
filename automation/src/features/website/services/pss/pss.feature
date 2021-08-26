Feature: Publication support services

    Background: I am on publication support services
        Given I open the website "/services/publishing-services-packs"

    @sanity
    Scenario Outline: I expect that all links on publication support page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @eng
        Examples:
            | element                                                                                                                                     | link                                                                   |
            | //*[@id="serviceOptions"]/app-options-ruby/div[1]/app-lynk/a                                                                                | "/services/publishing-services-packs"                                  |
            | //*[@id="serviceOptions"]/app-options-ruby/div[2]/app-lynk/a                                                                                | "/services/publishing-services-packs/silver-pack"                      |
            | //*[@id="serviceOptions"]/app-options-ruby/div[3]/app-lynk/a                                                                                | "/services/publishing-services-packs/gold-pack"                        |
            | //*[@id="serviceOptions"]/app-options-ruby/div[4]/app-lynk/a                                                                                | "/services/publishing-services-packs/platinum-pack"                    |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/app-lynk/a                                                                                | "/services/publishing-services-packs/custom-pack"                      |
            | //*[@id="serviceOptions"]/app-options-ruby/div[6]/app-lynk/a                                                                                | "/services/publishing-services-packs/compare-plans"                    |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div[1]/div/div/div/app-lynk/a                                               | "/order/ncf/publication-support-packages?source=website"               |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[1]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/publication-support-packages/silver-pack?source=website"   |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[2]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/publication-support-packages/gold-pack?source=website"     |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[3]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/publication-support-packages/platinum-pack?source=website" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[2]/app-lynk/a                                                      | "/order/ncf/publication-support-packages?source=website"               |
            | //app-plan-cards-ruby//app-lynk[contains(@class,'btn-primary')]//a                                                                          | "/services/publishing-services-packs/custom-pack"                      |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                                                                      | "/order/ncf/publication-support-packages?source=website"               |
            | /html/body/app-root/ng-component/app-offer-strip-ruby/div/div/div/div[2]/app-lynk/a                                                         | "order/ncf/publication-support-packages?source=website"                |
        @chn
        Examples:
            | element                                                                                                                                     | link                                                                                                        |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div[1]/div/div/div/app-lynk/a                                               | "/order/ncf/publication-support-packages?source=website"                                                    |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[1]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/publication-support-packages/express-pack?source=website"                                       |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[2]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/publication-support-packages/unlimited-submission-assistance-english-manuscript?source=website" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[3]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/publication-support-packages/scientific-impact-pack?source=website"                             |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[2]/app-lynk/a                                                      | "/order/ncf/publication-support-packages?source=website"                                                    |
            | //*[@id="custom-pack"]//app-lynk[contains(@class,'btn-primary')]//a                                                                         | "/order/ncf/publication-support-packages/custom-pack?source=website"                                        |
            | /html/body/app-root/ng-component/app-plan-selection-opal/section/div/div/div/div[1]/app-lynk/a                                              | "/order/ncf/publication-support-packages/unlimited-submission-assistance-chinese-manuscript"                |
        @jpn
        Examples:
            | element                                                                                                                                        | link                                                                                                                                |
            | //*[@id="serviceOptions"]/app-options-ruby/div[1]/app-lynk/a                                                                                   | "/services/publishing-services-packs"                                                                                               |
            | //*[@id="serviceOptions"]/app-options-ruby/div[2]/app-lynk/a                                                                                   | "/services/publishing-services-packs/express-submission-support"                                                                    |
            | //*[@id="serviceOptions"]/app-options-ruby/div[3]/app-lynk/a                                                                                   | "/services/publishing-services-packs/full-publication-support"                                                                      |
            | //*[@id="serviceOptions"]/app-options-ruby/div[4]/app-lynk/a                                                                                   | "/services/publishing-services-packs/writing-plus-full-publication-support"                                                         |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/app-lynk/a                                                                                   | "/services/publishing-services-packs/compare-plans"                                                                                 |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[1]/app-plan-information-block/div/div[3]/div/app-lynk[1]/a | "/order/ncf/publication-support-packages/journal-submission-pack/document/plan?loop=enter-skip-wc&source=website"                   |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[2]/app-plan-information-block/div/div[3]/div/app-lynk[1]/a | "/order/ncf/publication-support-packages/manuscript-enhancement-publication-rescue/document/plan?loop=enter-skip-wc&source=website" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[3]/app-plan-information-block/div/div[3]/div/app-lynk[1]/a | "/order/ncf/publication-support-packages/medical-manuscript-writing-rescue/document/plan?loop=enter-skip-wc&source=website"         |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[2]/app-lynk/a                                                         | "/order/ncf/publication-support-packages?source=website"                                                                            |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                                                                         | "/order/ncf/publication-support-packages?source=website"                                                                            |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[1]/app-plan-information-block/div/div[3]/div/app-lynk[2]/a | "/services/publishing-services-packs/express-submission-support"                                                                    |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[2]/app-plan-information-block/div/div[3]/div/app-lynk[2]/a | "/services/publishing-services-packs/full-publication-support"                                                                      |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[3]/app-plan-information-block/div/div[3]/div/app-lynk[2]/a | "/services/publishing-services-packs/writing-plus-full-publication-support"                                                         |

        @pending-kor
        Examples:
            | element                                                                | link                                                               |
            | //*[@id="serviceOptions"]/app-options/app-lynk[1]/a                    | "/services/publishing-services-packs"                              |
            | //*[@id="serviceOptions"]/app-options/app-lynk[2]/a                    | "/services/publishing-services-packs/sci-publication-support"      |
            | //*[@id="serviceOptions"]/app-options/app-lynk[3]/a                    | "/services/publishing-services-packs/sci-publication-support-plus" |
            | //*[@id="serviceOptions"]/app-options/app-lynk[4]/a                    | "/services/publishing-services-packs/express-pack"                 |
            | //*[@id="serviceOptions"]/app-options/app-lynk[5]/a                    | "/services/publishing-services-packs/compare-plans"                |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a | "/order/ncf/publication-support-packages?source=website"           |

    Scenario Outline: I expect to see correct pricing for publication support services
        Then I expect that element <element> matches the text <price>
        @eng
        Examples:
            | element                                                                                                                                | price    |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[1]/app-plan-information-block/div/div[1]/div/h2    | "$712"   |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[2]/app-plan-information-block/div/div[1]/div[1]/h2 | "$912"   |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[3]/app-plan-information-block/div/div[1]/div/h2    | "$1,152" |
        @chn
        Examples:
            | element                                                                                                                             | price       |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[1]/app-plan-information-block/div/div[1]/div/h2 | "￥5,999起"  |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[2]/app-plan-information-block/div/div[1]/div/h2 | "￥8,999起"  |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[3]/app-plan-information-block/div/div[1]/div/h2 | "¥12,999起" |

        @jpn
        Examples:
            | element                                                                                                                             | price                  |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[1]/app-plan-information-block/div/div[1]/div/h2 | "65,999円～"           |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[2]/app-plan-information-block/div/div[1]/div/h2 | "135,999円～"          |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[3]/app-plan-information-block/div/div[1]/div/h2 | "600,000円～"          |
            | //div[contains(@class,'flex flex-grow')][1]//span[contains(@class,'leading-tight')][1]                                              | "54,999円 44,000円"    |
            | //div[contains(@class,'flex flex-grow')][2]//span[contains(@class,'leading-tight')][1]                                              | "32,999円 /イラスト"   |
            | //div[contains(@class,'flex flex-grow')][3]//span[contains(@class,'leading-tight')][1]                                              | "18円 /単語"           |
            | //div[contains(@class,'flex flex-grow')][4]//span[contains(@class,'leading-tight')][1]                                              | "54,999円～"           |
            | //div[contains(@class,'flex flex-grow')][5]//span[contains(@class,'leading-tight')][1]                                              | "49,999円"             |
            | //div[contains(@class,'flex flex-grow')][6]//span[contains(@class,'leading-tight')][1]                                              | "10,000円"             |
            | //div[contains(@class,'flex flex-grow')][7]//span[contains(@class,'leading-tight')][1]                                              | "29,999円"             |
            | //div[contains(@class,'flex flex-grow')][8]//span[contains(@class,'leading-tight')][1]                                              | "11,000円 (図6個まで)" |
            | //div[contains(@class,'flex flex-grow')][9]//span[contains(@class,'leading-tight')][1]                                              | "24,999円"             |
            | //div[contains(@class,'flex flex-grow')][10]//span[contains(@class,'leading-tight')][1]                                             | "99,000円"             |
            | //div[contains(@class,'flex flex-grow')][11]//span[contains(@class,'leading-tight')][1]                                             | "12,500円"             |


    Scenario Outline: I expect FAQs should be functional on publication support page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @eng @jpn @pending-kor
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[3] |

    @sanity
    Scenario Outline: I expect to open service page on forms on clicking on forms CTA on pss page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @eng
        Examples:
            | path                                                                                                                                        | link                                                                   | eosElementPath                                                                                                   | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                                                                      | "/order/ncf/publication-support-packages?source=website"               | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div/div/ul/li[2]/div[1]/h3 | "comp-head"        |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div[1]/div/div/div/app-lynk/a                                               | "/order/ncf/publication-support-packages?source=website"               | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div/div/ul/li[2]/div[1]/h3 | "comp-head"        |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[2]/app-lynk/a                                                      | "/order/ncf/publication-support-packages?source=website"               | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div/div/ul/li[2]/div[1]/h3 | "comp-head"        |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[2]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/publication-support-packages/gold-pack?source=website"     | //*[@id="field_file_upload_order"]/div/div[1]/div[1]/div                                                         | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[3]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/publication-support-packages/platinum-pack?source=website" | //*[@id="field_file_upload_order"]/div/div[1]/div[1]/div                                                         | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[1]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/publication-support-packages/silver-pack?source=website"   | //*[@id="field_file_upload_order"]/div/div[1]/div[1]/div                                                         | "btn-primary-blue" |

        @chn
        Examples:
            | path                                                                                                                                        | link                                                                                                                                                                        | eosElementPath                                                                                                                                                     | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[8]/app-lynk/a                                                                      | "/order/ncf/publication-support-packages?source=website"                                                                                                                    | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div/div/div/div[2]/div[2]/ul/li[2]/div[1]/h3                                 | "comp-head"        |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div[1]/div/div/div/app-lynk/a                                               | "/order/ncf/publication-support-packages?source=website"                                                                                                                    | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div/div/div/div[2]/div[2]/ul/li[2]/div[1]/h3                                 | "comp-head"        |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[2]/app-lynk/a                                                      | "/order/ncf/publication-support-packages?source=website"                                                                                                                    | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div/div/div/div[2]/div[2]/ul/li[2]/div[1]/h3                                 | "comp-head"        |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[1]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/publication-support-packages/express-pack?source=website"                                                                                                       | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[5]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[2]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/publication-support-packages/unlimited-submission-assistance-english-manuscript?source=website"                                                                 | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[5]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[3]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/order/ncf/publication-support-packages/scientific-impact-pack?source=website"                                                                                             | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[5]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-opal/section/div/div/div/div[1]/app-lynk/a                                              | "/order/ncf/publication-support-packages/unlimited-submission-assistance-chinese-manuscript/document/plan/add-on/information?loop=enter-skip-wc&planskip=yes&addonskip=yes" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[5]/div[2]/button | "btn-primary-blue" |
            | //*[@id="custom-pack"]//app-lynk[contains(@class,'btn-primary')]//a                                                                         | "/order/ncf/publication-support-packages/custom-pack?source=website"                                                                                                        | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-add-on/div[1]/div/div[7]/button                 | "btn-primary-blue" |

        @jpn
        Examples:
            | path                                                                                                                                           | link                                                                                                                                | eosElementPath                                                                                                                                                     | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                                                                         | "/order/ncf/publication-support-packages?source=website"                                                                            | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div/div/ul/li[2]/div[3]/div[3]/button                                        | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[2]/app-lynk/a                                                         | "/order/ncf/publication-support-packages?source=website"                                                                            | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div/div/ul/li[2]/div[3]/div[3]/button                                        | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[1]/app-plan-information-block/div/div[3]/div/app-lynk[1]/a | "/order/ncf/publication-support-packages/journal-submission-pack/document/plan?loop=enter-skip-wc&source=website"                   | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[7]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[2]/app-plan-information-block/div/div[3]/div/app-lynk[1]/a | "/order/ncf/publication-support-packages/manuscript-enhancement-publication-rescue/document/plan?loop=enter-skip-wc&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-add-on/div/div/div[4]/button                    | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[3]/app-plan-information-block/div/div[3]/div/app-lynk[1]/a | "/order/ncf/publication-support-packages/medical-manuscript-writing-rescue/document/plan?loop=enter-skip-wc&source=website"         | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-add-on/div/div/div[3]/button                    | "btn-primary-blue" |

    @chn @sanity
    Scenario: I expect to open order page on forms on clicking on custom pack forms CTA on pss page for china
        When I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[1]/div/div[2]/app-lynk/a
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[2]/div/div[2]/app-lynk/a
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[3]/div/div[2]/app-lynk/a
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[4]/div/div[2]/app-lynk/a
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[5]/div/div[2]/app-lynk/a
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[6]/div/div[2]/app-lynk/a
        And I expect that element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/app-pack-widget-ruby-summary/div/div/app-lynk/a has the link "/order/ncf/publication-support-packages/custom-pack?add-ons=pre-submission-readiness-check,journal-selection,artwork-preparation,plagiarism-check-report,literature-review,academic-illustration&source=website"
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/app-pack-widget-ruby-summary/div/div/app-lynk/a
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] has the class "content"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span matches the text "期刊推荐"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[2]/div[1]/span matches the text "文献检索"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[3]/div[1]/span matches the text "图片优化"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[4]/div[1]/span matches the text "信息图"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[5]/div[1]/span matches the text "投稿协助"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[6]/div[1]/span matches the text "由iThenticate提供的论文查重报告"
        And I should go back to the previous page

    @chn
    Scenario: I expect to verify the h1 tags on pss page
        Then I expect the page to contain tagname h1 to be equal to count 1

    Scenario Outline: I expect to verify all links have the attribute with the required value
        Then I expect that element <element> has the attribute <attribute> with value <value>
        @chn
        Examples:
            | element                                                                                                                                     | attribute | value    |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div[1]/div/div/div/app-lynk/a                                               | rel       | nofollow |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[1]/app-plan-information-block/div/div[3]/div/app-lynk/a | rel       | nofollow |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[2]/app-plan-information-block/div/div[3]/div/app-lynk/a | rel       | nofollow |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[1]/div/div[3]/app-plan-information-block/div/div[3]/div/app-lynk/a | rel       | nofollow |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div[2]/app-lynk/a                                                      | rel       | nofollow |
            | /html/body/app-root/ng-component/app-plan-selection-opal/section/div/div/div/div[1]/app-lynk/a                                              | rel       | nofollow |
            | //*[@id="custom-pack"]//app-lynk[contains(@class,'btn-primary')]//a                                                                         | rel       | nofollow |