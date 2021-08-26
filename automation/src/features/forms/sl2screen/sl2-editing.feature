Feature: New user form sl2 editing page
    Background: I am on new user editing sl2 screen
        Given I open the eos "/order/ncf/english-editing"

    @pending
    Scenario Outline: I expect that all the clicks on the editing sl2 page is working
        When I click on the element <element>
        And I expect the url to contain <link>

        @pending-eng
        Examples:
            | element                               | link                                                                                   |
            | //a[@data-description="THESIS"]       | "/info/nclient-proofreading-and-language-check-services.html?"                         |
            | //a[@data-description="ABSTRACT"]     | "/order/ncf/english-editing/standard-editing/document?coupon=ABSTRACT10&loop=enter-wc" |
            | //a[@data-description="CASE REPORTS"] | "/order/ncf/english-editing/standard-editing/document?coupon=CASE10&loop=enter-wc"     |
            | //a[@data-description="BOOKS"]        | "/info/book-editing-services/?"                                                        |
            | //a[contains(text(),'Home')]          | "/"                                                                                    |
            | //a[@angularticsaction="click Login"] | "/login?domain=app.editage.com"                                                        |

        @pending-chn
        Examples:
            | element                         | link                                                                                            |
            | //a[@data-description="THESIS"] | "/order/ncf/english-editing/standard-editing-bundle/document/plan?loop=enter-skip-wc&slab=8501" |
            | //a[contains(text(),'主页')]    | "/"                                                                                             |
            | //a[contains(text(),'登录')]    | "/login?domain=app.editage.cn"                                                                  |

    @pending
    Scenario Outline:I expect that links opening in new tab should be verified in SL2 editing page
        When I click on the element <element>
        Then I expect that element <element> has the link <link> opening in new tab

        @pending-eng
        Examples:
            | element                             | link    |
            | //a[@angularticsaction="clickHelp"] | "/help" |

        @pending-chn
        Examples:
            | element                      | link    |
            | //a[contains(text(),'帮助')] | "/help" |

    @pending-sanity
    Scenario Outline: I expect that all modals should be opened on editing sl2 page
        When I click on the element <element>
        Then I expect that element //*[@class="modal-title"] matches the text <modaltext>
        And I click on the button //button[@data-dismiss="modal"]

        @pending-eng
        Examples:
            | element                                      | modaltext                        |
            | //a[@angularticslabel="cover-letter"]        | "Cover letter sample"            |
            | //a[@angularticslabel="plagarism-check"]     | "Plagiarism check report sample" |
            | //a[@angularticslabel="editing-certificate"] | "Editing certificate sample"     |

        @pending-chn
        Examples:
            | element                                                                                       | modaltext          |
            | //a[@data-description="ncf-screen 2-select feature sample-click-cover-letter-editing"]        | "投稿信示例"       |
            | //a[@data-description="ncf-screen 2-select feature sample-click-plagarism-check-editing"]     | "论文查重报告示例" |
            | //a[@data-description="ncf-screen 2-select feature sample-click-editing-certificate-editing"] | "英文润色证明示例" |

    @pending-sanity
    Scenario Outline: I expect that the bottom CTA clicks on sl2 editing page is working
        When I scroll the page to center and click on the element <element>
        Then I expect the url to contain <link>
        And I should go back to the previous page

        @pending-chn @pending-eng
        Examples:
            | element                                                                       | link                                                                   |
            | //a[@data-description="ncf-screen 2-36-select sl2 top-click-select-editing"]  | "/order/ncf/english-editing/standard-editing/document?loop=enter-wc"   |
            | //a[@data-description="ncf-screen 2-1-select sl2 top-click-select-editing"]   | "/order/ncf/english-editing/premium-editing/document?loop=enter-wc"    |
            | //a[@data-description="ncf-screen 2-102-select sl2 top-click-select-editing"] | "/order/ncf/english-editing/scientific-editing/document?loop=enter-wc" |

