Feature: Subject expertise psychology and psychosocial sample

    Background: I am on subject expertise psychology and psychosocial sample page
        Given I open the website "/subject-expertise-samples/psychology-and-psychosocial-healthcare"

    @sanity
    Scenario Outline: I expect that all links on subject expertise psychology and psychosocial sample page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @eng
        Examples:
            | element                                                                                                                                  | link                                                                |
            | /html/body/app-root/ng-component/app-service-sample-ruby[1]/div/div/div/div[2]/app-lynk[1]/a                                             | "/services/english-editing/standard-editing-plan"                   |
            | /html/body/app-root/ng-component/app-service-sample-ruby[2]/div/div/div/div[2]/app-lynk[1]/a                                             | "/services/english-editing/premium-editing-plan"                    |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[1]/div[2]/app-subject-area-list/section/div/div[3]/app-lynk/a | "/subject-expertise-samples/medicine"                               |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[2]/div[2]/app-subject-area-list/section/div/div[3]/app-lynk/a | "/subject-expertise-samples/molecular-biology"                      |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div/div[3]/app-lynk/a | "/subject-expertise-samples/chemistry"                              |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[4]/div[2]/app-subject-area-list/section/div/div[3]/app-lynk/a | "/subject-expertise-samples/psychology-and-psychosocial-healthcare" |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[5]/div[2]/app-subject-area-list/section/div/div[3]/app-lynk/a | "/subject-expertise-samples/economics-and-statistics"               |
            | /html/body/app-root/ng-component/app-compare-services/div/div/div/div[3]/app-lynk[1]/a                                                   | "/services"                                                         |

    @sanity
    Scenario Outline: I expect to open service page on forms by clicking on forms CTA on subject expertise psychology and psychosocial sample page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @eng
        Examples:
            | path                                                                                         | link                                        | eosElementPath                                                                                                  | eosElementClass |
            | /html/body/app-root/ng-component/app-service-sample-ruby[1]/div/div/div/div[2]/app-lynk[2]/a | "/order/ncf/english-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div[1]/ul/li[2]/div[1]/h3 | "comp-head"     |
            | /html/body/app-root/ng-component/app-service-sample-ruby[2]/div/div/div/div[2]/app-lynk[2]/a | "/order/ncf/english-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div[1]/ul/li[2]/div[1]/h3 | "comp-head"     |

    @sanity
    Scenario Outline: I expect to open service page on forms by clicking on forms CTA on subject expertise samples page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the link <eosElementLink>
        And I should go back to the previous page
        @eng
        Examples:
            | path                                                                                   | link                         | eosElementPath                                                                                                              | eosElementLink                              |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                 | "/order/ncf?source=website"  | /html/body/app-root/ng-component/div/section/div/ng-component/div/ng-component/ng-component/div[1]/div/div/div/div[1]/div/a | "/order/ncf/english-editing?source=website" |
            | /html/body/app-root/ng-component/app-compare-services/div/div/div/div[3]/app-lynk[2]/a | "/order/ncf/?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/ng-component/ng-component/div[1]/div/div/div/div[1]/div/a | "/order/ncf/english-editing?source=website" |

    Scenario Outline: I expect FAQs should be functional on subject expertise psychology and psychosocial sample page
        When I scroll the page to end and click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I scroll the page to end and click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @eng
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[2] |