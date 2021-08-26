Feature: Pre-submission peer review service

    Background: I am on pre-submission peer review page
        Given I open the website "/services/other/pre-submission-peer-review"

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms CTA on pre submission peer review page
        Then I expect that element <elementPath> has the link <link>
        When I click on the element <elementPath>
        And I expect that element <eosElementPath1> has the class <eosElementClass>
        And I expect that element <eosElementPath2> matches the text <eosContent>
        And I should go back to the previous page
        @eng
        Examples:
            | elementPath                                                                                      | link                                                                                                    | eosElementPath1                                                                                                                                 | eosElementClass | eosElementPath2                                                                                                                                                    | eosContent                   |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[2]/div[1]/app-lynk/a | "/order/ncf/publication-support-packages/custom-pack?add-ons=pre-submission-peer-review&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[1] | "detail-block"  | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/app-phoenix-order-summary/div/div/div[2]/div[2]/div[1]/div[1]/span | "Pre-submission peer review" |

    Scenario Outline: I expect to see correct pricing for pre-submission peer review service
        Then I expect that element <element> matches the text <price>
        @eng
        Examples:
            | element                                                                                         | price  |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[2]/div[1]/div[1]/h2 | "$400" |

    @sanity
    Scenario Outline: I expect to see correct buy now link on pre-submission peer review page
        Then I expect that element <element> has the link <link>
        @eng
        Examples:
            | element                                                                                          | link                                                                                                    |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[2]/div[1]/app-lynk/a | "/order/ncf/publication-support-packages/custom-pack?add-ons=pre-submission-peer-review&source=website" |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                           | "/order/ncf/publication-support-packages/custom-pack?add-ons=pre-submission-peer-review&source=website" |

    Scenario Outline: I expect to see correct links to PSS service on pre-submission peer review page
        Then I expect that element <element> has the link <link>
        @eng
        Examples:
            | element                                                                                        | link                                                |
            | /html/body/app-root/ng-component/app-plan-selection-opal/section/div/div/div/div[1]/app-lynk/a | "/services/publishing-services-packs/platinum-pack" |

    Scenario Outline: I expect FAQs should be functional on pre-submission peer review page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @eng
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[2] |