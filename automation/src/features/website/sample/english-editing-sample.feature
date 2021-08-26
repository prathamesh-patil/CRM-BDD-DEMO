Feature: English editing service sample

    Background: I am on english editing service sample page
        Given I open the website "/services/english-editing/sample"

    @sanity
    Scenario Outline: I expect that all links on english editing service sample page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @jpn
        Examples:
            | element                                                                                                                                     | link                                                                  |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[1]/div[2]/app-subject-area-list/section/div[1]/div[3]/app-lynk/a | "/info/editing_serv/samples/medicine.html"                            |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[1]/div[2]/app-subject-area-list/section/div[2]/div[3]/app-lynk/a | "/info/editing_serv/samples/neuroscience-and-neurology.html"          |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[1]/div[2]/app-subject-area-list/section/div[3]/div[3]/app-lynk/a | "/info/editing_serv/samples/pharmaceutical-sciences.html"             |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[2]/div[2]/app-subject-area-list/section/div[1]/div[3]/app-lynk/a | "/info/editing_serv/samples/biochemistry-genetics-and-molecular.html" |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[2]/div[2]/app-subject-area-list/section/div[2]/div[3]/app-lynk/a | "/info/editing_serv/samples/plantand-animal-science.html"             |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[1]/div[3]/app-lynk/a | "/info/editing_serv/samples/chemistry.html"                           |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[2]/div[3]/app-lynk/a | "/info/editing_serv/samples/earth-atmospheric.html"                   |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[3]/div[3]/app-lynk/a | "/info/editing_serv/samples/computer-science.html"                    |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[4]/div[3]/app-lynk/a | "/info/editing_serv/samples/engineering.html"                         |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[5]/div[3]/app-lynk/a | "/info/editing_serv/samples/environmental-science.html"               |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[6]/div[3]/app-lynk/a | "/info/editing_serv/samples/materials-science.html"                   |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[7]/div[3]/app-lynk/a | "/info/editing_serv/samples/physics.html"                             |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[4]/div[2]/app-subject-area-list/section/div[1]/div[3]/app-lynk/a | "/info/editing_serv/samples/history-political-science.html"           |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[4]/div[2]/app-subject-area-list/section/div[2]/div[3]/app-lynk/a | "/info/editing_serv/samples/sociology-anthropology.html"              |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[4]/div[2]/app-subject-area-list/section/div[3]/div[3]/app-lynk/a | "/info/editing_serv/samples/literature-linguistics.html"              |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[4]/div[2]/app-subject-area-list/section/div[4]/div[3]/app-lynk/a | "/info/editing_serv/samples/psychology.html"                          |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[4]/div[2]/app-subject-area-list/section/div[5]/div[3]/app-lynk/a | "/info/editing_serv/samples/arts-media-and-communication.html"        |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[4]/div[2]/app-subject-area-list/section/div[6]/div[3]/app-lynk/a | "/info/editing_serv/samples/education.html"                           |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[5]/div[2]/app-subject-area-list/section/div[1]/div[3]/app-lynk/a | "/info/editing_serv/samples/business-and-finance.html"                |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[5]/div[2]/app-subject-area-list/section/div[2]/div[3]/app-lynk/a | "/info/editing_serv/samples/economics-and-statistics.html"            |
            | /html/body/app-root/ng-component/app-service-note-ruby/div/div/div[2]/div[2]/app-lynk[1]/a                                                  | "/services/english-editing"                                           |

    @sanity
    Scenario Outline: I expect to open service page on forms by clicking on forms CTA on english editing page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page

        @jpn
        Examples:
            | path                                                                                       | link                                        | eosElementPath                                                                                                  | eosElementClass |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                     | "/order/ncf/english-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div[1]/ul/li[2]/div[1]/h3 | "comp-head"     |
            | /html/body/app-root/ng-component/app-service-note-ruby/div/div/div[2]/div[2]/app-lynk[2]/a | "/order/ncf/english-editing?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div[1]/ul/li[2]/div[1]/h3 | "comp-head"     |
