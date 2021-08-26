Feature: Translation service pricing

    Background: I am on translation service pricing page
        Given I open the website "/pricing/translation-service"

    @sanity
    Scenario Outline: I expect that all links on translation service pricing page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @jpn
        Examples:
            | element                                                                                                    | link                                                 |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[3]/section/div/div/div/div[2]/div[2]/app-lynk[1]/a | "/services/translation/top-journal-translation-plan" |
            | /html/body/app-root/ng-component/app-service-pitch-ruby/div[2]/div/div[1]/div/div[2]/div[2]/div/app-lynk/a | "/info/ppc/thesis-translation/"                      |
        @chn
        Examples:
            | element                                | link                                 |
            | //*[@id="menuLapis"]/div/app-lynk[1]/a | "/pricing/editing-service"           |
            | //*[@id="menuLapis"]/div/app-lynk[2]/a | "/pricing/translation-service"       |
            | //*[@id="menuLapis"]/div/app-lynk[3]/a | "/pricing/publication-support-packs" |

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms CTA on translation service pricing page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page

        @jpn
        Examples:
            | path                                                                                                       | link                                                                                                                                              | eosElementPath                                                                                                                                                            | eosElementClass    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                                     | "/order/ncf/translation-services?ss=j2e&pd=js&source=website"                                                                                     | *//ul[@class ="tc-table"]/li[1]//h3                                                                                                                                       | "tc-head-text"     |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[3]/section/div/div/div/div[2]/div[2]/app-lynk[2]/a | "/order/ncf/j2e-translation-services/japan-tl-plus-scientific-editing?source=website"                                                             | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-plan/div/div/app-phoenix-plan-items/form/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-featured-block-diamond[3]/section/div/div/div[2]/div[2]/app-lynk/a    | "/order/ncf/j2e-translation-services/japanese-custom-translation/document/plan/add-on/information?ss=j2e&pd=lj&loop=enter-large-wc&addonskip=yes" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[7]/div[2]/button        | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-service-pitch-opal/section/div/div[2]/div[3]/app-lynk/a               | "/order/ncf/translation-services?ss=j2e&pd=js&source=website"                                                                                     | //button[@data-description="ncf-screen 2-35-select sl2 bottom-click-select-translation"]                                                                                  | "btn-primary-blue" |

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on forms tabs on translation service pricing page
        Then I expect that element /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1] has the class "rounded-t-lg"
        When I scroll the page to end and click on the element <elementPath>
        Then I expect that element <buttonPath> has the link <link>
        And I scroll the page to end and click on the element <buttonPath>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page

        @jpn
        Examples:
            | elementPath                                                                                   | buttonPath                                                                                                 | link                                                                                                                                                | eosElementPath                                                                                                                                                     | eosElementClass    |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[1]/span[1] | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[3]/div[2]/app-lynk[2]/a | "/order/ncf/j2e-translation-services/standard-translation?source=website"                                                                           | //*[@id="prospect"]/div/div/div/div/div/button                                                                                                                     | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[1]/span[2] | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[3]/div[2]/app-lynk[2]/a | "/order/ncf/j2e-translation-services/standard-translation?source=website"                                                                           | //*[@id="prospect"]/div/div/div/div/div/button                                                                                                                     | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[1]/span[3] | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[3]/div[2]/app-lynk[2]/a | "/order/ncf/j2e-translation-services/standard-translation?source=website"                                                                           | //*[@id="prospect"]/div/div/div/div/div/button                                                                                                                     | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[1]/span[4] | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[3]/div[2]/app-lynk[2]/a | "/order/ncf/j2e-translation-services/standard-translation?source=website"                                                                           | //*[@id="prospect"]/div/div/div/div/div/button                                                                                                                     | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[1]/span[5] | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[3]/div/app-lynk[2]/a    | "/order/ncf/j2e-translation-services/japanese-custom-translation/document/plan/add-on/information?source=website&loop=enter-large-wc&addonskip=yes" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[7]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[1]/span[1] | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[3]/div[2]/app-lynk[2]/a | "/order/ncf/j2e-translation-services/premium-translation?source=website"                                                                            | //*[@id="prospect"]/div/div/div/div/div/button                                                                                                                     | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[1]/span[2] | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[3]/div[2]/app-lynk[2]/a | "/order/ncf/j2e-translation-services/premium-translation?source=website"                                                                            | //*[@id="prospect"]/div/div/div/div/div/button                                                                                                                     | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[1]/span[3] | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[3]/div[2]/app-lynk[2]/a | "/order/ncf/j2e-translation-services/premium-translation?source=website"                                                                            | //*[@id="prospect"]/div/div/div/div/div/button                                                                                                                     | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[1]/span[4] | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[3]/div[2]/app-lynk[2]/a | "/order/ncf/j2e-translation-services/premium-translation?source=website"                                                                            | //*[@id="prospect"]/div/div/div/div/div/button                                                                                                                     | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[1]/span[5] | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[3]/div/app-lynk[2]/a    | "/order/ncf/j2e-translation-services/japanese-custom-translation/document/plan/add-on/information?source=website&loop=enter-large-wc&addonskip=yes" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[7]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[4]/section/div/div/div/div[1]/span[1] | /html/body/app-root/ng-component/app-pricing-block-ruby[4]/section/div/div/div/div[3]/div[2]/app-lynk[2]/a | "/order/ncf/j2e-translation-services/basic-translation/document/plan?ss=j2e&pd=ou&source=website&loop=enter-skip-wc"                                | //*[@id="prospect"]/div/div/div/div/div/button                                                                                                                     | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[4]/section/div/div/div/div[1]/span[2] | /html/body/app-root/ng-component/app-pricing-block-ruby[4]/section/div/div/div/div[3]/div[2]/app-lynk[2]/a | "/order/ncf/j2e-translation-services/basic-translation/document/plan?ss=j2e&pd=ou&source=website&loop=enter-skip-wc"                                | //*[@id="prospect"]/div/div/div/div/div/button                                                                                                                     | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[4]/section/div/div/div/div[1]/span[3] | /html/body/app-root/ng-component/app-pricing-block-ruby[4]/section/div/div/div/div[3]/div[2]/app-lynk[2]/a | "/order/ncf/j2e-translation-services/basic-translation/document/plan?ss=j2e&pd=ou&source=website&loop=enter-skip-wc"                                | //*[@id="prospect"]/div/div/div/div/div/button                                                                                                                     | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[4]/section/div/div/div/div[1]/span[4] | /html/body/app-root/ng-component/app-pricing-block-ruby[4]/section/div/div/div/div[3]/div[2]/app-lynk[2]/a | "/order/ncf/j2e-translation-services/basic-translation/document/plan?ss=j2e&pd=ou&source=website&loop=enter-skip-wc"                                | //*[@id="prospect"]/div/div/div/div/div/button                                                                                                                     | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[4]/section/div/div/div/div[1]/span[5] | /html/body/app-root/ng-component/app-pricing-block-ruby[4]/section/div/div/div/div[3]/div/app-lynk[2]/a    | "/order/ncf/j2e-translation-services/basic-translation/document?loop=enter-wc&source=website"                                                       | //*[@id="prospect"]/div/div/div/div/div/button                                                                                                                     | "btn-primary-blue" |

        @chn
        Examples:
            | elementPath                                                                                   | buttonPath                                                                                              | link                                                                                                            | eosElementPath                                                                                                                                                             | eosElementClass    |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[1]/span[1] | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-level-1?source=website"                          | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[1]/span[2] | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-level-1?source=website"                          | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[1]/span[3] | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-level-1?source=website"                          | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[1]/span[4] | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-level-1?source=website"                          | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[1]/span[5] | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-level-1?source=website"                          | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[1]/span[6] | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[3]/div/app-lynk/a    | "/order/ncf/translation-services/simplified-chinese-to-english-level-1?source=website"                          | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[1]/span[1] | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-standard-editing?source=website"     | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[1]/span[2] | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-standard-editing?source=website"     | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[1]/span[3] | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-standard-editing?source=website"     | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[1]/span[4] | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-standard-editing?source=website"     | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[1]/span[5] | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-standard-editing?source=website"     | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[1]/span[6] | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[3]/div/app-lynk/a    | "/order/ncf/translation-services/simplified-chinese-to-english-translation-standard-editing?source=website"     | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-document/div/section/div[1]/div[1]/div[1]/div[2]/button | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[3]/section/div/div/div/div[1]/span[1] | /html/body/app-root/ng-component/app-pricing-block-ruby[3]/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-premium-editing-plus?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[5]/div[2]/button         | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[3]/section/div/div/div/div[1]/span[2] | /html/body/app-root/ng-component/app-pricing-block-ruby[3]/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-premium-editing-plus?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[5]/div[2]/button         | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[3]/section/div/div/div/div[1]/span[3] | /html/body/app-root/ng-component/app-pricing-block-ruby[3]/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-premium-editing-plus?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[5]/div[2]/button         | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[3]/section/div/div/div/div[1]/span[4] | /html/body/app-root/ng-component/app-pricing-block-ruby[3]/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-premium-editing-plus?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[5]/div[2]/button         | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[3]/section/div/div/div/div[1]/span[5] | /html/body/app-root/ng-component/app-pricing-block-ruby[3]/section/div/div/div/div[3]/div[2]/app-lynk/a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-premium-editing-plus?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[5]/div[2]/button         | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[3]/section/div/div/div/div[1]/span[6] | /html/body/app-root/ng-component/app-pricing-block-ruby[3]/section/div/div/div/div[3]/div/app-lynk/a    | "/order/ncf/translation-services/simplified-chinese-to-english-translation-premium-editing-plus?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-information/div[2]/div/div/div[5]/div[2]/button         | "btn-primary-blue" |

    Scenario Outline: I expect to that all links on translation service pricing page should be verified against expectation on all tabs
        Then I expect that element /html/body/app-root/ng-component/app-pricing-block-ruby/section/div/div/div/div[1] has the class "rounded-t-lg"
        When I scroll the page to end and click on the element <elementPath>
        Then I expect that element <element> has the link <link>

        @jpn
        Examples:
            | elementPath                                                                                   | element                                                                                                    | link                                              |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[1]/span[1] | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[3]/div[2]/app-lynk[1]/a | "/services/translation/standard-translation-plan" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[1]/span[2] | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[3]/div[2]/app-lynk[1]/a | "/services/translation/standard-translation-plan" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[1]/span[3] | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[3]/div[2]/app-lynk[1]/a | "/services/translation/standard-translation-plan" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[1]/span[4] | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[3]/div[2]/app-lynk[1]/a | "/services/translation/standard-translation-plan" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[1]/span[5] | /html/body/app-root/ng-component/app-pricing-block-ruby[1]/section/div/div/div/div[3]/div/app-lynk[1]/a    | "/services/translation/standard-translation-plan" |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[1]/span[1] | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[3]/div[2]/app-lynk[1]/a | "/services/translation/premium-translation-plan"  |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[1]/span[2] | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[3]/div[2]/app-lynk[1]/a | "/services/translation/premium-translation-plan"  |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[1]/span[3] | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[3]/div[2]/app-lynk[1]/a | "/services/translation/premium-translation-plan"  |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[1]/span[4] | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[3]/div[2]/app-lynk[1]/a | "/services/translation/premium-translation-plan"  |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[1]/span[5] | /html/body/app-root/ng-component/app-pricing-block-ruby[2]/section/div/div/div/div[3]/div/app-lynk[1]/a    | "/services/translation/premium-translation-plan"  |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[4]/section/div/div/div/div[1]/span[1] | /html/body/app-root/ng-component/app-pricing-block-ruby[4]/section/div/div/div/div[3]/div[2]/app-lynk[1]/a | "/services/translation/basic-translation-plan"    |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[4]/section/div/div/div/div[1]/span[2] | /html/body/app-root/ng-component/app-pricing-block-ruby[4]/section/div/div/div/div[3]/div[2]/app-lynk[1]/a | "/services/translation/basic-translation-plan"    |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[4]/section/div/div/div/div[1]/span[3] | /html/body/app-root/ng-component/app-pricing-block-ruby[4]/section/div/div/div/div[3]/div[2]/app-lynk[1]/a | "/services/translation/basic-translation-plan"    |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[4]/section/div/div/div/div[1]/span[4] | /html/body/app-root/ng-component/app-pricing-block-ruby[4]/section/div/div/div/div[3]/div[2]/app-lynk[1]/a | "/services/translation/basic-translation-plan"    |
            | /html/body/app-root/ng-component/app-pricing-block-ruby[4]/section/div/div/div/div[1]/span[5] | /html/body/app-root/ng-component/app-pricing-block-ruby[4]/section/div/div/div/div[3]/div/app-lynk[1]/a    | "/services/translation/basic-translation-plan"    |

    Scenario Outline: I expect FAQs should be functional on translation service pricing page
        When I scroll the page to end and click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I scroll the page to end and click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @jpn
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[2] |