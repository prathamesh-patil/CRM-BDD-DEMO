Feature: Scientific editing service

    Background: I am on scientific editing service
        Given I open the website "/services/english-editing/top-journal-editing-plan"

    Scenario Outline: I expect to see correct pricing for scientific editing services
        Then I expect that element <element> matches the text <price>
        @chn
        Examples:
            | element                                     | price  |
            | //h2[@class='text-ruby-alpha inline-block'] | "￥1.4" |

    @sanity
    Scenario Outline: I expect that all links on scientific editing page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @eng
        Examples:
            | element                                                                                             | link                                                           |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[5]/app-lynk/a | "/order/ncf/english-editing/scientific-editing?source=website" |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                              | "/order/ncf/english-editing/scientific-editing?source=website" |

        @chn
        Examples:
            | element                                                                                             | link                                                           |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[6]/app-lynk/a | "/order/ncf/english-editing/scientific-editing?source=website" |


    @chn @sanity
    Scenario: I expect the service widget on scientific editing page should be functional
        When I add "234" to the inputfield /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-screen-widget-field[1]/div/input
        And I add "abcd@mailinator.com" to the inputfield /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-screen-widget-field[2]/div/input
        And I add "96196368810" to the inputfield /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-screen-widget-field[3]/div/input
        And I click on the button /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-lynk/button
        Then I expect the url to contain "/order/ncf/english-editing/scientific-editing"
        And I expect the url to contain "units=234"
        And I expect the url to contain "pii=ZW1haWw6YWJjZEBtYWlsaW5hdG9yLmNvbSxwaG9uZTo5NjE5NjM2ODgxMA"

    Scenario Outline: I expect the service widget on scientific editing page to throw validation in case user enters invalid value in any field
        When I add <value> to the inputfield <field>
        And I click on the button /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-lynk/button
        Then I expect that element <field> has the class "ng-invalid"
        @chn
        Examples:
            | value            | field                                                                                                                              |
            | "wrongwordcount" | /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-screen-widget-field[1]/div/input |
            | "wrongemail"     | /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-screen-widget-field[2]/div/input |
            | "wrongphone"     | /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-screen-widget-field[3]/div/input |

    Scenario Outline: I expect FAQs should be functional on scientific editing page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @eng @chn @pending-kor
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[3] |

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms CTA on scientific editing page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @eng
        Examples:
            | path                                                                                                | link                                                           | eosElementPath                                                                                  | eosElementClass        |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                              | "/order/ncf/english-editing/scientific-editing?source=website" | //a[@data-description="ncf-screen 3-102-upload document-click-I dont have document ready-null"] | "text-underline-hover" |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[5]/app-lynk/a | "/order/ncf/english-editing/scientific-editing?source=website" | //a[@data-description="ncf-screen 3-102-upload document-click-I dont have document ready-null"] | "text-underline-hover" |

        @chn
        Examples:
            | path                                                                                                | link                                                           | eosElementPath                                                                                                                                                             | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[8]/app-lynk/a                              | "/order/ncf/english-editing/scientific-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[6]/app-lynk/a | "/order/ncf/english-editing/scientific-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |

    @chn
    Scenario: I expect to open order page on forms on clicking on service widget forms CTA on scientific editing page
        When I add "234" to the inputfield /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-screen-widget-field[1]/div/input
        And I add "abcd@mailinator.com" to the inputfield /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-screen-widget-field[2]/div/input
        And I add "96196368810" to the inputfield /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-screen-widget-field[3]/div/input
        And I click on the button /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-lynk/button
        Then I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-plan/div/div/app-phoenix-plan-items/form/div[2]/button has the class "btn-primary-blue"
        And I should go back to the previous page

    @chn
    Scenario: I expect to verify the h1 tags on scientific editing service page
        Then I expect the page to contain tagname h1 to be equal to count 1

    Scenario Outline: I expect to verify all links have the attribute with the required value on scientific editing service page
        Then I expect that element <element> has the attribute <attribute> with value <value>
        @chn
        Examples:
            | element                                                                                             | attribute | value    |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[6]/app-lynk/a | rel       | nofollow |

    @sanity
    Scenario Outline: I expect to verify QnA offer banner on scientific editing page
        When I click on the element <ViewDetailsLink>
        And I click on the element <getQuoteCTA>
        Then I expect the url to contain <ExpectedUrl>

        @eng @chn
        Examples:
            | ViewDetailsLink                                    | getQuoteCTA         | ExpectedUrl                                    |
            | //app-plan-cards-ruby//div[2]//div[3]//app-lynk//a | //app-modal-jade//a | "order/ncf/english-editing/scientific-editing" |

    @regression
    Scenario Outline: I expect to verify the prices with data description of get quote CTAs of pricing table on scientific editing page for CHN partner
        When I click on the element <1-3000 word count tab>
        And I click on the element //app-pricing-block-ruby//div[contains(@class,'float-right')]
        Then I expect that element //app-tat-information-block[1]//div[2]/p matches the text "¥1.90/词"
        And I expect that element //app-tat-information-block[2]//div[2]/p matches the text "¥2.42/词"
        And I expect that element //app-pricing-block-ruby//a  has the attribute data-description containing value Premium SCI Paper Translation-pricing grid-1-1000
        When I click on the element <3001-5000 word count tab>
        Then I expect that element //app-tat-information-block[1]//div[2]/p matches the text "¥1.69/词"
        And I expect that element //app-tat-information-block[2]//div[2]/p matches the text "¥2.16/词"
        And I expect that element //app-pricing-block-ruby//a  has the attribute data-description containing value Premium SCI Paper Translation-pricing grid-1001-3000
        When I click on the element <5001-7000 word count tab>
        Then I expect that element //app-tat-information-block[1]//div[2]/p matches the text "¥1.60/词"
        And I expect that element //app-tat-information-block[2]//div[2]/p matches the text "¥2.04/词"
        And I expect that element //app-pricing-block-ruby//a  has the attribute data-description containing value Premium SCI Paper Translation-pricing grid-3000-5000
        When I click on the element <7001-9000 word count tab>
        Then I expect that element //app-tat-information-block[1]//div[2]/p matches the text "¥1.40/词"
        And I expect that element //app-tat-information-block[2]//div[2]/p matches the text "¥1.78/词"
        And I expect that element //app-pricing-block-ruby//a  has the attribute data-description containing value Premium SCI Paper Translation-pricing grid-5000-7000
        When I click on the element <9000 plus word count tab>
        Then I expect that element //app-tat-information-block[1]//div[2]/p matches the text "¥1.30/词"
        And I expect that element //app-tat-information-block[2]//div[2]/p matches the text "¥1.65/词"
        And I expect that element //app-pricing-block-ruby//a  has the attribute data-description containing value Premium SCI Paper Translation-pricing grid-7000plus

        @chn
        Examples:
            | 1-3000 word count tab                                                    | 3001-5000 word count tab                                                 | 5001-7000 word count tab                                                 | 7001-9000 word count tab                                                 | 9000 plus word count tab                                                 |
            | //app-pricing-block-ruby//div[contains(@class,'flex shadow')][1]/span[1] | //app-pricing-block-ruby//div[contains(@class,'flex shadow')][1]/span[2] | //app-pricing-block-ruby//div[contains(@class,'flex shadow')][1]/span[3] | //app-pricing-block-ruby//div[contains(@class,'flex shadow')][1]/span[4] | //app-pricing-block-ruby//div[contains(@class,'flex shadow')][1]/span[5] |

    @sanity
    Scenario Outline: I expect to verify the get quote CTAs in pricing table on scientific editing page
        When I click on the element <word count tab>
        And I click on the element <Get Quote CTA>
        Then I expect the url to contain <Expected Url>

        @chn
        Examples:
            | word count tab                                                           | Get Quote CTA               | Expected Url                                    |
            | //app-pricing-block-ruby//div[contains(@class,'flex shadow')][1]/span[1] | //app-pricing-block-ruby//a | "/order/ncf/english-editing/scientific-editing" |
            | //app-pricing-block-ruby//div[contains(@class,'flex shadow')][1]/span[2] | //app-pricing-block-ruby//a | "/order/ncf/english-editing/scientific-editing" |
            | //app-pricing-block-ruby//div[contains(@class,'flex shadow')][1]/span[3] | //app-pricing-block-ruby//a | "/order/ncf/english-editing/scientific-editing" |
            | //app-pricing-block-ruby//div[contains(@class,'flex shadow')][1]/span[4] | //app-pricing-block-ruby//a | "/order/ncf/english-editing/scientific-editing" |
            | //app-pricing-block-ruby//div[contains(@class,'flex shadow')][1]/span[5] | //app-pricing-block-ruby//a | "/order/ncf/english-editing/scientific-editing" |