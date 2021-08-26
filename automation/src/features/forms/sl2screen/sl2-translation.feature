# @author Sherin

Feature: New user form sl2 tranlsation page

    Background: I am on new user sl2 translation screen
        Given I open the eos "/order/ncf/translation-services?ss=j2e&pd=js"

    @sanity
    Scenario Outline: I expect that all clicks on first sl2 service tab is working on translation sl2 screen
        When I click on the element <element>
        Then I expect the url to contain <link>

        @jpn
        Examples:
            | element                                                                   | link                                                                                                                           |
            | //label[@class='tc-switcher-btn left']                                    | "/order/ncf/translation-services?ss=j2e&pd=js"                                                                                 |
            | //div[@class='journal-block']//li[2]//button[@angularticslabel="top cta"] | "/order/ncf/j2e-translation-services/standard-translation/document/plan?ss=j2e&pd=js&loop=enter-skip-wc&slab=2001"             |
            | //div[@class='journal-block']//li[3]//button[@angularticslabel="top cta"] | "/order/ncf/j2e-translation-services/premium-translation/document/plan?ss=j2e&pd=js&loop=enter-skip-wc&slab=2001"              |
            | //div[@class='journal-block']//li[4]//button[@angularticslabel="top cta"] | "/order/ncf/j2e-translation-services/japan-tl-plus-scientific-editing/document/plan?ss=j2e&pd=js&loop=enter-skip-wc&slab=2001" |
            | //label[@class='tc-switcher-btn right']                                   | "/order/ncf/translation-services?ss=j2e&pd=ou"                                                                                 |
            | //label[@class='tc-switcher-btn third']                                   | "/order/ncf/translation-services?ss=j2e&pd=th"                                                                                 |

    Scenario Outline: I expect that the bottom clicks on first sl2 service tab is working on translation sl2 screen
        When I click on the element //*[@class='tc-switcher-btn left']
        When I scroll the page to center and click on the element <element>
        Then I expect the url to contain <link>

        @jpn
        Examples:
            | element                                                                                  | link                                                                                                                                              |
            | //div[@class='journal-block']//li[2]//button[@angularticslabel="bottom cta"]             | "/order/ncf/j2e-translation-services/standard-translation/document/plan?ss=j2e&pd=js&loop=enter-skip-wc&slab=2001"                                |
            | //div[@class='journal-block']//li[3]//button[@angularticslabel="bottom cta"]             | "/order/ncf/j2e-translation-services/premium-translation/document/plan?ss=j2e&pd=js&loop=enter-skip-wc&slab=2001"                                 |
            | //button[contains(@data-description,"2-153-select sl2 bottom-click-select-translation")] | "/order/ncf/j2e-translation-services/japan-tl-plus-scientific-editing/document/plan?ss=j2e&pd=js&loop=enter-skip-wc&slab=2001"                    |
            | //a[@angularticsaction="clickCustomPackLink"]                                            | "/order/ncf/j2e-translation-services/japanese-custom-translation/document/plan/add-on/information?ss=j2e&pd=js&loop=enter-large-wc&addonskip=yes" |
            | //a[contains(@data-description,'ncf-screen 2-click-j2e-switch')]                         | "/order/ncf/translation-services?ss=e2j&pd=js"                                                                                                    |
            | //a[@angularticsaction="clickCustomQuoteLink"]                                           | "/order/ncf/j2e-translation-services/japanese-custom-translation/document/plan/add-on/information?ss=j2e&pd=js&loop=enter-large-wc&addonskip=yes" |

    @sanity
    Scenario Outline: I expect that the clicks on header is working on translation sl2 screen
        When I click on the element <element>
        Then I expect the url to contain <link>

        @jpn
        Examples:
            | element                                                | link                           |
            | //a[contains(text(),'ホーム')]                         | "/"                            |
            | //a[@angularticsaction="click Login"]                  | "/login?domain=app.editage.jp" |
            | //a[contains(@data-description,'header-editage logo')] | "/"                            |

    @sanity
    Scenario Outline:I expect that links opening in new tab should be verified in SL2 translation page
        When I click on the element <element>
        Then I expect a new window has been opened
        And I should go back to the previous page


        @jpn
        Examples:
            | element                                        |
            | //a[contains(@data-description,'header-help')] |

    @sanity
    Scenario Outline: I expect that the clicks on second service tab is working on translation sl2 page
        When I click on the element //label[@class="tc-switcher-btn right"]
        When I click on the element <element>
        Then I expect the url to contain <link>
        @jpn
        Examples:
            | element                                                         | link                                                                                                                                              |
            | //div[@class="general-block"]//div[@class="tcq-box"][1]//button | "/order/ncf/j2e-translation-services/basic-translation/document/plan?ss=j2e&pd=ou&loop=enter-skip-wc&slab=2001"                                   |
            | //div[@class="general-block"]//div[@class="tcq-box"][2]//button | "/order/ncf/j2e-translation-services/japanese-custom-translation/document/plan/add-on/information?ss=j2e&pd=ou&loop=enter-large-wc&addonskip=yes" |
            | //a[@angularticsaction="clickCustomPackLink"]                   | "/order/ncf/j2e-translation-services/japanese-custom-translation/document/plan/add-on/information?ss=j2e&pd=ou&loop=enter-large-wc&addonskip=yes" |
    @sanity
    Scenario Outline: I expect that the clicks on third service tab is working on translation sl2 page
        When I click on the element //label[@data-description="ncf-screen 2-click-j2e-thesis-tL-tab"]
        When I click on the element <element>
        Then I expect the url to contain <link>
        @jpn
        Examples:
            | element                                                                           | link                                                                                                                                              |
            | //button[contains(@data-description,"ncf-screen 2-139-select sl2-click-thesis" )] | "/order/ncf/j2e-translation-services/japanese-custom-translation/document/plan/add-on/information?ss=j2e&pd=th&loop=enter-large-wc&addonskip=yes" |
            | //a[contains(text(),'見積りを依頼する＞')]                                        | "order/ncf/j2e-translation-services/japanese-custom-translation/document/plan/add-on/information?ss=j2e&pd=th&loop=enter-large-wc&addonskip=yes"  |
    @sanity
    Scenario Outline:I expect that the clicks on e2j switch is working on sl2 translation page
        When I click on the element //a[contains(@data-description,'ncf-screen 2-click-j2e-switch')]
        When I click on the element <element>
        Then I expect the url to contain <link>
        @jpn
        Examples:
            | element                                                                                  | link                                                                                                                                                                    |
            | //div[@class="translation-custom-quote e-to-j"]//div[@class="tcq-box green"]//button[1]  | "/order/ncf/e2j-translation-services/english-to-japanese-level-1/document/plan/add-on/information?ss=e2j&pd=js&loop=enter-skip-wc&slab=2751&planskip=yes&addonskip=yes" |
            | //div[@class="translation-custom-quote e-to-j"]//div[@class="tcq-box yellow"]//button[1] | "/order/ncf/e2j-translation-services/english-to-japanese-level-2/document/plan/add-on/information?ss=e2j&pd=js&loop=enter-skip-wc&slab=2751&planskip=yes&addonskip=yes" |
            | //div[@class="translation-custom-quote e-to-j"]//div[@class="tcq-box purple"]//button[1] | "/order/ncf/e2j-translation-services/japanese-custom-translation/document/plan/add-on/information?ss=e2j&pd=js&loop=enter-large-wc&addonskip=yes"                       |

    @sanity
    Scenario Outline: I expect that the data description of all first tab links/CTA's should be verified on sl2 translation page
        When I expect <element> should be displayed on page
        Then I expect that element <element> has the attribute <data> with value <value>
        @jpn
        Examples:
            | element                                                                      | data             | value                                                                      |
            | //label[@class='tc-switcher-btn left']                                       | data-description | ncf-screen 2-click-j2e-journal-Submission-tab                              |
            | //label[@class='tc-switcher-btn right']                                      | data-description | ncf-screen 2-click-j2e-general-purpose-tab                                 |
            | //label[@class='tc-switcher-btn third']                                      | data-description | ncf-screen 2-click-j2e-thesis-tL-tab                                       |
            | //div[@class='journal-block']//li[2]//button[@angularticslabel="top cta"]    | data-description | ncf-screen 2-35-select sl2 top-click-select-translation                    |
            | //div[@class='journal-block']//li[3]//button[@angularticslabel="top cta"]    | data-description | ncf-screen 2-57-select sl2 top-click-select-translation                    |
            | //div[@class='journal-block']//li[4]//button[@angularticslabel="top cta"]    | data-description | ncf-screen 2-153-select sl2 top-click-select-translation                   |
            | //div[@class='journal-block']//li[2]//button[@angularticslabel="bottom cta"] | data-description | ncf-screen 2-35-select sl2 bottom-click-select-translation                 |
            | //div[@class='journal-block']//li[3]//button[@angularticslabel="bottom cta"] | data-description | ncf-screen 2-57-select sl2 bottom-click-select-translation                 |
            | //div[@class='journal-block']//li[4]//button[@angularticslabel="bottom cta"] | data-description | ncf-screen 2-153-select sl2 bottom-click-select-translation                |
            | //a[@angularticsaction="clickCustomQuoteLink"]                               | data-description | ncf-screen 2-139-build quote-click-select-translation                      |
            | //a[@angularticsaction="clickCustomPackLink"]                                | data-description | ncf-screen 2-139-select sl2 bottom banner-click-large document-translation |


    Scenario Outline: I expect that the data description of all second tab links/CTA's should be verified on sl2 translation page
        And I click on the element //label[@class="tc-switcher-btn right"]
        When I expect <element> should be displayed on page
        Then I expect that element <element> has the attribute <data> with value <value>
        @jpn
        Examples:
            | element                                                         | data             | value                                                    |
            | //div[@class="general-block"]//div[@class="tcq-box"][1]//button | data-description | ncf-screen 2-23-select sl2 top-click-select-translation  |
            | //div[@class="general-block"]//div[@class="tcq-box"][2]//button | data-description | ncf-screen 2-139-select sl2 top-click-select-translation |

    Scenario Outline: I expect that the data description of all third tab links/CTA's should be verified on sl2 translation page
        And I click on the element //label[@class='tc-switcher-btn third']
        When I expect <element> should be displayed on page
        Then I expect that element <element> has the attribute <data> with value <value>
        @jpn
        Examples:
            | element                                                                          | data             | value                                                |
            | //button[contains(@data-description,"ncf-screen 2-139-select sl2-click-thesis")] | data-description | ncf-screen 2-139-select sl2-click-thesis-translation |

    Scenario Outline: I expect that the data description of all e2j switch links/CTA's should be verified on sl2 translation page
        Given I open the eos "/order/ncf/translation-services?ss=e2j&pd=th"
        When I expect <element> should be displayed on page
        Then I expect that element <element> has the attribute <data> with value <value>
        @jpn
        Examples:
            | element                                                                                  | data             | value                                                    |
            | //div[@class="translation-custom-quote e-to-j"]//div[@class="tcq-box green"]//button[1]  | data-description | ncf-screen 2-22-select sl2 top-click-select-translation  |
            | //div[@class="translation-custom-quote e-to-j"]//div[@class="tcq-box yellow"]//button[1] | data-description | ncf-screen 2-26-select sl2 top-click-select-translation  |
            | //div[@class="translation-custom-quote e-to-j"]//div[@class="tcq-box purple"]//button[1] | data-description | ncf-screen 2-139-select sl2 top-click-select-translation |