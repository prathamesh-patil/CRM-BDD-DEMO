Feature: Publication support packs service pricing

    Background: I am on publication support packs service pricing page
        Given I open the website "/pricing/publication-support-packs"

    @sanity
    Scenario Outline: I expect that all links on publication support packs pricing page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @jpn
        Examples:
            | element                                                                                                           | link                                                                        |
            | /html/body/app-root/ng-component/app-plan-selection-pearl/app-plan-cards-ruby/section/div/div/div[13]/app-lynk/a  | "/services/publishing-services-packs/custom-pack"                           |
            | /html/body/app-root/ng-component/app-plan-selection-garnet/section/div[2]/div/div[1]/div/div[2]/div[2]/app-lynk/a | "/services/publishing-services-packs/express-submission-support"            |
            | /html/body/app-root/ng-component/app-plan-selection-garnet/section/div[2]/div/div[2]/div/div[2]/div[2]/app-lynk/a | "/services/publishing-services-packs/full-publication-support"              |
            | /html/body/app-root/ng-component/app-plan-selection-garnet/section/div[2]/div/div[3]/div/div[2]/div[2]/app-lynk/a | "/services/publishing-services-packs/writing-plus-full-publication-support" |

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms CTA on publication support packs pricing page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page

        @jpn
        Examples:
            | path                                                                                                 | link                                                     | eosElementPath                                                                                                              | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                               | "/order/ncf/publication-support-packages?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div/div/ul/li[2]/div[3]/div[3]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-featured-block-diamond/section/div/div/div[2]/div[2]/app-lynk/a | "/order/ncf/publication-support-packages?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div/div/ul/li[2]/div[3]/div[3]/button | "btn-primary-blue" |

    Scenario Outline: I expect FAQs should be functional on pss pricing page
        When I scroll the page to end and click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I scroll the page to end and click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @jpn
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[2] |

    Scenario Outline: I expect to see correct pricing for writing plus full publication support service
        Then I expect that element <element> matches the text <price>
        @jpn
        Examples:
            | element                                                                                                             | price                  |
            | //div[contains(@class,'flex flex-grow')][1]//span[contains(@class,'leading-tight')][1]                              | "54,999円 44,000円"    |
            | //div[contains(@class,'flex flex-grow')][2]//span[contains(@class,'leading-tight')][1]                              | "32,999円 /イラスト"   |
            | //div[contains(@class,'flex flex-grow')][3]//span[contains(@class,'leading-tight')][1]                              | "18円 /単語"           |
            | //div[contains(@class,'flex flex-grow')][4]//span[contains(@class,'leading-tight')][1]                              | "54,999円～"           |
            | //div[contains(@class,'flex flex-grow')][5]//span[contains(@class,'leading-tight')][1]                              | "49,999円"             |
            | //div[contains(@class,'flex flex-grow')][6]//span[contains(@class,'leading-tight')][1]                              | "10,000円"             |
            | //div[contains(@class,'flex flex-grow')][7]//span[contains(@class,'leading-tight')][1]                              | "29,999円"             |
            | //div[contains(@class,'flex flex-grow')][8]//span[contains(@class,'leading-tight')][1]                              | "11,000円 (図6個まで)" |
            | //div[contains(@class,'flex flex-grow')][9]//span[contains(@class,'leading-tight')][1]                              | "24,999円"             |
            | //div[contains(@class,'flex flex-grow')][10]//span[contains(@class,'leading-tight')][1]                             | "99,000円"             |
            | //div[contains(@class,'flex flex-grow')][11]//span[contains(@class,'leading-tight')][1]                             | "12,500円"             |
            | /html/body/app-root/ng-component/app-plan-selection-garnet/section/div[2]/div/div[1]/div/div[2]/div[1]/div/span     | "65,999円～"           |
            | /html/body/app-root/ng-component/app-plan-selection-garnet/section/div[2]/div/div[2]/div/div[2]/div[1]/div/span     | "135,999円～"          |
            | /html/body/app-root/ng-component/app-plan-selection-garnet/section/div[2]/div/div[3]/div/div[2]/div[1]/div/div/span | "600,000円～"          |
            | /html/body/app-root/ng-component/app-plan-selection-garnet/section/div[2]/div/div[3]/div/div[2]/div[1]/div/span     | "480,000円～ 20%割引"  |