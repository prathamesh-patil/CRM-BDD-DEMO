# @author sherin
Feature: Subject expertise

    Background: I am on subject expertise page
        Given I open the website "/subject-expertise"

    @sanity
    Scenario Outline: I expect that all links on subject expertise page should be verified against expectation
        When I click on the element <element>
        Then I expect the url <ExpectedUrl> is opened in a new window
        @chn
        Examples:
            | element                                                                   | ExpectedUrl                                           |
            | //app-lynk/a[@href='/subject-expertise/medical-sciences']                 | "/subject-expertise/medical-sciences"                 |
            | //app-lynk/a[@href='/subject-expertise/life-sciences']                    | "/subject-expertise/life-sciences"                    |
            | //app-lynk/a[@href='/subject-expertise/physical-science-and-engineering'] | "/subject-expertise/physical-science-and-engineering" |
            | //app-lynk/a[@href='/subject-expertise/humanities-and-social-sciences']   | "/subject-expertise/humanities-and-social-sciences"   |
            | //app-lynk/a[@href='/subject-expertise/business-and-economics']           | "/subject-expertise/business-and-economics"           |

        @jpn
        Examples:
            | element                                                                   | ExpectedUrl                                           |
            | //app-lynk/a[@href='/subject-expertise/medical-sciences']                 | "/subject-expertise/medical-sciences"                 |
            | //app-lynk/a[@href='/subject-expertise/life-sciences']                    | "/subject-expertise/life-sciences"                    |
            | //app-lynk/a[@href='/subject-expertise/physical-science-and-engineering'] | "/subject-expertise/physical-science-and-engineering" |
            | //app-lynk/a[@href='/subject-expertise/humanities-and-social-sciences']   | "/subject-expertise/humanities-and-social-sciences"   |
            | //app-lynk/a[@href='/subject-expertise/business-and-economics']           | "/subject-expertise/business-and-economics"           |

        @eng
        Examples:
            | element                                                                   | ExpectedUrl                                           |
            | //app-lynk/a[@href='/subject-expertise/medical-sciences']                 | "/subject-expertise/medical-sciences"                 |
            | //app-lynk/a[@href='/subject-expertise/life-sciences']                    | "/subject-expertise/life-sciences"                    |
            | //app-lynk/a[@href='/subject-expertise/physical-science-and-engineering'] | "/subject-expertise/physical-science-and-engineering" |
            | //app-lynk/a[@href='/subject-expertise/humanities-and-social-sciences']   | "/subject-expertise/humanities-and-social-sciences"   |
            | //app-lynk/a[@href='/subject-expertise/business-and-economics']           | "/subject-expertise/business-and-economics"           |

    @sanity @smoke
    Scenario Outline: I expect to open the service segments page on forms on clicking the forms CTA in the subject expertise page
        When I scroll the page to end and click on the element <element>
        Then I expect the url to contain <link>
        And I wait for <eosElementPath> to be displayed on page

        @chn
        Examples:
            | element                            | link                        | eosElementPath                          |
            | //app-navigator//li[8]//a          | "/order/ncf?source=website" | //ng-component/div[1]/div//div[1]/div/a |
            | //app-featured-block-diamond[1]//a | "/order/ncf?source=website" | //ng-component/div[1]/div//div[1]/div/a |
        @eng
        Examples:
            | element                               | link                        | eosElementPath                          |
            | //app-navigator[2]//li[6]//a          | "/order/ncf?source=website" | //ng-component/div[1]/div//div[1]/div/a |
            | //app-compare-services//app-lynk[2]/a | "/order/ncf?source=website" | //ng-component/div[1]/div//div[1]/div/a |

        @jpn
        Examples:
            | element                            | link                        | eosElementPath                          |
            | //app-navigator[2]//li[4]//a       | "/order/ncf?source=website" | //ng-component/div[1]/div//div[1]/div/a |
            | //app-featured-block-diamond[1]//a | "/order/ncf?source=website" | //ng-component/div[1]/div//div[1]/div/a |


    @regression
    Scenario Outline: I expect all links in same tab on subject expertise page should get verified against expectation
        When I click on the element <element>
        Then I expect the url to contain <link>

        @chn
        Examples:
            | element                                | link                        |
            | //app-compare-services//app-lynk[1]//a | "/order/ncf?source=website" |

        @eng
        Examples:
            | element                                | link                         |
            | //app-compare-services//app-lynk[1]//a | "/services"                  |
            | //app-featured-block-topaz//a          | "/partner-with-us"           |
            | //app-featured-block-diamond//a        | "/subject-expertise-samples" |

        @jpn
        Examples:
            | element                       | link               |
            | //app-featured-block-topaz//a | "/partner-with-us" |

