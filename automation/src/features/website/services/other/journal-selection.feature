Feature: Journal selection service

    Background: I am on journal selection page
        Given I open the website "/services/other/journal-selection"

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms CTA on journal selection page
        Then I expect that element <elementPath> has the link <link>
        When I click on the element <elementPath>
        And I expect that element <eosElementPath1> has the class <eosElementClass>
        And I expect that element <eosElementPath2> matches the text <eosContent>
        And I should go back to the previous page
        @eng
        Examples:
            | elementPath                                                                                      | link                                                                                           | eosElementPath1                                                                                                                                 | eosElementClass | eosElementPath2                                                                                                                                                    | eosContent          |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[2]/div[1]/app-lynk/a | "/order/ncf/publication-support-packages/custom-pack?add-ons=journal-selection&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[1] | "detail-block"  | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "Journal Selection" |

    @sanity
    Scenario Outline: I expect to see correct pricing for journal selection service
        Then I expect that element <element> matches the text <price>
        @eng
        Examples:
            | element                                                                                         | price  |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[2]/div[1]/div[1]/h2 | "$200" |

    @sanity
    Scenario Outline: I expect to see correct buy now link on journal selection page
        Then I expect that element <element> has the link <link>
        @eng
        Examples:
            | element                                                                                          | link                                                                                           |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[2]/div[1]/app-lynk/a | "/order/ncf/publication-support-packages/custom-pack?add-ons=journal-selection&source=website" |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                           | "/order/ncf/publication-support-packages/custom-pack?add-ons=journal-selection&source=website" |

    Scenario Outline: I expect to see correct links to PSS service on journal selection page
        Then I expect that element <element> has the link <link>
        @eng
        Examples:
            | element                                                                                                                                  | link                                                |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div/div/div[1]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/services/publishing-services-packs/silver-pack"   |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div/div/div[2]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/services/publishing-services-packs/gold-pack"     |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div/div/div[3]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/services/publishing-services-packs/platinum-pack" |

    Scenario Outline: I expect FAQs should be functional on journal selection page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @eng
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[2] |