Feature: AI translation service

    Background: I am on AI translation service
        Given I open the website "/services/translation/AI"

    @sanity
    Scenario Outline: I expect to see correct pricing for AI translation services
        Then I expect that element <element> matches the text <price>
        @chn
        Examples:
            | element                                     | price   |
            | //h2[@class='text-ruby-alpha inline-block'] | "￥0.45" |

    @chn @sanity
    Scenario: I expect the service widget on AI translation page should be functional
        When I add "234" to the inputfield /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-screen-widget-field[1]/div/input
        And I add "abcd@mailinator.com" to the inputfield /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-screen-widget-field[2]/div/input
        And I add "96196368810" to the inputfield /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-screen-widget-field[3]/div/input
        And I click on the button /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-lynk/button
        Then I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button has the class "btn-primary-blue"
        Then I expect the url to contain "/order/ncf/translation-services/simplified-chinese-to-english-level-1"
        And I expect the url to contain "units=234"
        And I expect the url to contain "pii=ZW1haWw6YWJjZEBtYWlsaW5hdG9yLmNvbSxwaG9uZTo5NjE5NjM2ODgxMA"
        And I should go back to the previous page

    Scenario Outline: I expect the service widget on AI translation page to throw validation in case user enters invalid value in any field
        When I add <value> to the inputfield <field>
        And I click on the button /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-lynk/button
        Then I expect that element <field> has the class "ng-invalid"
        @chn
        Examples:
            | value            | field                                                                                                                              |
            | "wrongwordcount" | /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-screen-widget-field[1]/div/input |
            | "wrongemail"     | /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-screen-widget-field[2]/div/input |
            | "wrongphone"     | /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-screen-widget-field[3]/div/input |

    Scenario Outline: I expect FAQs should be functional on professional translation page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @chn
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[3] |

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms CTA on professional translation page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @chn
        Examples:
            | path                                                                                                | link                                                                                   | eosElementPath                                                                                                                                                             | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[8]/app-lynk/a                              | "/order/ncf/translation-services/simplified-chinese-to-english-level-1?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[4]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-level-1?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms tabs on ai translation page
        Then I expect that element /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1] has the class "rounded-t-lg"
        When I scroll the page to center and click on the element <elementPath>
        Then I expect that element <buttonPath> has the link <link>
        And I scroll the page to center and click on the element <buttonPath>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page

        @chn
        Examples:
            | elementPath                                                                                | buttonPath                                                                                           | link                                                                                   | eosElementPath                                                                                                                                                             | eosElementClass    |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[1] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-level-1?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[2] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-level-1?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[3] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-level-1?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[4] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-level-1?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[5] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-level-1?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[6] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div/app-lynk/a    | "/order/ncf/translation-services/simplified-chinese-to-english-level-1?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |

    @chn
    Scenario: I expect to verify the h1 tags on ai translation page
        Then I expect the page to contain tagname h1 to be equal to count 1

    Scenario Outline: I expect to verify all links have the attribute with the required value
        Then I expect that element <element> has the attribute <attribute> with value <value>
        @chn
        Examples:
            | element                                                                                             | attribute | value    |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[4]/app-lynk/a | rel       | nofollow |