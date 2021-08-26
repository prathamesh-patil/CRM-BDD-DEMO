Feature: Standard editing service

    Background: I am on standard editing service
        Given I open the website "/services/english-editing/standard-editing-plan"

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms CTA on standard editing page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @eng
        Examples:
            | path                                                                                                | link                                                         | eosElementPath                                                                                 | eosElementClass        |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                              | "/order/ncf/english-editing/standard-editing?source=website" | //a[@data-description="ncf-screen 3-36-upload document-click-I dont have document ready-null"] | "text-underline-hover" |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[4]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website" | //a[@data-description="ncf-screen 3-36-upload document-click-I dont have document ready-null"] | "text-underline-hover" |

        @chn
        Examples:
            | path                                                                                                | link                                                         | eosElementPath                                                                                                                                                             | eosElementClass    |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[5]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |

    Scenario Outline: I expect to see correct pricing for standard editing services
        Then I expect that element <element> matches the text <price>
        @chn
        Examples:
            | element                                     | price   |
            | //h2[@class='text-ruby-alpha inline-block'] | "￥0.32" |

    @sanity
    Scenario Outline: I expect that all links on standard editing page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @eng
        Examples:
            | element                                                                                             | link                                                         |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[4]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website" |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                              | "/order/ncf/english-editing/standard-editing?source=website" |

        @chn
        Examples:
            | element                                                                                             | link                                                         |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[5]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website" |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[8]/app-lynk/a                              | "/order/ncf/english-editing/standard-editing?source=website" |

        @pending-kor
        Examples:
            | element                                                                                             | link                                                         |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[5]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website" |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                              | "/order/ncf/english-editing/standard-editing?source=website" |

    Scenario Outline: I expect FAQs should be functional on standard editing page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @eng @chn
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[3] |

    @chn @sanity
    Scenario: I expect to open order page on forms on clicking on service widget forms CTA on standard editing page
        When I add "234" to the inputfield /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-screen-widget-field[1]/div/input
        And I add "abcd@mailinator.com" to the inputfield /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-screen-widget-field[2]/div/input
        And I add "96196368810" to the inputfield /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-screen-widget-field[3]/div/input
        And I click on the button /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-lynk/button
        Then I expect that element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-plan/div/div/app-phoenix-plan-items/form/div[2]/button has the class "btn-primary-blue"
        And I expect the url to contain "/order/ncf/english-editing/standard-editing/document/plan?units=234"
        And I expect the url to contain "pii=ZW1haWw6YWJjZEBtYWlsaW5hdG9yLmNvbSxwaG9uZTo5NjE5NjM2ODgxMA"
        And I should go back to the previous page

    Scenario Outline: I expect the service widget on standard editing page to throw validation in case user enters invalid value in any field
        When I expect that element <field> has the class "w-full"
        And I add <value> to the inputfield <field>
        And I click on the button /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-lynk/button
        Then I expect that element <field> has the class "ng-invalid"
        @chn
        Examples:
            | value            | field                                                                                                                              |
            | "wrongwordcount" | /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-screen-widget-field[1]/div/input |
            | "wrongemail"     | /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-screen-widget-field[2]/div/input |
            | "wrongphone"     | /html/body/app-root/ng-component/app-service-widget/app-screen-widget/form/div[1]/div/div/div/app-screen-widget-field[3]/div/input |

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms tabs on standard editing service page
        Then I expect that element /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1] has the class "rounded-t-lg"
        When I scroll the page to center and click on the element <elementPath>
        Then I expect that element <buttonPath> has the link <link>
        And I scroll the page to center and click on the element <buttonPath>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page

        @chn
        Examples:
            | elementPath                                                                                | buttonPath                                                                                           | link                                                         | eosElementPath                                                                                                                                                             | eosElementClass    |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[1] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div[3]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[2] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div[3]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[3] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div[3]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[4] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/english-editing/standard-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[5] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/div/app-lynk/a    | "/order/ncf/english-editing/standard-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |


    @chn
    Scenario: I expect to verify the h1 tags on standard editing service page
        Then I expect the page to contain tagname h1 to be equal to count 1

    Scenario Outline: I expect to verify all links have the attribute with the required value on standard editing service page
        Then I expect that element <element> has the attribute <attribute> with value <value>
        @chn
        Examples:
            | element                                                                                             | attribute | value    |
            | /html/body/app-root/ng-component/app-plan-detail/div[2]/div/app-plan-card/div/div/div[5]/app-lynk/a | rel       | nofollow |

    Scenario Outline: I expect to match prices on clicking on forms tabs on standard editing service page
        Then I expect that element /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1] has the class "rounded-t-lg"
        When I scroll the page to center and click on the element <elementPath>
        Then I expect that element <element> matches the text <price>

        @chn
        Examples:
            | elementPath                                                                                | element                                                                                                                      | price      |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[5] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/app-tat-information-block/div/div[2]/p    | "¥0.33/词" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[5] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/app-tat-information-block/div[2]/div[2]/p | "¥0.27/词" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]/span[5] | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[3]/app-tat-information-block/div[3]/div[2]/p | "¥0.27/词" |

    @regression
    Scenario Outline: I expect that all secondary-navigation menu links on standard editing  page should be verified.
        When I click on the element <Menu>
        Then I expect the url to contain <ExpectedUrl>
        @jpn
        Examples:
            | Menu                                    | ExpectedUrl                                          |
            | //app-breadcrumb-option-large/div[2]//a | "/services/english-editing/standard-editing-plan"    |
            | //app-breadcrumb-option-large/div[3]//a | "/services/english-editing/premium-editing-plan"     |
            | //app-breadcrumb-option-large/div[4]//a | "/services/english-editing/top-journal-editing-plan" |
            | //app-breadcrumb-option-large/div[5]//a | "/pricing/editing-service"                           |
    @regression
    Scenario Outline: I expect that all secondary-navigation sub-menu links on standard editing  page should be verified.
        When I click on the element <Menu>
        Then I expect that element <sub-menu> has the attribute <data> with value <value>
        And I click on the element <sub-menu>
        Then I expect the url to contain <ExpectedUrl>
        @jpn
        Examples:
            | Menu                                             | sub-menu                                                       | ExpectedUrl                                    | data             | value                                      |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[2]//a         | "/services/english-editing/compare-plans"      | data-description | ses v2-secondary nav-click-compare plans   |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[4]//a         | "/services/english-editing/re-editing"         | data-description | ses v2-secondary nav-click-re-editing      |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[2]/div[2]/app-lynk/a | "/services/other/book-translation-and-editing" | data-description | ses v2-secondary nav-click-book TL editing |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[5]//a         | "/services/english-editing/sample"             | data-description | ses v2-secondary nav-click-editing sample  |

    @regression
    Scenario Outline: I expect to verify secondary-navigation sub-menu links on standard editing  page opening in new tab
        When I click on the element <Menu>
        And I wait for <sub-menu> to be displayed on page
        Then I expect that element <sub-menu> has the attribute <data> with value <value>
        And I click on the element <sub-menu>
        Then I expect the url <ExpectedUrl> is opened in a new window
        @jpn
        Examples:
            | Menu                                             | sub-menu                                                       | ExpectedUrl                                                         | data             | value                                              |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[3]//a         | "/info/editing_serv/support.html"                                   | data-description | ses v2-secondary nav-click-after sales support     |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[6]//a         | "/info/editing_serv/fileformats.html"                               | data-description | ses v2-secondary nav-click-file formats            |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[7]//a         | "/info/editing_serv/curation-english-manuscript-writing-posts.html" | data-description | ses v2-secondary nav-click-how to write manuscript |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[2]/div[3]/app-lynk/a | "/info/ppc/thesis-editing"                                          | data-description | ses v2-secondary nav-click-thesis editing          |

    @sanity
    Scenario Outline: I expect all links for feture block standard editing page should be verified against expectation
        When I click on the element <link>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | link                               | ExpectedUrl                                  |
            | //app-featured-block-diamond[1]//a | "order/ncf/english-editing/standard-editing" |
            | //app-featured-block-diamond[2]//a | "order/ncf/english-editing/standard-editing" |
            | //app-featured-block-diamond[3]//a | "order/ncf/english-editing/standard-editing" |
            | //app-featured-block-diamond[4]//a | "order/ncf/english-editing/standard-editing" |

    @sanity @jpn
    Scenario Outline: I expect link for MRE block in standard editing page should be verified against expectation
        When I scroll to center of element "//app-service-pitch-jasper/div"
        When I click on the element //app-service-pitch-jasper//ul//li[2]//a
        Then I expect the url "/info/editing_serv/formatting.html" is opened in a new window

    @sanity @jpn
    Scenario Outline: I expect to see correct pricing for standard editing services with dicounts for 0-1500 wordcount for  page
        When I click on the element //app-pricing-block-pearl//span[contains(@class,'text-pearl-delta')][2]
        And I click on the element //div[contains(@class,"relative shadow")][1]//app-fast-plan-banner/div/div
        Then I expect that element //div[contains(@class,"relative shadow")][1]//div[2]//app-tat-information-block//div[1]/div[2]/p matches the text "18円"
        Then I expect that element //div[contains(@class,"relative shadow")][1]//div[2]//app-tat-information-block//div[1]/div[3]/p matches the text "+5円無料で付属！"
        Then I expect that element //div[contains(@class,"relative shadow")][1]//div[2]//app-tat-information-block//div[2]/div[2]/p matches the text "18円"
        Then I expect that element //div[contains(@class,"relative shadow")][1]//div[2]//app-tat-information-block//div[2]/div[3]/p matches the text "+5円無料で付属！"
        Then I expect that element //div[contains(@class,"relative shadow")][1]//div[2]//app-tat-information-block//div[3]/div[2]/p matches the text "12円"
        Then I expect that element //div[contains(@class,"relative shadow")][1]//div[2]//app-tat-information-block//div[3]/div[3]/p matches the text "+5円無料で付属！"
        Then I expect that element //div[contains(@class,"relative shadow")][1]//div[3]//app-tat-information-block//div[1]/div[2]/p matches the text "6円"
        Then I expect that element //div[contains(@class,"relative shadow")][1]//div[3]//app-tat-information-block//div[1]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //div[contains(@class,"relative shadow")][1]//div[5]//app-tat-information-block//div[1]/div[2]/p  matches the text "18円"
        Then I expect that element //div[contains(@class,"relative shadow")][1]//div[5]//app-tat-information-block//div[1]/div[3]/p matches the text "+5円無料で付属！"
        Then I expect that element //div[contains(@class,"relative shadow")][1]//div[5]//app-tat-information-block//div[2]/div[2]/p matches the text "12円"
        Then I expect that element //div[contains(@class,"relative shadow")][1]//div[5]//app-tat-information-block//div[2]/div[3]/p matches the text "+5円無料で付属！"


    @sanity @jpn
    Scenario Outline: I expect to see correct pricing for standard editing services with dicounts for 1501-4000 word wordcount for  page
        When I click on the element //app-pricing-block-pearl//span[contains(@class,'text-pearl-delta')][4]
        And I click on the element //div[contains(@class,"relative shadow")][2]//app-fast-plan-banner/div/div
        Then I expect that element //div[contains(@class,"relative shadow")][2]//div[2]//app-tat-information-block//div[1]/div[2]/p matches the text "18円"
        And I expect that element //div[contains(@class,"relative shadow")][2]//div[2]//app-tat-information-block//div[1]/div[3]/p matches the text "+5円無料で付属！"
        Then I expect that element //div[contains(@class,"relative shadow")][2]//div[2]//app-tat-information-block//div[2]/div[2]/p matches the text "18円"
        And I expect that element //div[contains(@class,"relative shadow")][2]//div[2]//app-tat-information-block//div[2]/div[3]/p matches the text "+5円無料で付属！"
        Then I expect that element //div[contains(@class,"relative shadow")][2]//div[2]//app-tat-information-block//div[3]/div[2]/p matches the text "12円"
        And I expect that element //div[contains(@class,"relative shadow")][2]//div[2]//app-tat-information-block//div[3]/div[3]/p matches the text "+5円無料で付属！"
        Then I expect that element //div[contains(@class,"relative shadow")][2]//div[3]//app-tat-information-block//div[1]/div[2]/p matches the text "8円"
        And I expect that element //div[contains(@class,"relative shadow")][2]//div[3]//app-tat-information-block//div[1]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //div[contains(@class,"relative shadow")][2]//div[3]//app-tat-information-block//div[2]/div[2]/p  matches the text "7円"
        And I expect that element //div[contains(@class,"relative shadow")][2]//div[3]//app-tat-information-block//div[2]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //div[contains(@class,"relative shadow")][2]//div[3]//app-tat-information-block//div[3]/div[2]/p matches the text "6円"
        And I expect that element //div[contains(@class,"relative shadow")][2]//div[3]//app-tat-information-block//div[3]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //div[contains(@class,"relative shadow")][2]//div[5]//app-tat-information-block//div[1]/div[2]/p matches the text "18円"
        And I expect that element //div[contains(@class,"relative shadow")][2]//div[5]//app-tat-information-block//div[1]/div[3]/p matches the text "+5円無料で付属！"
        Then I expect that element //div[contains(@class,"relative shadow")][2]//div[5]//app-tat-information-block//div[2]/div[2]/p matches the text "12円"
        And I expect that element //div[contains(@class,"relative shadow")][2]//div[5]//app-tat-information-block//div[2]/div[3]/p matches the text "+5円無料で付属！"


    @sanity  @jpn
    Scenario Outline: I expect to see correct pricing for standard editing services with dicounts for 4001-7000 word wordcount for  page
        When I click on the element //app-pricing-block-pearl//span[contains(@class,'text-pearl-delta')][6]
        And I click on the element //div[contains(@class,"relative shadow")][3]//app-fast-plan-banner/div/div
        Then I expect that element //div[contains(@class,"relative shadow")][3]//div[2]//app-tat-information-block//div[1]/div[2]/p matches the text "18円"
        And I expect that element //div[contains(@class,"relative shadow")][3]//div[2]//app-tat-information-block//div[1]/div[3]/p  matches the text "+5円無料で付属！"
        Then I expect that element //div[contains(@class,"relative shadow")][3]//div[2]//app-tat-information-block//div[2]/div[2]/p matches the text "12円"
        And I expect that element //div[contains(@class,"relative shadow")][3]//div[2]//app-tat-information-block//div[2]/div[3]/p matches the text "+5円無料で付属！"
        Then I expect that element //div[contains(@class,"relative shadow")][3]//div[3]//app-tat-information-block//div[1]/div[2]/p matches the text "9円"
        And I expect that element //div[contains(@class,"relative shadow")][3]//div[3]//app-tat-information-block//div[1]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //div[contains(@class,"relative shadow")][3]//div[3]//app-tat-information-block//div[2]/div[2]/p matches the text "8円"
        And I expect that element //div[contains(@class,"relative shadow")][3]//div[3]//app-tat-information-block//div[2]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //div[contains(@class,"relative shadow")][3]//div[3]//app-tat-information-block//div[3]/div[2]/p matches the text "6.5円"
        And I expect that element //div[contains(@class,"relative shadow")][3]//div[3]//app-tat-information-block//div[3]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //div[contains(@class,"relative shadow")][3]//div[3]//app-tat-information-block//div[4]/div[2]/p matches the text "5.5円"
        And I expect that element //div[contains(@class,"relative shadow")][3]//div[3]//app-tat-information-block//div[4]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //div[contains(@class,"relative shadow")][3]//div[5]//app-tat-information-block//div[1]/div[2]/p matches the text "12円"
        And I expect that element //div[contains(@class,"relative shadow")][3]//div[5]//app-tat-information-block//div[1]/div[3]/p matches the text "+5円無料で付属！"


    @sanity @jpn
    Scenario Outline: I expect to see correct pricing for standard editing services with dicounts for 7001-10000 word wordcount for  page
        When I click on the element //app-pricing-block-pearl//span[contains(@class,'text-pearl-delta')][8]
        Then I expect that element //div[contains(@class,"relative shadow")][4]//div[2]//app-tat-information-block//div[1]/div[2]/p matches the text "10円"
        And I expect that element //div[contains(@class,"relative shadow")][4]//div[2]//app-tat-information-block//div[1]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //div[contains(@class,"relative shadow")][4]//div[2]//app-tat-information-block//div[2]/div[2]/p matches the text "9円"
        And I expect that element //div[contains(@class,"relative shadow")][4]//div[2]//app-tat-information-block//div[2]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //div[contains(@class,"relative shadow")][4]//div[2]//app-tat-information-block//div[3]/div[2]/p matches the text "7円"
        And I expect that element //div[contains(@class,"relative shadow")][4]//div[2]//app-tat-information-block//div[3]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //div[contains(@class,"relative shadow")][4]//div[2]//app-tat-information-block//div[4]/div[2]/p matches the text "6円"
        And I expect that element //div[contains(@class,"relative shadow")][4]//div[2]//app-tat-information-block//div[4]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //div[contains(@class,"relative shadow")][4]//div[2]//app-tat-information-block//div[5]/div[2]/p matches the text "5.5円"
        And I expect that element //div[contains(@class,"relative shadow")][4]//div[2]//app-tat-information-block//div[5]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //div[contains(@class,"relative shadow")][4]//div[2]//app-tat-information-block//div[6]/div[2]/p matches the text "5円"
        And I expect that element //div[contains(@class,"relative shadow")][4]//div[2]//app-tat-information-block//div[6]/div[3]/p matches the text "+5円2円60%割引"


    @sanity @jpn
    Scenario Outline: I expect to see correct pricing for standard editing services with dicounts for above 10000 word wordcount for  page
        When I click on the element //app-pricing-block-pearl//span[contains(@class,'text-pearl-delta')][10]
        Then I expect that element //div[contains(@class,"relative shadow")][5]//h2 matches the text "お客様のスケジュールと予算に合わせたお見積りをご用意いたします。"

    @sanity
    Scenario Outline: I expect that all subject-area and sample page redirections on standard editing  page should be verified.
        When I scroll to center of element "//app-featured-card-pearl/section"
        When I click on the element <SaPage>
        Then I expect the url to contain <SaPagelink>

        @jpn
        Examples:
            | SaPage                                              | SaPagelink                                            |
            | //app-featured-card-pearl//div[1]/div[2]/app-lynk/a | "/subject-expertise/medical-sciences"                 |
            | //app-featured-card-pearl//div[2]/div[2]/app-lynk/a | "/subject-expertise/life-sciences"                    |
            | //app-featured-card-pearl//div[3]/div[2]/app-lynk/a | "/subject-expertise/physical-science-and-engineering" |
            | //app-featured-card-pearl//div[4]/div[2]/app-lynk/a | "/subject-expertise/humanities-and-social-sciences"   |
            | //app-featured-card-pearl//div[5]/div[2]/app-lynk/a | "/subject-expertise/business-and-economics"           |

    @regression @jpn
    Scenario Outline: I expect that all testimonial on standard editing  page should be verified
        When I scroll to center of element "//app-carousel-cards//li[1]//a"
        When I click on the element //app-carousel-cards//li[1]//a
        Then I expect //app-modal-pearl//div[contains(@style,'background-image')] should be displayed on page
        When I click on the button //lib-dialog//button
        And  I click on the element //app-carousel-cards//div[contains(@style,'arrow-right')]
        When I wait for //app-carousel//li//div[contains(@style,'standard-editing-client-0008.png')] to be displayed on page
        And  I click on the element //app-carousel-cards//li[2]//a
        Then I expect //app-modal-pearl//div[contains(@style,'background-image')] should be displayed on page
        When I click on the button //lib-dialog//button
        And  I click on the element //app-carousel-cards//div[contains(@style,'arrow-right')]
        When I wait for //app-carousel//li//div[contains(@style,'standard-editing-client-0010.png')] to be displayed on page
        And  I click on the element //app-carousel-cards//li[3]//a
        Then I expect //app-modal-pearl//div[contains(@style,'background-image')] should be displayed on page
        When I click on the button //lib-dialog//button

    @sanity
    Scenario Outline: I expect that all files displayed in sample block on standard editing  page should be verified
        When I scroll the page to center and click on the element <tab>
        And I wait for <imagefile> to be displayed on page

        @jpn
        Examples:
            | tab                                    | imagefile                                         |
            | //app-service-sample/section//ul/li[1] | //ul/following::img[contains(@src,"medicine")]    |
            | //app-service-sample/section//ul/li[2] | //ul/following::img[contains(@src,"chemistry")]   |
            | //app-service-sample/section//ul/li[3] | //ul/following::img[contains(@src,"psychology")]  |
            | //app-service-sample/section//ul/li[4] | //ul/following::img[contains(@src,"economics")]   |
            | //app-service-sample/section//ul/li[5] | //ul/following::img[contains(@src,"engineering")] |

    @regression
    Scenario Outline: I expect all links for customer quote ruby on standard editing page should be verified against expectation
        When I click on the element <link>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | link                                                    | ExpectedUrl                                          |
            | //app-custom-quote-block-ruby//div[1]/div[3]/app-lynk/a | "/services/english-editing/premium-editing-plan"     |
            | //app-custom-quote-block-ruby//div[2]/div[3]/app-lynk/a | "/services/english-editing/top-journal-editing-plan" |

    @sanity
    Scenario Outline: I expect FAQs should be functional on standard editing  page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        When I click on the element //app-faq-block//app-lynk[contains (@class,'btn btn-primary')]//a
        Then I expect the url to contain "/help"
        @jpn
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[3] |

    @regression
    Scenario Outline: I expect all links for contact details should be verified against expectation on standard editing  page
        Then I expect that element <element> has the link <link>
        And I should go back to the previous page
        Examples:
            | element                           | link                             |
            | //app-feature-lapis[1]/app-lynk/a | "tel:0120502987"                 |
            | //app-feature-lapis[3]/app-lynk/a | "mailto:submissions@editage.com" |

    @regression
    Scenario Outline: I expect that the data description of all links/CTA's should ve verified on standard editing  page
        Then I expect that element <element> has the attribute <data> with value <value>
        @jpn
        Examples:
            | element                                                           | data             | value                                                          |
            | //app-featured-block-diamond[1]//a                                | data-description | ses v2-feature block diamond-get quote 1-click                 |
            | //app-featured-block-diamond[2]//a                                | data-description | ses v2-feature block diamond-get quote 2-click                 |
            | //app-featured-block-diamond[3]//a                                | data-description | ses v2-feature block diamond-get quote 3-click                 |
            | //app-featured-block-diamond[4]//a                                | data-description | ses v2-feature block diamond-get quote 4-click                 |
            | //app-featured-card-pearl//div[1]/div[2]/app-lynk/a               | data-description | ses v2-subject area-medical sciences-click                     |
            | //app-featured-card-pearl//div[2]/div[2]/app-lynk/a               | data-description | ses v2-subject area-life sciences-click                        |
            | //app-featured-card-pearl//div[3]/div[2]/app-lynk/a               | data-description | ses v2-subject area-phy engg-click                             |
            | //app-featured-card-pearl//div[4]/div[2]/app-lynk/a               | data-description | ses v2-subject area-social sciences-click                      |
            | //app-featured-card-pearl//div[5]/div[2]/app-lynk/a               | data-description | ses v2-subject area-business economics-click                   |
            | //app-custom-quote-block-ruby//div[1]/div[3]/app-lynk/a           | data-description | ses v2-other services pitch-premium editing-click              |
            | //app-custom-quote-block-ruby//div[2]/div[3]/app-lynk/a           | data-description | ses v2-other services pitch-top journal editing-click          |
            | //app-faq-block//app-lynk[contains (@class,'btn btn-primary')]//a | data-description | ses v2-content faq-view more-click                             |
            | //app-breadcrumb-option-large/div[1]//a                           | data-description | ses v2-sec nav-ParentEnglishEditing-null-click-Sec Nav-null    |
            | //app-breadcrumb-option-large/div[2]//a                           | data-description | ses v2-sec nav-AdvancedEditing-null-click-Sec Nav-null         |
            | //app-breadcrumb-option-large/div[3]//a                           | data-description | ses v2-sec nav-PremiumEditing-null-click-Sec Nav-null          |
            | //app-breadcrumb-option-large/div[4]//a                           | data-description | ses v2-sec nav-Scientific-null-click-Sec Nav-null              |
            | //app-breadcrumb-option-large/div[5]//a                           | data-description | ses v2-secondary nav-click-editing pricing                     |
            | //div[contains(@class,"relative shadow")][2]//a                   | data-description | advance editing v2-pricing grid-1500-4000-null-click-null-null |
    @sanity
    Scenario Outline: I expect that all pricing CTA links and data description should be verified on standard editing  page should be verified.
        When I click on the element <tab>
        Then I expect that element <CTA> has the attribute <data> with value <value>
        When I click on the element <CTA>
        Then I expect the url to contain <link>
        @jpn
        Examples:
            | tab                                                                      | CTA                                             | data             | value                                                           | link                                         |
            | //app-pricing-block-pearl//span[contains(@class,'text-pearl-delta')][2]  | //div[contains(@class,"relative shadow")][1]//a | data-description | advance editing v2-pricing grid-1-1500-null-click-null-null     | "order/ncf/english-editing/standard-editing" |
            | //app-pricing-block-pearl//span[contains(@class,'text-pearl-delta')][6]  | //div[contains(@class,"relative shadow")][3]//a | data-description | advance editing v2-pricing grid-4000-7000-null-click-null-null  | "order/ncf/english-editing/standard-editing" |
            | //app-pricing-block-pearl//span[contains(@class,'text-pearl-delta')][8]  | //div[contains(@class,"relative shadow")][4]//a | data-description | advance editing v2-pricing grid-7000-10000-null-click-null-null | "order/ncf/english-editing/standard-editing" |
            | //app-pricing-block-pearl//span[contains(@class,'text-pearl-delta')][10] | //div[contains(@class,"relative shadow")][5]//a | data-description | advance editing v2-pricing grid-10000plus-null-click-null-null  | "order/ncf/english-editing/standard-editing" |


    @regression
    Scenario Outline: I expect to verify FAQ answer link on standard editing  page
        When I click on the element <FAQ 8th question>
        And I click on the element <View formatting page link>
        Then I expect the url <ExpectedUrl> is opened in a new window

        @jpn
        Examples:
            | FAQ 8th question       | View formatting page link                                   | ExpectedUrl                          |
            | //app-faq-block//li[8] | //app-faq-block//app-lynk[contains (@class,'underline')]//a | "/info/editing_serv/formatting.html" |


