Feature: Editing service pricing

    Background: I am on editing service pricing page
        Given I open the website "/pricing/editing-service"

    @sanity
    Scenario Outline: I expect that all links on editing service pricing page should be verified against expectation
        Then I expect that element <element> has the link <link>

        @chn
        Examples:
            | element                                | link                                 |
            | //*[@id="menuLapis"]/div/app-lynk[1]/a | "/pricing/editing-service"           |
            | //*[@id="menuLapis"]/div/app-lynk[2]/a | "/pricing/translation-service"       |
            | //*[@id="menuLapis"]/div/app-lynk[3]/a | "/pricing/publication-support-packs" |

    @sanity
    Scenario Outline: I expect to match prices on clicking on forms tabs on editing service pricing page
        Then I expect that element <elementTabPath> has the class "rounded-t-lg"
        When I scroll the page to center and click on the element <elementPath>
        Then I expect that element <element> matches the text <price>

        @chn
        Examples:
            | elementTabPath                                                                        | elementPath                                                                                   | element                                                                                                                         | price      |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]    | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[1]/span[5] | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[3]/app-tat-information-block/div/div[2]/p    | "¥0.33/词" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]    | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[1]/span[5] | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[3]/app-tat-information-block/div[2]/div[2]/p | "¥0.27/词" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1]    | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[1]/span[5] | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[3]/app-tat-information-block/div[3]/div[2]/p | "¥0.27/词" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[1] | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[1]/span[5] | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[3]/app-tat-information-block/div/div[2]/p    | "¥0.49/词" |

    @sanity @regression
    Scenario Outline: I expect to verify get quote CTA on top navigation on pricing  page
        When I click on the element <GetQuoteCTA>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | GetQuoteCTA                  | ExpectedUrl                  |
            | //app-navigator[2]//li[4]//a | "/order/ncf/english-editing" |


    @sanity
    Scenario Outline: I expect that all secondary-navigation menu links on editing pricing  page should be verified.
        When I click on the element <Menu>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | Menu                                    | ExpectedUrl                                          |
            | //app-breadcrumb-option-large/div[2]//a | "/services/english-editing/standard-editing-plan"    |
            | //app-breadcrumb-option-large/div[3]//a | "/services/english-editing/premium-editing-plan"     |
            | //app-breadcrumb-option-large/div[4]//a | "/services/english-editing/top-journal-editing-plan" |
            | //app-breadcrumb-option-large/div[5]//a | "/pricing/editing-service"                           |

    @sanity
    Scenario Outline: I expect that all secondary-navigation sub-menu links on editing pricing  page should be verified.
        When I click on the element <Menu>
        Then I expect that element <sub-menu> has the attribute <data> with value <value>
        And I click on the element <sub-menu>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | Menu                                             | sub-menu                                                       | ExpectedUrl                                    | data             | value                                                  |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[2]//a         | "/services/english-editing/compare-plans"      | data-description | editing pricing v2-secondary nav-click-compare plans   |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[4]//a         | "/services/english-editing/re-editing"         | data-description | editing pricing v2-secondary nav-click-re-editing      |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[2]/div[2]/app-lynk/a | "/services/other/book-translation-and-editing" | data-description | editing pricing v2-secondary nav-click-book TL editing |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[5]//a         | "/services/english-editing/sample"             | data-description | editing pricing v2-secondary nav-click-editing sample  |

    @regression
    Scenario Outline: I expect to verify secondary-navigation sub-menu links on editing pricing  page opening in new tab
        When I click on the element <Menu>
        And I wait for <sub-menu> to be displayed on page
        Then I expect that element <sub-menu> has the attribute <data> with value <value>
        And I click on the element <sub-menu>
        Then I expect the url <ExpectedUrl> is opened in a new window
        @jpn
        Examples:
            | Menu                                             | sub-menu                                                       | ExpectedUrl                                                         | data             | value                                                          |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[3]//a         | "/info/editing_serv/support.html"                                   | data-description | editing pricing v2-secondary nav-click-after sales support     |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[6]//a         | "/info/editing_serv/fileformats.html"                               | data-description | editing pricing v2-secondary nav-click-file formats            |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[7]//a         | "/info/editing_serv/curation-english-manuscript-writing-posts.html" | data-description | editing pricing v2-secondary nav-click-how to write manuscript |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[2]/div[3]/app-lynk/a | "/info/ppc/thesis-editing"                                          | data-description | editing pricing v2-secondary nav-click-thesis editing          |


    @sanity @regression
    Scenario Outline: I expect to see correct pricing for standard editing services with dicounts for 0-1500 wordcount for pricing  page
        When I click on the element <0-1500 wordcount tab>
        And I click on the element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][1]//app-fast-plan-banner/div/div
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][1]//div[2]//app-tat-information-block//div[1]/div[2]/p matches the text "18円"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][1]//div[2]//app-tat-information-block//div[1]/div[3]/p matches the text "+5円無料で附帯！"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][1]//div[2]//app-tat-information-block//div[2]/div[2]/p matches the text "18円"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][1]//div[2]//app-tat-information-block//div[2]/div[3]/p matches the text "+5円無料で附帯！"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][1]//div[2]//app-tat-information-block//div[3]/div[2]/p matches the text "12円"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][1]//div[2]//app-tat-information-block//div[3]/div[3]/p matches the text "+5円無料で附帯！"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][1]//div[3]//app-tat-information-block//div[1]/div[2]/p matches the text "6円"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][1]//div[3]//app-tat-information-block//div[1]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][1]//div[5]//app-tat-information-block//div[1]/div[2]/p matches the text "18円"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][1]//div[5]//app-tat-information-block//div[1]/div[3]/p matches the text "+5円無料で附帯！"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][1]//div[5]//app-tat-information-block//div[2]/div[2]/p matches the text "12円"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][1]//div[5]//app-tat-information-block//div[2]/div[3]/p matches the text "+5円無料で附帯！"

        @jpn
        Examples:
            | 0-1500 wordcount tab                                                      |
            | //*[@id='standard-editing']//span[contains(@class,'text-pearl-delta')][2] |



    @sanity @regression
    Scenario Outline: I expect to see correct pricing for standard editing services with dicounts for 1501-4000 word wordcount for pricing  page
        And I click on the element <1501-4000 wordcount tab>
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][2]//div[2]//app-tat-information-block//div[1]/div[2]/p matches the text "18円"
        And I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][2]//div[2]//app-tat-information-block//div[1]/div[3]/p matches the text "+5円無料で附帯！"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][2]//div[2]//app-tat-information-block//div[2]/div[2]/p matches the text "18円"
        And I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][2]//div[2]//app-tat-information-block//div[2]/div[3]/p matches the text "+5円無料で附帯！"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][2]//div[2]//app-tat-information-block//div[3]/div[2]/p matches the text "12円"
        And I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][2]//div[2]//app-tat-information-block//div[3]/div[3]/p matches the text "+5円無料で附帯！"
        And I click on the element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][2]//app-fast-plan-banner/div/div
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][2]//div[3]//app-tat-information-block//div[1]/div[2]/p matches the text "8円"
        And I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][2]//div[3]//app-tat-information-block//div[1]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][2]//div[3]//app-tat-information-block//div[2]/div[2]/p matches the text "7円"
        And I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][2]//div[3]//app-tat-information-block//div[2]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][2]//div[3]//app-tat-information-block//div[3]/div[2]/p matches the text "6円"
        And I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][2]//div[3]//app-tat-information-block//div[3]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][2]//div[5]//app-tat-information-block//div[1]/div[2]/p matches the text "18円"
        And I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][2]//div[5]//app-tat-information-block//div[1]/div[3]/p matches the text "+5円無料で附帯！"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][2]//div[5]//app-tat-information-block//div[2]/div[2]/p matches the text "12円"
        And I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][2]//div[5]//app-tat-information-block//div[2]/div[3]/p matches the text "+5円無料で附帯！"

        @jpn
        Examples:
            | 1501-4000 wordcount tab                                                   |
            | //*[@id='standard-editing']//span[contains(@class,'text-pearl-delta')][4] |

    @sanity @regression
    Scenario Outline: I expect to see correct pricing for standard editing services with dicounts for 4001-7000 word wordcount for pricing  page
        When I click on the element <4001-7000 wordcount tab>
        And I click on the element //div[contains(@class,'relative shadow')][3]//app-fast-plan-banner/div/div
        Then I expect that element //div[contains(@class,'relative shadow')][3]//div[2]//app-tat-information-block//div[1]/div[2]/p matches the text "18円"
        And I expect that element //div[contains(@class,'relative shadow')][3]//div[2]//app-tat-information-block//div[1]/div[3]/p matches the text "+5円無料で附帯！"
        Then I expect that element //div[contains(@class,'relative shadow')][3]//div[2]//app-tat-information-block//div[2]/div[2]/p matches the text "12円"
        And I expect that element //div[contains(@class,'relative shadow')][3]//div[2]//app-tat-information-block//div[2]/div[3]/p matches the text "+5円無料で附帯！"
        Then I expect that element //div[contains(@class,'relative shadow')][3]//div[3]//app-tat-information-block//div[1]/div[2]/p matches the text "9円"
        And I expect that element //div[contains(@class,'relative shadow')][3]//div[3]//app-tat-information-block//div[1]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //div[contains(@class,'relative shadow')][3]//div[3]//app-tat-information-block//div[2]/div[2]/p matches the text "8円"
        And I expect that element //div[contains(@class,'relative shadow')][3]//div[3]//app-tat-information-block//div[2]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //div[contains(@class,'relative shadow')][3]//div[3]//app-tat-information-block//div[3]/div[2]/p matches the text "6.5円"
        And I expect that element //div[contains(@class,'relative shadow')][3]//div[3]//app-tat-information-block//div[3]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //div[contains(@class,'relative shadow')][3]//div[3]//app-tat-information-block//div[4]/div[2]/p matches the text "5.5円"
        And I expect that element //div[contains(@class,'relative shadow')][3]//div[3]//app-tat-information-block//div[4]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //div[contains(@class,'relative shadow')][3]//div[5]//app-tat-information-block//div[1]/div[2]/p matches the text "12円"
        And I expect that element //div[contains(@class,'relative shadow')][3]//div[5]//app-tat-information-block//div[1]/div[3]/p matches the text "+5円無料で附帯！"

        @jpn
        Examples:
            | 4001-7000 wordcount tab                                                   |
            | //*[@id='standard-editing']//span[contains(@class,'text-pearl-delta')][6] |


    @sanity @regression
    Scenario Outline: I expect to see correct pricing for standard editing services with dicounts for 7001-10000 word wordcount for pricing  page
        When I click on the element <7001-10000 wordcount tab>
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][4]//div[2]//app-tat-information-block//div[1]/div[2]/p matches the text "10円"
        And I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][4]//div[2]//app-tat-information-block//div[1]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][4]//div[2]//app-tat-information-block//div[2]/div[2]/p matches the text "9円"
        And I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][4]//div[2]//app-tat-information-block//div[2]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][4]//div[2]//app-tat-information-block//div[3]/div[2]/p matches the text "7円"
        And I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][4]//div[2]//app-tat-information-block//div[3]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][4]//div[2]//app-tat-information-block//div[4]/div[2]/p matches the text "6円"
        And I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][4]//div[2]//app-tat-information-block//div[4]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][4]//div[2]//app-tat-information-block//div[5]/div[2]/p matches the text "5.5円"
        And I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][4]//div[2]//app-tat-information-block//div[5]/div[3]/p matches the text "+5円2円60%割引"
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][4]//div[2]//app-tat-information-block//div[6]/div[2]/p matches the text "5円"
        And I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][4]//div[2]//app-tat-information-block//div[6]/div[3]/p matches the text "+5円2円60%割引"

        @jpn
        Examples:
            | 7001-10000 wordcount tab                                                  |
            | //*[@id='standard-editing']//span[contains(@class,'text-pearl-delta')][8] |

    @sanity @regression
    Scenario Outline: I expect to see correct pricing for standard editing services with dicounts for above 10000 word wordcount for pricing  page
        When I click on the element <above 10000 wordcount tab>
        Then I expect that element //*[@id='standard-editing']//div[contains(@class,'relative shadow')][5]//h2 matches the text "お客様のスケジュールと予算に合わせたお見積りをご用意いたします。"

        @jpn
        Examples:
            | above 10000 wordcount tab                                                  |
            | //*[@id='standard-editing']//span[contains(@class,'text-pearl-delta')][10] |

    @sanity @smoke @regression
    Scenario Outline: I expect to verify get quote CTAs on standard editing pricing table on pricing  page
        When I click on the element <wordcount tab>
        And I click on the element <GetQuoteCTA>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | wordcount tab                                                                             | GetQuoteCTA                                                                | ExpectedUrl                                  |
            | //*[@id="standard-editing"]//div[2]/div[1]//span[contains(@class,'text-pearl-delta')][2]  | //*[@id="standard-editing"]//div[contains(@class,'relative shadow')][1]//a | "order/ncf/english-editing/standard-editing" |
            | //*[@id="standard-editing"]//div[2]/div[1]//span[contains(@class,'text-pearl-delta')][6]  | //*[@id="standard-editing"]//div[contains(@class,'relative shadow')][3]//a | "order/ncf/english-editing/standard-editing" |
            | //*[@id="standard-editing"]//div[2]/div[1]//span[contains(@class,'text-pearl-delta')][8]  | //*[@id="standard-editing"]//div[contains(@class,'relative shadow')][4]//a | "order/ncf/english-editing/standard-editing" |
            | //*[@id="standard-editing"]//div[2]/div[1]//span[contains(@class,'text-pearl-delta')][10] | //*[@id="standard-editing"]//div[contains(@class,'relative shadow')][5]//a | "order/ncf/english-editing/standard-editing" |

        @chn
        Examples:
            | wordcount tab                                                               | GetQuoteCTA                    | ExpectedUrl                                   |
            | //app-pricing-block-ruby[1]//div[contains(@class,'flex shadow')][1]/span[1] | //app-pricing-block-ruby[1]//a | "/order/ncf/english-editing/standard-editing" |
            | //app-pricing-block-ruby[1]//div[contains(@class,'flex shadow')][1]/span[2] | //app-pricing-block-ruby[1]//a | "/order/ncf/english-editing/standard-editing" |
            | //app-pricing-block-ruby[1]//div[contains(@class,'flex shadow')][1]/span[3] | //app-pricing-block-ruby[1]//a | "/order/ncf/english-editing/standard-editing" |
            | //app-pricing-block-ruby[1]//div[contains(@class,'flex shadow')][1]/span[4] | //app-pricing-block-ruby[1]//a | "/order/ncf/english-editing/standard-editing" |
            | //app-pricing-block-ruby[1]//div[contains(@class,'flex shadow')][1]/span[5] | //app-pricing-block-ruby[1]//a | "/order/ncf/english-editing/standard-editing" |



    @sanity @regression
    Scenario Outline: I expect to see correct pricing for premium editing services with dicounts for 0-1500 wordcount for pricing  page
        When I click on the element <0-1500 wordcount tab>
        And I click on the element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][1]//app-fast-plan-banner/div/div
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][1]//div[2]//app-tat-information-block//div[1]/div[2]/p matches the text "24円"
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][1]//div[2]//app-tat-information-block//div[2]/div[2]/p matches the text "20円"
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][1]//div[2]//app-tat-information-block//div[3]/div[2]/p matches the text "16円"
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][1]//div[3]//app-tat-information-block//div[1]/div[2]/p matches the text "12円"
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][1]//div[5]//app-tat-information-block//div[1]/div[2]/p matches the text "24円"
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][1]//div[5]//app-tat-information-block//div[2]/div[2]/p matches the text "18円"

        @jpn
        Examples:
            | 0-1500 wordcount tab                                                     |
            | //*[@id='premium-editing']//span[contains(@class,'text-pearl-delta')][2] |


    @sanity @regression
    Scenario Outline: I expect to see correct pricing for premium editing services with dicounts for 1501-4000 word wordcount for pricing  page
        And I click on the element <1501-4000 wordcount tab>
        When I click on the element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][2]//app-fast-plan-banner/div/div
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][2]//div[2]//app-tat-information-block//div[1]/div[2]/p matches the text "24円"
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][2]//div[2]//app-tat-information-block//div[2]/div[2]/p matches the text "20円"
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][2]//div[2]//app-tat-information-block//div[3]/div[2]/p matches the text "16円"
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][2]//div[3]//app-tat-information-block//div[1]/div[2]/p matches the text "13円"
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][2]//div[3]//app-tat-information-block//div[2]/div[2]/p matches the text "12円"
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][2]//div[3]//app-tat-information-block//div[3]/div[2]/p matches the text "11円"
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][2]//div[5]//app-tat-information-block//div[1]/div[2]/p matches the text "24円"
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][2]//div[5]//app-tat-information-block//div[2]/div[2]/p matches the text "18円"

        @jpn
        Examples:
            | 1501-4000 wordcount tab                                                  |
            | //*[@id='premium-editing']//span[contains(@class,'text-pearl-delta')][4] |


    @sanity @regression
    Scenario Outline: I expect to see correct pricing for premium editing services with dicounts for 4001-7000 word wordcount for pricing  page
        When I click on the element <4001-7000 wordcount tab>
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][3]//div[2]//app-tat-information-block//div[1]/div[2]/p matches the text "16円"
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][3]//div[2]//app-tat-information-block//div[2]/div[2]/p matches the text "13円"
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][3]//div[2]//app-tat-information-block//div[3]/div[2]/p matches the text "12.5円"
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][3]//div[2]//app-tat-information-block//div[4]/div[2]/p matches the text "12円"
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][3]//div[2]//app-tat-information-block//div[5]/div[2]/p matches the text "11円"

        @jpn
        Examples:
            | 4001-7000 wordcount tab                                                  |
            | //*[@id='premium-editing']//span[contains(@class,'text-pearl-delta')][6] |

    @sanity @regression
    Scenario Outline: I expect to see correct pricing for premium editing services with dicounts for 7001-10000 word wordcount for pricing  page
        When I click on the element <7001-10000 wordcount tab>
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][4]//div[2]//app-tat-information-block//div[1]/div[2]/p matches the text "16円"
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][4]//div[2]//app-tat-information-block//div[2]/div[2]/p matches the text "14円"
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][4]//div[2]//app-tat-information-block//div[3]/div[2]/p matches the text "13円"
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][4]//div[2]//app-tat-information-block//div[4]/div[2]/p matches the text "12円"
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][4]//div[2]//app-tat-information-block//div[5]/div[2]/p matches the text "11円"

        @jpn
        Examples:
            | 7001-10000 wordcount tab                                                 |
            | //*[@id='premium-editing']//span[contains(@class,'text-pearl-delta')][8] |

    @sanity @regression
    Scenario Outline: I expect to see correct pricing for premium editing services with dicounts for above 10000 word wordcount for pricing  page
        When I click on the element <above 10000 wordcount tab>
        Then I expect that element //*[@id='premium-editing']//div[contains(@class,'relative shadow')][5]//h2 matches the text "お客様のスケジュールと予算に合わせたお見積りをご用意いたします。"

        @jpn
        Examples:
            | above 10000 wordcount tab                                                 |
            | //*[@id='premium-editing']//span[contains(@class,'text-pearl-delta')][10] |

    @sanity @smoke @regression
    Scenario Outline: I expect to verify get quote CTAs on premium editing  pricing table on pricing  page
        When I click on the element <wordcount tab>
        And I click on the element <GetQuoteCTA>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | wordcount tab                                                                            | GetQuoteCTA                                                               | ExpectedUrl                                 |
            | //*[@id="premium-editing"]//div[2]/div[1]//span[contains(@class,'text-pearl-delta')][2]  | //*[@id="premium-editing"]//div[contains(@class,'relative shadow')][1]//a | "order/ncf/english-editing/premium-editing" |
            | //*[@id="premium-editing"]//div[2]/div[1]//span[contains(@class,'text-pearl-delta')][6]  | //*[@id="premium-editing"]//div[contains(@class,'relative shadow')][3]//a | "order/ncf/english-editing/premium-editing" |
            | //*[@id="premium-editing"]//div[2]/div[1]//span[contains(@class,'text-pearl-delta')][8]  | //*[@id="premium-editing"]//div[contains(@class,'relative shadow')][4]//a | "order/ncf/english-editing/premium-editing" |
            | //*[@id="premium-editing"]//div[2]/div[1]//span[contains(@class,'text-pearl-delta')][10] | //*[@id="premium-editing"]//div[contains(@class,'relative shadow')][5]//a | "order/ncf/english-editing/premium-editing" |

        @chn
        Examples:
            | wordcount tab                                                               | GetQuoteCTA                    | ExpectedUrl                                  |
            | //app-pricing-block-ruby[2]//div[contains(@class,'flex shadow')][1]/span[1] | //app-pricing-block-ruby[2]//a | "/order/ncf/english-editing/premium-editing" |
            | //app-pricing-block-ruby[2]//div[contains(@class,'flex shadow')][1]/span[2] | //app-pricing-block-ruby[2]//a | "/order/ncf/english-editing/premium-editing" |
            | //app-pricing-block-ruby[2]//div[contains(@class,'flex shadow')][1]/span[3] | //app-pricing-block-ruby[2]//a | "/order/ncf/english-editing/premium-editing" |
            | //app-pricing-block-ruby[2]//div[contains(@class,'flex shadow')][1]/span[4] | //app-pricing-block-ruby[2]//a | "/order/ncf/english-editing/premium-editing" |
            | //app-pricing-block-ruby[2]//div[contains(@class,'flex shadow')][1]/span[5] | //app-pricing-block-ruby[2]//a | "/order/ncf/english-editing/premium-editing" |

    @sanity @regression
    Scenario Outline: I expect to see correct pricing for Scientific editing service normal and fast delivery plan on pricing  page
        Then I expect that element <element> matches the text <price>

        @jpn
        Examples:
            | element                                          | price                |
            | //app-pricing-block-opal//div[2]//div[2]//div[3] | "30円24.9円17%割引"  |
            | //app-pricing-block-opal//div[3]//div[3]         | "30円24.9円17%割引"  |
            | //app-pricing-block-opal//div[5]//div[3]         | "34円28.22円17%割引" |
            | //app-pricing-block-opal//div[6]//div[3]         | "34円28.22円17%割引" |

    @sanity @regression
    Scenario Outline: I expect to see correct pricing for Scientific editing service normal and fast delivery plan on pricing  page for JPN partner
        Then I expect that element <element> matches the text <price>

        @jpn
        Examples:
            | element                                          | price                |
            | //app-pricing-block-opal//div[2]//div[2]//div[3] | "30円24.9円17%割引"  |
            | //app-pricing-block-opal//div[3]//div[3]         | "30円24.9円17%割引"  |
            | //app-pricing-block-opal//div[5]//div[3]         | "34円28.22円17%割引" |
            | //app-pricing-block-opal//div[6]//div[3]         | "34円28.22円17%割引" |

    @sanity @smoke @regression
    Scenario Outline: I expect to verify get quote CTAs on scientific editing  pricing table on pricing  page for JPN partner
        When I click on the element <GetQuoteCTA>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | GetQuoteCTA                         | ExpectedUrl                                     |
            | //app-pricing-block-opal//div[7]//a | "/order/ncf/english-editing/scientific-editing" |

    @sanity @smoke @regression
    Scenario Outline: I expect to verify the all get quote CTAs in pricing tables on editing service pricing page for CHN partner
        When I click on the element <word count tab>
        And I click on the element <Get Quote CTA>
        Then I expect the url to contain <Expected Url>

        @chn
        Examples:
            | word count tab                                                              | Get Quote CTA                  | Expected Url                                    |
            | //app-pricing-block-ruby[3]//div[contains(@class,'flex shadow')][1]/span[1] | //app-pricing-block-ruby[3]//a | "/order/ncf/english-editing/scientific-editing" |
            | //app-pricing-block-ruby[3]//div[contains(@class,'flex shadow')][1]/span[2] | //app-pricing-block-ruby[3]//a | "/order/ncf/english-editing/scientific-editing" |
            | //app-pricing-block-ruby[3]//div[contains(@class,'flex shadow')][1]/span[3] | //app-pricing-block-ruby[3]//a | "/order/ncf/english-editing/scientific-editing" |
            | //app-pricing-block-ruby[3]//div[contains(@class,'flex shadow')][1]/span[4] | //app-pricing-block-ruby[3]//a | "/order/ncf/english-editing/scientific-editing" |
            | //app-pricing-block-ruby[3]//div[contains(@class,'flex shadow')][1]/span[5] | //app-pricing-block-ruby[3]//a | "/order/ncf/english-editing/scientific-editing" |

    @regression
    Scenario Outline: I expect to verify the prices on pricing table on editing pricing page for CHN partner
        When I click on the element <1-3000 word count tab>
        And I click on the element //app-pricing-block-ruby[3]//div[contains(@class,'float-right')]
        Then I expect that element //app-pricing-block-ruby[3]//app-tat-information-block[1]//div[2]/p matches the text "¥1.90/词"
        And I expect that element //app-pricing-block-ruby[3]//app-tat-information-block[2]//div[2]/p matches the text "¥2.42/词"
        When I click on the element <3001-5000 word count tab>
        Then I expect that element //app-pricing-block-ruby[3]//app-tat-information-block[1]//div[2]/p matches the text "¥1.69/词"
        And I expect that element //app-pricing-block-ruby[3]//app-tat-information-block[2]//div[2]/p matches the text "¥2.16/词"
        When I click on the element <5001-7000 word count tab>
        Then I expect that element //app-pricing-block-ruby[3]//app-tat-information-block[1]//div[2]/p matches the text "¥1.60/词"
        And I expect that element //app-pricing-block-ruby[3]//app-tat-information-block[2]//div[2]/p matches the text "¥2.04/词"
        When I click on the element <7001-9000 word count tab>
        Then I expect that element //app-pricing-block-ruby[3]//app-tat-information-block[1]//div[2]/p matches the text "¥1.40/词"
        And I expect that element //app-pricing-block-ruby[3]//app-tat-information-block[2]//div[2]/p matches the text "¥1.78/词"
        When I click on the element <9000 plus word count tab>
        Then I expect that element //app-pricing-block-ruby[3]//app-tat-information-block[1]//div[2]/p matches the text "¥1.30/词"
        And I expect that element //app-pricing-block-ruby[3]//app-tat-information-block[2]//div[2]/p matches the text "¥1.65/词"

        @chn
        Examples:
            | 1-3000 word count tab                                                       | 3001-5000 word count tab                                                    | 5001-7000 word count tab                                                    | 7001-9000 word count tab                                                    | 9000 plus word count tab                                                    |
            | //app-pricing-block-ruby[3]//div[contains(@class,'flex shadow')][1]/span[1] | //app-pricing-block-ruby[3]//div[contains(@class,'flex shadow')][1]/span[2] | //app-pricing-block-ruby[3]//div[contains(@class,'flex shadow')][1]/span[3] | //app-pricing-block-ruby[3]//div[contains(@class,'flex shadow')][1]/span[4] | //app-pricing-block-ruby[3]//div[contains(@class,'flex shadow')][1]/span[5] |

    @regression
    Scenario Outline: I expect to open faq answers when clicking on faq questions on pricing  page
        Then I expect that element <faqQuestionPath> has the class <faqQuestionClass>
        When I click on the element <faqQuestionPath>
        Then I expect that element <faqAnswerPath> has the class <faqAnswerClass>

        @jpn
        Examples:
            | faqQuestionPath        | faqQuestionClass | faqAnswerPath          | faqAnswerClass     |
            | //app-faq-block//li[1] | "text-ruby-beta" | //app-faq-block//li[1] | "text-pearl-delta" |
    @regression
    Scenario Outline: I expect to verify CTA below FAQs on pricing  page
        When I click on the element <FaqCTA>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | FaqCTA             | ExpectedUrl |
            | //app-faq-block//a | "/help"     |

    @regression
    Scenario Outline: I expect to verify get quote CTA on featured-block-diamond on pricing  page
        When I click on the element <GetQuoteCTA>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | GetQuoteCTA                     | ExpectedUrl                  |
            | //app-featured-block-diamond//a | "/order/ncf/english-editing" |

    @regression
    Scenario Outline: I expect that the data description of all links/CTA's should verified on pricing  page
        Then I expect that element <element> has the attribute <data-description attribute> containing value <value>

        @jpn
        Examples:
            | element                             | data-description attribute | value                                                           |
            | //app-navigator[2]//li[4]//a        | data-description           | hp-top nav-get quote                                            |
            | //app-pricing-block-opal//div[7]//a | data-description           | editing pricing v2-scientific editing pricing grid-allwordcount |
            | //app-faq-block//a                  | data-description           | ed pricing v2-view more-click-faq                               |
            | //app-featured-block-diamond//a     | data-description           | EditingPricingV2-CTAwidget-GetQuote                             |

    @regression
    Scenario Outline: I expect that the data description of standard and premium editing pricing table CTA's should verified on pricing  page
        When I click on the element <wordcount tab>
        Then I expect that element <GetQuoteCTA> has the attribute <data-description attribute> containing value <value>

        @jpn
        Examples:
            | wordcount tab                                                                             | GetQuoteCTA                                                                | data-description attribute | value                                                       |
            | //*[@id="standard-editing"]//div[2]/div[1]//span[contains(@class,'text-pearl-delta')][2]  | //*[@id="standard-editing"]//div[contains(@class,'relative shadow')][1]//a | data-description           | editing pricing v2-standard editing pricing grid-1-1500     |
            | //*[@id="standard-editing"]//div[2]/div[1]//span[contains(@class,'text-pearl-delta')][6]  | //*[@id="standard-editing"]//div[contains(@class,'relative shadow')][3]//a | data-description           | editing pricing v2-standard editing pricing grid-4000-7000  |
            | //*[@id="standard-editing"]//div[2]/div[1]//span[contains(@class,'text-pearl-delta')][8]  | //*[@id="standard-editing"]//div[contains(@class,'relative shadow')][4]//a | data-description           | editing pricing v2-standard editing pricing grid-7000-10000 |
            | //*[@id="standard-editing"]//div[2]/div[1]//span[contains(@class,'text-pearl-delta')][10] | //*[@id="standard-editing"]//div[contains(@class,'relative shadow')][5]//a | data-description           | editing pricing v2-standard editing pricing grid-10000plus  |
            | //*[@id="premium-editing"]//div[2]/div[1]//span[contains(@class,'text-pearl-delta')][2]   | //*[@id="premium-editing"]//div[contains(@class,'relative shadow')][1]//a  | data-description           | editing pricing v2-premium editing pricing grid-1-1500      |
            | //*[@id="premium-editing"]//div[2]/div[1]//span[contains(@class,'text-pearl-delta')][6]   | //*[@id="premium-editing"]//div[contains(@class,'relative shadow')][3]//a  | data-description           | editing pricing v2-premium editing pricing grid-4000-7000   |
            | //*[@id="premium-editing"]//div[2]/div[1]//span[contains(@class,'text-pearl-delta')][8]   | //*[@id="premium-editing"]//div[contains(@class,'relative shadow')][4]//a  | data-description           | premium editing v2-pricing grid-7000-10000                  |
            | //*[@id="premium-editing"]//div[2]/div[1]//span[contains(@class,'text-pearl-delta')][10]  | //*[@id="premium-editing"]//div[contains(@class,'relative shadow')][5]//a  | data-description           | editing pricing v2-premium editing pricing grid-1000plus    |

        @chn
        Examples:
            | wordcount tab                                                               | GetQuoteCTA                    | data-description attribute | value                                                |
            | //app-pricing-block-ruby[3]//div[contains(@class,'flex shadow')][1]/span[1] | //app-pricing-block-ruby[3]//a | data-description           | Premium SCI Paper Translation-pricing grid-1-1000    |
            | //app-pricing-block-ruby[3]//div[contains(@class,'flex shadow')][1]/span[2] | //app-pricing-block-ruby[3]//a | data-description           | Premium SCI Paper Translation-pricing grid-1001-3000 |
            | //app-pricing-block-ruby[3]//div[contains(@class,'flex shadow')][1]/span[3] | //app-pricing-block-ruby[3]//a | data-description           | Premium SCI Paper Translation-pricing grid-3000-5000 |
            | //app-pricing-block-ruby[3]//div[contains(@class,'flex shadow')][1]/span[4] | //app-pricing-block-ruby[3]//a | data-description           | Premium SCI Paper Translation-pricing grid-5000-7000 |
            | //app-pricing-block-ruby[3]//div[contains(@class,'flex shadow')][1]/span[5] | //app-pricing-block-ruby[3]//a | data-description           | Premium SCI Paper Translation-pricing grid-7000plus  |

