# @author sherin
Feature: Business & Economics Subject expertise

    Background: I am on business and economics subject expertise page
        Given I open the website "/subject-expertise/business-and-economics"

    @sanity
    Scenario Outline: I expect that all links on business and economics subject expertise page should be verified against expectation
        When I click on the element <element>
        Then I expect the url to contain <link>
        @eng
        Examples:
            | element                                  | link                        |
            | //app-navigator[2]//li[6]//a             | "/order/ncf"                |
            | //app-introduction-pearl//app-lynk[1]//a | "/order/ncf"                |
            | //app-introduction-pearl//app-lynk[2]//a | "/about-us/contact-us.html" |
            | //app-compare-services//app-lynk[1]//a   | "/services"                 |
            | //app-compare-services//app-lynk[2]//a   | "/order/ncf"                |

        @jpn
        Examples:
            | element                            | link         |
            | //app-navigator[2]//li[4]//a       | "/order/ncf" |
            | //app-introduction-pearl//a        | "/order/ncf" |
            | //app-featured-block-diamond[1]//a | "/order/ncf" |
            | //app-featured-block-diamond[2]//a | "/order/ncf" |
            | //app-compare-services//a          | "/order/ncf" |

        @chn
        Examples:
            | element                            | link         |
            | //app-navigator//li[8]//a          | "/order/ncf" |
            | //app-introduction-pearl//a        | "/order/ncf" |
            | //app-featured-block-diamond[1]//a | "/order/ncf" |
            | //app-featured-block-diamond[2]//a | "/order/ncf" |
            | //app-compare-services//a          | "/order/ncf" |

    @sanity
    Scenario Outline: I expect to open forms page on clicking plan cards CTA in the business and economics subject expertise page
        When I click on the element <elementPath1>
        And I click on the element <elementPath2>
        Then I expect the url to contain <link>
        @jpn
        Examples:
            | elementPath1            | elementPath2               | link                                                 |
            | //app-best-plan-card[1] | //app-best-plan-content//a | "/services/english-editing/standard-editing-plan"    |
            | //app-best-plan-card[2] | //app-best-plan-content//a | "/services/english-editing/premium-editing-plan"     |
            | //app-best-plan-card[3] | //app-best-plan-content//a | "/services/english-editing/top-journal-editing-plan" |
        @chn
        Examples:
            | elementPath1            | elementPath2               | link                                            |
            | //app-best-plan-card[1] | //app-best-plan-content//a | "/order/ncf/english-editing/standard-editing"   |
            | //app-best-plan-card[2] | //app-best-plan-content//a | "/order/ncf/english-editing/premium-editing"    |
            | //app-best-plan-card[3] | //app-best-plan-content//a | "/order/ncf/english-editing/scientific-editing" |

