Feature: Japanase to English service translation sample

    Background: I am on japanase to english service translation sample page
        Given I open the website "/services/translation/japanese-to-english/sample"

    @sanity
    Scenario Outline: I expect that all links on japanese to english translation service sample page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @jpn
        Examples:
            | element                                                                                                                                     | link                                                                       |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                                                                      | "/order/ncf/translation-services?ss=j2e&pd=js&source=website"              |
            | //*[@id="menuLapis"]/div/app-lynk[1]/a                                                                                                      | "/services/translation/japanese-to-english/sample"                         |
            | //*[@id="menuLapis"]/div/app-lynk[2]/a                                                                                                      | "/services/translation/english-to-japanese/sample"                         |
            | /html/body/app-root/ng-component/app-service-note-ruby/div/div/div[2]/div[2]/app-lynk[1]/a                                                  | "/services/translation"                                                    |
            | /html/body/app-root/ng-component/app-service-note-ruby/div/div/div[2]/div[2]/app-lynk[2]/a                                                  | "/order/ncf/translation-services?ss=j2e&pd=js&source=website"              |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[1]/div[2]/app-subject-area-list/section/div[1]/div[3]/app-lynk/a | "/services/translation/japanese-to-english/sample/medicine"                |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[2]/div[2]/app-subject-area-list/section/div[1]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/plant-and-animal-science.html"  |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[3]/div[2]/app-subject-area-list/section/div[1]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/chemistry.html"                 |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[4]/div[2]/app-subject-area-list/section/div[1]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/history-political-science.html" |
            | /html/body/app-root/ng-component/app-subject-area-opal/section/div/div/div[5]/div[2]/app-subject-area-list/section/div[1]/div[3]/app-lynk/a | "/info/translation/sample-japanese-english/business-and-finance.html"      |