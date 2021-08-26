Feature: Research promotion services

    Background: I am on research promotion service
        Given I open the website "/services/research-promotion"

    @sanity
    Scenario Outline: I expect that all links on research promotion page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @eng @chn @jpn @pending-kor
        Examples:
            | element                                                                                       | link                                                                                                                |
            | //*[@id="serviceOptions"]/app-options-ruby/div[1]/app-lynk/a                                  | "/services/research-promotion"                                                                                      |
            | //*[@id="serviceOptions"]/app-options-ruby/div[2]/app-lynk/a                                  | "/services/research-promotion/peer-impact"                                                                          |
            | //*[@id="serviceOptions"]/app-options-ruby/div[3]/app-lynk/a                                  | "/services/research-promotion/media-impact"                                                                         |
            | //*[@id="serviceOptions"]/app-options-ruby/div[4]/app-lynk/a                                  | "/services/research-promotion/funder-impact"                                                                        |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div[1]/div/div/div/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&source=website" |
            | /html/body/app-root/ng-component/app-compare-services/div/div/div/div[3]/app-lynk/a           | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&source=website" |

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

    Scenario Outline: I expect FAQs should be functional on research promotion page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @eng @chn @jpn @pending-kor
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[3] |

    @sanity
    Scenario Outline: I expect to open service page on forms on clicking on forms CTA on english editing page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @eng
        Examples:
            | path                                                                                          | link                                                                                                                | eosElementPath                                                                                                                                   | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                        | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-add-on/div/div/div[10]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div[1]/div/div/div/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-add-on/div/div/div[10]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-compare-services/div/div/div/div[3]/app-lynk/a           | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-add-on/div/div/div[10]/button | "btn-primary-blue" |

        @chn
        Examples:
            | path                                                                                          | link                                                                                                                | eosElementPath                                                                                                                                   | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[8]/app-lynk/a                        | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-add-on/div/div/div[10]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div[1]/div/div/div/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-add-on/div/div/div[10]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-compare-services/div/div/div/div[3]/app-lynk/a           | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-add-on/div/div/div[10]/button | "btn-primary-blue" |

        @jpn
        Examples:
            | path                                                                                          | link                                                                                                                | eosElementPath                                                                                                                                   | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                        | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-add-on/div/div/div[10]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div[1]/div/div/div/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-add-on/div/div/div[10]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-compare-services/div/div/div/div[3]/app-lynk/a           | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-add-on/div/div/div[10]/button | "btn-primary-blue" |


    @chn
    Scenario: I expect to verify the h1 tags on research promotion page
        Then I expect the page to contain tagname h1 to be equal to count 1

    Scenario Outline: I expect to verify all links have the attribute with the required value
        Then I expect that element <element> has the attribute <attribute> with value <value>
        @chn
        Examples:
            | element                                                                                       | attribute | value    |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div[1]/div/div/div/app-lynk/a | rel       | nofollow |
            | /html/body/app-root/ng-component/app-compare-services/div/div/div/div[3]/app-lynk/a           | rel       | nofollow |