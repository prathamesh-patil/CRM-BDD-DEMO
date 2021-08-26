Feature: Gold pack service

    Background: I am on gold pack service
        Given I open the website "/services/publishing-services-packs/gold-pack"

    @sanity
    Scenario Outline: I expect that all links on gold pack page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @eng
        Examples:
            | element                                                                                             | link                                                               |
            | //*[@id="serviceOptions"]/app-options-ruby/div[1]/app-lynk/a                                        | "/services/publishing-services-packs"                              |
            | //*[@id="serviceOptions"]/app-options-ruby/div[2]/app-lynk/a                                        | "/services/publishing-services-packs/silver-pack"                  |
            | //*[@id="serviceOptions"]/app-options-ruby/div[3]/app-lynk/a                                        | "/services/publishing-services-packs/gold-pack"                    |
            | //*[@id="serviceOptions"]/app-options-ruby/div[4]/app-lynk/a                                        | "/services/publishing-services-packs/platinum-pack"                |
            | //*[@id="serviceOptions"]/app-options-ruby/div[5]/app-lynk/a                                        | "/services/publishing-services-packs/custom-pack"                  |
            | //*[@id="serviceOptions"]/app-options-ruby/div[6]/app-lynk/a                                        | "/services/publishing-services-packs/compare-plans"                |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[3]/app-lynk/a | "/order/ncf/publication-support-packages/gold-pack?source=website" |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                              | "/order/ncf/publication-support-packages/gold-pack?source=website" |

    Scenario Outline: I expect to see correct pricing for gold pack service
        Then I expect that element <element> matches the text <price>
        @eng
        Examples:
            | element                                                                                            | price  |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[2]/div[3]/h3 | "$912" |

    Scenario Outline: I expect FAQs should be functional on gold pack page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @eng
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[2] |

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms CTA on gold pack page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @eng
        Examples:
            | path                                                                                                | link                                                               | eosElementPath                                           | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                              | "/order/ncf/publication-support-packages/gold-pack?source=website" | //*[@id="field_file_upload_order"]/div/div[1]/div[1]/div | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[3]/app-lynk/a | "/order/ncf/publication-support-packages/gold-pack?source=website" | //*[@id="field_file_upload_order"]/div/div[1]/div[1]/div | "btn-primary-blue" |