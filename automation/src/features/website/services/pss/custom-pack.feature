Feature: Custom pack service

    Background: I am on custom pack service
        Given I open the website "/services/publishing-services-packs/custom-pack"

    Scenario Outline: I expect to see correct pricing for custom pack service
        Then I expect that element <element> matches the text <price>
        @eng
        Examples:
            | element                                                                                                             | price                        |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[1]/div/div[2]/p | "$200"                       |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[2]/div/div[2]/p | "$200"                       |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[3]/div/div[2]/p | "$80\n*prices for 6 artwork" |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[4]/div/div[2]/p | "$110"                       |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[5]/div/div[2]/p | "$0.17\n*per word"           |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[6]/div/div[2]/p | "$400"                       |

        @jpn
        Examples:
            | element                                                                                                              | price                          |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[1]/div/div[2]/p  | "¥54,999"                      |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[2]/div/div[2]/p  | "¥32,999\n(イラスト1つにつき)" |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[3]/div/div[2]/p  | "¥18\n(1単語につき)"           |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[4]/div/div[2]/p  | "¥54,999\n(基本料金)"          |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[5]/div/div[2]/p  | "¥49,999"                      |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[6]/div/div[2]/p  | "¥10,000"                      |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[7]/div/div[2]/p  | "¥29,999"                      |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[8]/div/div[2]/p  | "¥11,000\n(図6つまでの料金)"   |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[9]/div/div[2]/p  | "¥24,999"                      |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[10]/div/div[2]/p | "¥99,000"                      |
            | /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div[1]/div/app-pack-widget-ruby-cards[11]/div/div[2]/p | "¥12,500"                      |
            | //div[contains(@class,'flex flex-grow')][1]//span[contains(@class,'leading-tight')][1]                               | "54,999円 44,000円"            |
            | //div[contains(@class,'flex flex-grow')][2]//span[contains(@class,'leading-tight')][1]                               | "32,999円 /イラスト"           |
            | //div[contains(@class,'flex flex-grow')][3]//span[contains(@class,'leading-tight')][1]                               | "18円 /単語"                   |
            | //div[contains(@class,'flex flex-grow')][4]//span[contains(@class,'leading-tight')][1]                               | "54,999円～"                   |
            | //div[contains(@class,'flex flex-grow')][5]//span[contains(@class,'leading-tight')][1]                               | "49,999円"                     |
            | //div[contains(@class,'flex flex-grow')][6]//span[contains(@class,'leading-tight')][1]                               | "10,000円"                     |
            | //div[contains(@class,'flex flex-grow')][7]//span[contains(@class,'leading-tight')][1]                               | "29,999円"                     |
            | //div[contains(@class,'flex flex-grow')][8]//span[contains(@class,'leading-tight')][1]                               | "11,000円 (図6個まで)"         |
            | //div[contains(@class,'flex flex-grow')][9]//span[contains(@class,'leading-tight')][1]                               | "24,999円"                     |
            | //div[contains(@class,'flex flex-grow')][10]//span[contains(@class,'leading-tight')][1]                              | "99,000円"                     |
            | //div[contains(@class,'flex flex-grow')][11]//span[contains(@class,'leading-tight')][1]                              | "12,500円"                     |


    @sanity
    Scenario Outline: I expect that all links on pss custom pack page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @jpn
        Examples:
            | element                                                                | link                                                                        |
            | //*[@id="serviceOptions"]/app-options-ruby/div[1]/app-lynk/a           | "/services/publishing-services-packs"                                       |
            | //*[@id="serviceOptions"]/app-options-ruby/div[2]/app-lynk/a           | "/services/publishing-services-packs/express-submission-support"            |
            | //*[@id="serviceOptions"]/app-options-ruby/div[3]/app-lynk/a           | "/services/publishing-services-packs/full-publication-support"              |
            | //*[@id="serviceOptions"]/app-options-ruby/div[4]/app-lynk/a           | "/services/publishing-services-packs/writing-plus-full-publication-support" |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/app-lynk/a           | "/services/publishing-services-packs/compare-plans"                         |
            | //*[@id="serviceOptions"]/app-options-ruby/div[6]/app-lynk/a           | "/services/publishing-services-packs/custom-pack"                           |
            | //app-lynk[@class='btn btn-primary w-full']/a                          | "/order/ncf/publication-support-packages/custom-pack?source=website"        |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a | "/order/ncf/publication-support-packages/custom-pack?source=website"        |

        @eng
        Examples:
            | element                                                                | link                                                                 |
            | //*[@id="serviceOptions"]/app-options-ruby/div[1]/app-lynk/a           | "/services/publishing-services-packs"                                |
            | //*[@id="serviceOptions"]/app-options-ruby/div[2]/app-lynk/a           | "/services/publishing-services-packs/silver-pack"                    |
            | //*[@id="serviceOptions"]/app-options-ruby/div[3]/app-lynk/a           | "/services/publishing-services-packs/gold-pack"                      |
            | //*[@id="serviceOptions"]/app-options-ruby/div[4]/app-lynk/a           | "/services/publishing-services-packs/platinum-pack"                  |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/app-lynk/a           | "/services/publishing-services-packs/custom-pack"                    |
            | //*[@id="serviceOptions"]/app-options-ruby/div[6]/app-lynk/a           | "/services/publishing-services-packs/compare-plans"                  |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a | "/order/ncf/publication-support-packages/custom-pack?source=website" |

    Scenario Outline: I expect FAQs should be functional on custom pack page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @eng @jpn
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[2] |

    @eng @sanity
    Scenario: I expect to open order page on forms on clicking on forms CTA on custom pack page for eng
        When I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[1]/div/div[2]/app-lynk/a
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[2]/div/div[2]/app-lynk/a
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[3]/div/div[2]/app-lynk/a
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[4]/div/div[2]/app-lynk/a
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[5]/div/div[2]/app-lynk/a
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[6]/div/div[2]/app-lynk/a
        And I expect that element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/app-pack-widget-ruby-summary/div/div/app-lynk/a has the link "/order/ncf/publication-support-packages/custom-pack?add-ons=journal-selection,journal-submission,artwork-preparation,plagiarism-check-report,pesplus,pre-submission-peer-review&source=website"
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/app-pack-widget-ruby-summary/div/div/app-lynk/a
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] has the class "content"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span matches the text "Journal Selection"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[2]/div[1]/span matches the text "Pre-submission peer review"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[3]/div[1]/span matches the text "Premium Editing + Response letter crosscheck"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[4]/div[1]/span matches the text "Artwork Formatting"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[5]/div[1]/span matches the text "Journal Submission"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[6]/div[1]/span matches the text "Plagiarism Check Report powered by iThenticate"
        And I should go back to the previous page


    @jpn @sanity
    Scenario: I expect to open order page on forms on clicking on forms CTA on custom pack page for japan
        When I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[1]/div/div[2]/app-lynk/a
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[2]/div/div[2]/app-lynk/a
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[3]/div/div[2]/app-lynk/a
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[4]/div/div[2]/app-lynk/a
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[5]/div/div[2]/app-lynk/a
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[6]/div/div[2]/app-lynk/a
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[7]/div/div[2]/app-lynk/a
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[8]/div/div[2]/app-lynk/a
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[9]/div/div[2]/app-lynk/a
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[10]/div/div[2]/app-lynk/a
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/div/div/app-pack-widget-ruby-cards[11]/div/div[2]/app-lynk/a
        And I expect that element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/app-pack-widget-ruby-summary/div/div/app-lynk/a has the link "/order/ncf/publication-support-packages/custom-pack?add-ons=literature-review,illustration-service,pesplus,statistical-check,pre-submission-peer-review,plagiarism-check-report,journal-selection,artwork-preparation,journal-submission,conference-poster-preparation,journal-correspondence&source=website"
        And I click on the element /html/body/app-root/ng-component/app-pack-widget-ruby/div/div/app-pack-widget-ruby-summary/div/div/app-lynk/a
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2] has the class "content"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span matches the text "先行文献検索サポート"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[2]/div[1]/span matches the text "イラストレーションサービス"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[3]/div[1]/span matches the text "プレミアム英文校正＋再投稿あんしんパック"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[4]/div[1]/span matches the text "統計分析サポート"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[5]/div[1]/span matches the text "投稿前ピアレビュー"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[6]/div[1]/span matches the text "剽窃チェックレポート（iThenticateを使用）"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[7]/div[1]/span matches the text "ジャーナル選択"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[8]/div[1]/span matches the text "グラフィック調整"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[9]/div[1]/span matches the text "ジャーナル投稿代行"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[10]/div[1]/span matches the text "ポスター作成サービス"
        And I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[11]/div[1]/span matches the text "ジャーナル宛のメール作成"
        And I should go back to the previous page