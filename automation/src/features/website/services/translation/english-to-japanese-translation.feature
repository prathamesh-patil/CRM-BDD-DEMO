Feature: English to Japanese Translation services

    Background: I am on english to japanese translation service
        Given I open the website "/services/translation/english-to-japanese"

    @sanity
    Scenario Outline: I expect that all links on english to japanese translation page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @jpn
        Examples:
            | element                                                                                              | link                                                                                                                                                            |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                               | "/order/ncf/translation-services?ss=e2j&source=website"                                                                                                         |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[1]/div/app-lynk/a        | "/order/ncf/translation-services?ss=e2j&source=website"                                                                                                         |
            | //app-plan-information-block[1]//a                                                                   | "/order/ncf/e2j-translation-services/english-to-japanese-level-1/document/plan/add-on/information?source=website&loop=enter-skip-wc&planskip=yes&addonskip=yes" |
            | //app-plan-information-block[2]//a                                                                   | "/order/ncf/e2j-translation-services/english-to-japanese-level-2/document/plan/add-on/information?loop=enter-skip-wc&planskip=yes&addonskip=yes"                |
            | //app-plan-information-block[3]//a                                                                   | "/order/ncf/e2j-translation-services/japanese-custom-translation/document/plan/add-on/information?loop=enter-large-wc&addonskip=yes"                            |
            | /html/body/app-root/ng-component/app-featured-block-diamond/section/div/div/div[2]/div[2]/app-lynk/a | "/services/translation/english-to-japanese/sample"                                                                                                              |
            | /html/body/app-root/ng-component/app-service-sample/section/div/div/div[2]/div[2]/div[2]/app-lynk/a  | "/services/translation/english-to-japanese/sample/medicine"                                                                                                     |