Feature: Upgraded translation service

    Background: I am on upgraded translation service
        Given I open the website "/services/translation/upgraded"

    @sanity
    Scenario Outline: I expect to see correct pricing for upgraded translation services
        Then I expect that element <element> matches the text <price>
        @chn
        Examples:
            | element                                     | price   |
            | //h2[@class='text-ruby-alpha inline-block'] | "￥1.01" |

    Scenario Outline: I expect FAQs should be functional on upgraded translation page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @chn
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[3] |

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms CTA on upgraded translation page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @chn
        Examples:
            | path                                                                                                | link                                                                                                            | eosElementPath                                           | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[8]/app-lynk/a                              | "/order/ncf/translation-services/simplified-chinese-to-english-translation-premium-editing-plus?source=website" | //*[@id="field_file_upload_order"]/div/div[1]/div[1]/div | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[6]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-premium-editing-plus?source=website" | //*[@id="field_file_upload_order"]/div/div[1]/div[1]/div | "btn-primary-blue" |

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms tabs on upgraded translation page
        Then I expect that element /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1] has the class "rounded-t-lg"
        When I scroll the page to center and click on the element <elementPath>
        Then I expect that element <buttonPath> has the link <link>
        And I scroll the page to center and click on the element <buttonPath>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page

        @chn
        Examples:
            | elementPath                                                                                | buttonPath                                                                                           | link                                                                                                            | eosElementPath                                                                                                                                                     | eosElementClass    |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[1] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-premium-editing-plus?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[5]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[2] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-premium-editing-plus?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[5]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[3] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-premium-editing-plus?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[5]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[4] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-premium-editing-plus?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[5]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[5] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-premium-editing-plus?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[5]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[6] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div/app-lynk/a    | "/order/ncf/translation-services/simplified-chinese-to-english-translation-premium-editing-plus?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[5]/div[2]/button | "btn-primary-blue" |


    @chn
    Scenario: I expect to verify the h1 tags on upgraded translation page
        Then I expect the page to contain tagname h1 to be equal to count 1

    Scenario Outline: I expect to verify all links have the attribute with the required value
        Then I expect that element <element> has the attribute <attribute> with value <value>
        @chn
        Examples:
            | element                                                                                             | attribute | value    |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[6]/app-lynk/a | rel       | nofollow |