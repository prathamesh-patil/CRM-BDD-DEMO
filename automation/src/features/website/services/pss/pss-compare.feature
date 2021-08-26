Feature: PSS compare page

    Background: I am on pss compare page
        Given I open the website "/services/publishing-services-packs/compare-plans"

    @sanity
    Scenario Outline: I expect that all links on pss compare page should be verified against expectation
        Then I expect that element <element> has the link <link>

        @jpn
        Examples:
            | element                                                                                 | link                                                                                                                                |
            | //*[@id="serviceOptions"]/app-options-ruby/div[1]/app-lynk/a                            | "/services/publishing-services-packs"                                                                                               |
            | //*[@id="serviceOptions"]/app-options-ruby/div[2]/app-lynk/a                            | "/services/publishing-services-packs/express-submission-support"                                                                    |
            | //*[@id="serviceOptions"]/app-options-ruby/div[3]/app-lynk/a                            | "/services/publishing-services-packs/full-publication-support"                                                                      |
            | //*[@id="serviceOptions"]/app-options-ruby/div[4]/app-lynk/a                            | "/services/publishing-services-packs/writing-plus-full-publication-support"                                                         |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/app-lynk/a                            | "/services/publishing-services-packs/compare-plans"                                                                                 |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[17]/div[2]/app-lynk/a | "/order/ncf/publication-support-packages/journal-submission-pack?source=website&loop=enter-skip-wc"                                 |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[17]/div[3]/app-lynk/a | "/order/ncf/publication-support-packages/manuscript-enhancement-publication-rescue/document/plan?source=website&loop=enter-skip-wc" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[17]/div[4]/app-lynk/a | "/order/ncf/publication-support-packages/medical-manuscript-writing-rescue/document/plan?source=website&loop=enter-skip-wc"         |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                  | "/order/ncf/publication-support-packages?source=website"                                                                            |

        @eng
        Examples:
            | element                                                                                 | link                                                                   |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                  | "/order/ncf/publication-support-packages?source=website"               |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[14]/div[2]/app-lynk/a | "/order/ncf/publication-support-packages/silver-pack?source=website"   |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[14]/div[3]/app-lynk/a | "/order/ncf/publication-support-packages/gold-pack?source=website"     |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[14]/div[4]/app-lynk/a | "/order/ncf/publication-support-packages/platinum-pack?source=website" |

        @pending-kor
        Examples:
            | element                                                                                 | link                                                                                                                                |
            | //*[@id="serviceOptions"]/app-options/app-lynk[1]/a                                     | "/services/publishing-services-packs"                                                                                               |
            | //*[@id="serviceOptions"]/app-options/app-lynk[2]/a                                     | "/services/publishing-services-packs/sci-publication-support"                                                                       |
            | //*[@id="serviceOptions"]/app-options/app-lynk[3]/a                                     | "/services/publishing-services-packs/sci-publication-support-plus"                                                                  |
            | //*[@id="serviceOptions"]/app-options/app-lynk[4]/a                                     | "/services/publishing-services-packs/express-pack"                                                                                  |
            | //*[@id="serviceOptions"]/app-options/app-lynk[5]/a                                     | "/services/publishing-services-packs/compare-plans"                                                                                 |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                  | "/order/ncf/publication-support-packages?source=website"                                                                            |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[17]/div[2]/app-lynk/a | "/order/ncf/publication-support-packages/journal-submission-pack?source=website&loop=enter-skip-wc"                                 |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[17]/div[3]/app-lynk/a | "/order/ncf/publication-support-packages/manuscript-enhancement-publication-rescue/document/plan?source=website&loop=enter-skip-wc" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[17]/div[4]/app-lynk/a | "/order/ncf/publication-support-packages/medical-manuscript-writing-rescue/document/plan?source=website&loop=enter-skip-wc"         |

    Scenario Outline: I expect to see correct pricing for all pss compare page
        Then I expect that element <element> matches the text <price>

        @eng
        Examples:
            | element                                                                                                                  | price   |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[3]/app-compare-block-information[1]/div/div/span[1]    | "$712"  |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[3]/app-compare-block-information[2]/div/div/span[1]    | "$912"  |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[3]/app-compare-block-information[3]/div/div[3]/span[1] | "$1152" |

        @jpn
        Examples:
            | element                                                                                                               | price         |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[4]/app-compare-block-information[1]/div/div/span[1] | "65,999円～"  |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[4]/app-compare-block-information[2]/div/div/span[1] | "135,999円～" |
            | //app-compare-block-information[3]//div[3]//span[1]                                                                   | "600,000円～" |
            | //app-compare-block-information[3]//div[3]//span[2]                                                                   | "480,000円～" |

        @pending-kor
        Examples:
            | element                                                                                                                  | price     |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[4]/app-compare-block-information[1]/div/div/span[1]    | "65,999"  |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[4]/app-compare-block-information[2]/div/div/span[1]    | "135,999" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[4]/app-compare-block-information[3]/div/div[3]/span[1] | "600,000" |

    @sanity
    Scenario Outline: I expect to open service page on forms on clicking on forms CTA on compare pss page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @eng
        Examples:
            | path                                                                                    | link                                                                   | eosElementPath                                                                                                              | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                  | "/order/ncf/publication-support-packages?source=website"               | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div/div/ul/li[2]/div[2]/div[3]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[14]/div[2]/app-lynk/a | "/order/ncf/publication-support-packages/silver-pack?source=website"   | //*[@id="field_file_upload_order"]/div/div[1]/div[1]/div                                                                    | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[14]/div[3]/app-lynk/a | "/order/ncf/publication-support-packages/gold-pack?source=website"     | //*[@id="field_file_upload_order"]/div/div[1]/div[1]/div                                                                    | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[14]/div[4]/app-lynk/a | "/order/ncf/publication-support-packages/platinum-pack?source=website" | //*[@id="field_file_upload_order"]/div/div[1]/div[1]/div                                                                    | "btn-primary-blue" |

        @jpn
        Examples:
            | path                                                                                    | link                                                                                                                                | eosElementPath                                                                                                                                                     | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                  | "/order/ncf/publication-support-packages?source=website"                                                                            | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div/div/ul/li[2]/div[3]/div[3]/button                                        | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[17]/div[2]/app-lynk/a | "/order/ncf/publication-support-packages/journal-submission-pack?source=website"                                                    | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[7]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[17]/div[3]/app-lynk/a | "/order/ncf/publication-support-packages/manuscript-enhancement-publication-rescue/document/plan?source=website&loop=enter-skip-wc" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-add-on/div/div/div[4]/button                    | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-comparison-block/div/div/div[17]/div[4]/app-lynk/a | "/order/ncf/publication-support-packages/medical-manuscript-writing-rescue/document/plan?source=website&loop=enter-skip-wc"         | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-add-on/div/div/div[3]/button                    | "btn-primary-blue" |