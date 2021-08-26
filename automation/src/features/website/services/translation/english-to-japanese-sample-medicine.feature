Feature: English to Japanase service translation sample medicine

    Background: I am on english to japanses service translation sample medicine page
        Given I open the website "services/translation/english-to-japanese/sample/medicine"

    @sanity
    Scenario Outline: I expect that all links on english to japanese translation sample medicine page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @jpn
        Examples:
            | element                                                                                                                                     | link                                                                                 |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[1]/div[2]/app-subject-area-list/section/div[1]/div[3]/app-lynk/a | "/info/translation/sample-english-japanese/allied-healthcare.html"                   |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[1]/div[2]/app-subject-area-list/section/div[2]/div[3]/app-lynk/a | "/info/translation/sample-english-japanese/neuroscience-and-neurology.html"          |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[1]/div[2]/app-subject-area-list/section/div[3]/div[3]/app-lynk/a | "/info/translation/sample-english-japanese/pharmaceutical-sciences.html"             |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[2]/div[2]/app-subject-area-list/section/div[1]/div[3]/app-lynk/a | "/info/translation/sample-english-japanese/plant-and-animal-science.html"            |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[2]/div[2]/app-subject-area-list/section/div[2]/div[3]/app-lynk/a | "/info/translation/sample-english-japanese/cancer-research.html"                     |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[1]/div[3]/app-lynk/a | "/info/translation/sample-english-japanese/chemistry.html"                           |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[2]/div[3]/app-lynk/a | "/info/translation/sample-english-japanese/earth-atmospheric.html"                   |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[3]/div[3]/app-lynk/a | "/info/translation/sample-english-japanese/computer-science.html"                    |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[4]/div[3]/app-lynk/a | "/info/translation/sample-english-japanese/electronics.html"                         |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[5]/div[3]/app-lynk/a | "/info/translation/sample-english-japanese/engineering.html"                         |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[6]/div[3]/app-lynk/a | "/info/translation/sample-english-japanese/environmental-science.html"               |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[7]/div[3]/app-lynk/a | "/info/translation/sample-english-japanese/materials-science.html"                   |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[8]/div[3]/app-lynk/a | "/info/translation/sample-english-japanese/physics.html"                             |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[9]/div[3]/app-lynk/a | "/info/translation/sample-english-japanese/biochemistry-genetics-and-molecular.html" |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[4]/div[2]/app-subject-area-list/section/div[1]/div[3]/app-lynk/a | "/info/translation/sample-english-japanese/history-political-science.html"           |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[4]/div[2]/app-subject-area-list/section/div[2]/div[3]/app-lynk/a | "/info/translation/sample-english-japanese/sociology-anthropology.html"              |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[4]/div[2]/app-subject-area-list/section/div[3]/div[3]/app-lynk/a | "/info/translation/sample-english-japanese/literature-linguistics.html"              |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[4]/div[2]/app-subject-area-list/section/div[4]/div[3]/app-lynk/a | "/info/translation/sample-english-japanese/psychology.html"                          |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[4]/div[2]/app-subject-area-list/section/div[5]/div[3]/app-lynk/a | "/info/translation/sample-english-japanese/arts-media-and-communication.html"        |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[5]/div[2]/app-subject-area-list/section/div[1]/div[3]/app-lynk/a | "/info/translation/sample-english-japanese/business-and-finance.html"                |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[5]/div[2]/app-subject-area-list/section/div[2]/div[3]/app-lynk/a | "/info/translation/sample-english-japanese/economics-and-statistics.html"            |
            | /html/body/app-root/ng-component/app-service-note-ruby/div/div/div[2]/div[2]/app-lynk[1]/a                                                  | "/services/translation/english-to-japanese"                                          |
            | /html/body/app-root/ng-component/app-service-sample-ruby[1]/div/div/div/div[2]/app-lynk[1]/a                                                | "/services/translation/english-to-japanese"                                          |
            | /html/body/app-root/ng-component/app-service-sample-ruby[2]/div/div/div/div[2]/app-lynk[1]/a                                                | "/services/translation/english-to-japanese"                                          |

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms CTA on e2j sample medicine page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @jpn
        Examples:
            | path                                                                                         | link                                                                                                                                                            | eosElementPath                                                                                                                                                     | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                       | "/order/ncf/translation-services?ss=e2j&source=website"                                                                                                         | //button[@data-description="ncf-screen 2-22-select sl2 top-click-select-translation"]                                                                              | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-service-sample-ruby[1]/div/div/div/div[2]/app-lynk[2]/a | "/order/ncf/e2j-translation-services/english-to-japanese-level-1/document/plan/add-on/information?source=website&loop=enter-skip-wc&planskip=yes&addonskip=yes" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[7]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-service-sample-ruby[2]/div/div/div/div[2]/app-lynk[2]/a | "/order/ncf/e2j-translation-services/english-to-japanese-level-2/document/plan/add-on/information?loop=enter-skip-wc&planskip=yes&addonskip=yes"                | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[7]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-service-note-ruby/div/div/div[2]/div[2]/app-lynk[2]/a   | "/order/ncf/translation-services?ss=e2j&pd=js&source=website"                                                                                                   | //button[@data-description="ncf-screen 2-22-select sl2 top-click-select-translation"]                                                                              | "btn-primary-blue" |

