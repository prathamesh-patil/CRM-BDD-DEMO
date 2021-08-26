Feature: Express submission support service

    Background: I am on express submission support service
        Given I open the website "/services/publishing-services-packs/express-submission-support"

    @sanity
    Scenario Outline: I expect that all links on express submission support page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @jpn
        Examples:
            | element                                                                                             | link                                                                                                              |
            | //*[@id="serviceOptions"]/app-options-ruby/div[1]/app-lynk/a                                        | "/services/publishing-services-packs"                                                                             |
            | //*[@id="serviceOptions"]/app-options-ruby/div[2]/app-lynk/a                                        | "/services/publishing-services-packs/express-submission-support"                                                  |
            | //*[@id="serviceOptions"]/app-options-ruby/div[3]/app-lynk/a                                        | "/services/publishing-services-packs/full-publication-support"                                                    |
            | //*[@id="serviceOptions"]/app-options-ruby/div[4]/app-lynk/a                                        | "/services/publishing-services-packs/writing-plus-full-publication-support"                                       |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/app-lynk/a                                        | "/services/publishing-services-packs/compare-plans"                                                               |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[3]/app-lynk/a | "/order/ncf/publication-support-packages/journal-submission-pack/document/plan?source=website&loop=enter-skip-wc" |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                              | "/order/ncf/publication-support-packages/journal-submission-pack/document/plan?loop=enter-skip-wc&source=website" |
            | /html/body/app-root/ng-component/app-offer-card-pearl/section/div/div[1]/div/div/div[2]/app-lynk/a  | "/order/ncf/publication-support-packages/journal-submission-pack/document/plan?loop=enter-skip-wc&source=website" |

    Scenario Outline: I expect to see correct pricing for express submission support service
        Then I expect that element <element> matches the text <price>
        @jpn
        Examples:
            | element                                                                                | price                  |
            | //app-plan-card//span[contains(@class,'text-2xl text-ruby-beta')]                      | "108,499円～"          |
            | //div[contains(@class,'flex justify-between items-center')][2]//span[2]                | "65,999円～"           |
            | //div[contains(@class,'flex flex-grow')][1]//span[contains(@class,'leading-tight')][1] | "10,000円"             |
            | //div[contains(@class,'flex flex-grow')][2]//span[contains(@class,'leading-tight')][1] | "18円 /単語"           |
            | //div[contains(@class,'flex flex-grow')][3]//span[contains(@class,'leading-tight')][1] | "11,000円 (図6個まで)" |
            | //div[contains(@class,'flex flex-grow')][4]//span[contains(@class,'leading-tight')][1] | "24,999円"             |
            | //div[contains(@class,'flex flex-grow')][5]//span[contains(@class,'leading-tight')][1] | "24,999円 17,500円"    |


    Scenario Outline: I expect FAQs should be functional on express submission support page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @jpn
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[2] |

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms CTA on express submission support page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @jpn
        Examples:
            | path                                                                                                | link                                                                                                              | eosElementPath                                                                                                                                                     | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                              | "/order/ncf/publication-support-packages/journal-submission-pack/document/plan?loop=enter-skip-wc&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[7]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[3]/app-lynk/a | "/order/ncf/publication-support-packages/journal-submission-pack/document/plan?source=website&loop=enter-skip-wc" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[7]/div[2]/button | "btn-primary-blue" |