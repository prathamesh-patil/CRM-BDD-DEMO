Feature: Japanase to English service translation sample medicine

    Background: I am on japanase to english service translation sample medicine page
        Given I open the website "/services/translation/japanese-to-english/sample/medicine"

    @sanity
    Scenario Outline: I expect that all links on japanese to english translation service sample medicine page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @jpn
        Examples:
            | element                                                                                                                                     | link                                                                                 |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[1]/div[2]/app-subject-area-list/section/div[1]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/allied-healthcare.html"                   |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[1]/div[2]/app-subject-area-list/section/div[2]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/cancer-research.html"                     |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[1]/div[2]/app-subject-area-list/section/div[3]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/neuroscience-and-neurology.html"          |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[1]/div[2]/app-subject-area-list/section/div[4]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/pharmaceutical-sciences.html"             |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[2]/div[2]/app-subject-area-list/section/div[1]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/plant-and-animal-science.html"            |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[2]/div[2]/app-subject-area-list/section/div[2]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/biochemistry-genetics-and-molecular.html" |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[1]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/chemistry.html"                           |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[2]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/earth-atmospheric.html"                   |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[3]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/computer-science.html"                    |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[4]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/electronics.html"                         |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[5]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/engineering.html"                         |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[6]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/environmental-science.html"               |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[7]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/materials-science.html"                   |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[8]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/physics.html"                             |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[4]/div[2]/app-subject-area-list/section/div[1]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/history-political-science.html"           |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[4]/div[2]/app-subject-area-list/section/div[2]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/sociology-anthropology.html"              |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[4]/div[2]/app-subject-area-list/section/div[3]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/literature-linguistics.html"              |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[4]/div[2]/app-subject-area-list/section/div[4]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/psychology.html"                          |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[4]/div[2]/app-subject-area-list/section/div[5]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/arts-media-and-communication.html"        |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[5]/div[2]/app-subject-area-list/section/div[1]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/business-and-finance.html"                |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[5]/div[2]/app-subject-area-list/section/div[2]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/economics-and-statistics.html"            |
            | /html/body/app-root/ng-component/app-service-note-ruby/div/div/div[2]/div[2]/app-lynk[1]/a                                                  | "/services/translation"                                                              |
            | /html/body/app-root/ng-component/app-service-sample-ruby[1]/div/div/div/div[2]/app-lynk[1]/a                                                | "/services/translation/standard-translation-plan"                                    |
            | /html/body/app-root/ng-component/app-service-sample-ruby[2]/div/div/div/div[2]/app-lynk[1]/a                                                | "/services/translation/premium-translation-plan"                                     |
            | /html/body/app-root/ng-component/app-service-sample-ruby[3]/div/div/div/div[2]/app-lynk[1]/a                                                | "/services/translation/top-journal-translation-plan"                                 |

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms CTA on j2e sample medicine page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @jpn
        Examples:
            | path                                                                                         | link                                                                                                                                  | eosElementPath                                                                                                                                                            | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                       | "/order/ncf/translation-services?ss=j2e&pd=js&source=website"                                                                         | //button[@data-description="ncf-screen 2-35-select sl2 bottom-click-select-translation"]                                                                                  | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-service-sample-ruby[1]/div/div/div/div[2]/app-lynk[2]/a | "/order/ncf/j2e-translation-services/standard-translation/document?source=website&loop=enter-wc"                                      | //*[@id="prospect"]/div/div/div/div/div/button                                                                                                                            | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-service-sample-ruby[2]/div/div/div/div[2]/app-lynk[2]/a | "/order/ncf/j2e-translation-services/premium-translation/document/plan?source=website&loop=enter-skip-wc&modal=prospect"              | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-plan/div/div/app-phoenix-plan-items/form/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-service-sample-ruby[3]/div/div/div/div[2]/app-lynk[2]/a | "/order/ncf/j2e-translation-services/japan-tl-plus-scientific-editing/document/plan?source=website&loop=enter-skip-wc&modal=prospect" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-plan/div/div/app-phoenix-plan-items/form/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-service-note-ruby/div/div/div[2]/div[2]/app-lynk[2]/a   | "/order/ncf/translation-services?ss=j2e&pd=js&source=website"                                                                         | //button[@data-description="ncf-screen 2-35-select sl2 bottom-click-select-translation"]                                                                                  | "btn-primary-blue" |