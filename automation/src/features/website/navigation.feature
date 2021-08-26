Feature: Navigation

    Background: I am on landing page
        Given I open the website "/"

    @sanity
    Scenario Outline: I expect all navigation dropdown links that are opening in same tab should get verified against expectation
        When I move to element <menu>
        Then I expect that element <element> has the link <link>
        @eng
        Examples:
            | menu                                                                   | link                                              | element                                                                                                               |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/services/english-editing"                       | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div[1]/app-lynk[1]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/services/translation"                           | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div[1]/app-lynk[2]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/services/publishing-services-packs"             | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div[1]/app-lynk[3]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/services/research-promotion"                    | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div[1]/app-lynk[4]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/services/other/thesis-editing"                  | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div[1]/app-lynk[5]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/info/services/conference"                       | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div[1]/app-lynk[6]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/services/other/journal-selection"               | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div[2]/app-lynk[1]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/services/other/journal-submission"              | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div[2]/app-lynk[2]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/services/other/resubmission-support"            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div[2]/app-lynk[3]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/services/other/artwork-preparation"             | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div[2]/app-lynk[4]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/services/other/pre-submission-peer-review"      | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div[2]/app-lynk[5]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/services/other/plagiarism-check-report"         | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div[2]/app-lynk[6]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/services/english-editing/abstract-editing"      | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div[3]/app-lynk[1]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/services/english-editing/case-report-editing"   | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div[3]/app-lynk[2]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/services/other/experimental-design"             | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div[3]/app-lynk[3]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/services/other/literature-search"               | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div[3]/app-lynk[4]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/services/other/book-editing"                    | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div[3]/app-lynk[5]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/services/other/proof-reading"                   | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div[3]/app-lynk[6]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/app-lynk/a | "/why-choose-us"                                  | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-basic-menu/ul/li[1]/app-lynk/a                    |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/app-lynk/a | "/quality"                                        | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-basic-menu/ul/li[2]/app-lynk/a                    |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/app-lynk/a | "/subject-expertise"                              | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-basic-menu/ul/li[3]/app-lynk/a                    |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/app-lynk/a | "/why-choose-us?section=local-customised-support" | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-basic-menu/ul/li[4]/app-lynk/a                    |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/app-lynk/a | "/why-choose-us?section=success-stories"          | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-basic-menu/ul/li[5]/app-lynk/a                    |
            | //app-navigator[1]//li[2]//app-lynk[contains(@class,'transition')]//a  | "/researcher-life"                                | //app-basic-menu//li[7]//a                                                                                            |
            | //app-navigator[1]//li[2]//app-lynk[contains(@class,'transition')]//a  | "/partner-with-us"                                | //app-basic-menu//li[6]//a                                                                                            |

        @chn
        Examples:
            | menu                                                                   | link                                              | element                                                                                                            |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/services/english-editing"                       | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div/app-lynk[1]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/services/translation"                           | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div/app-lynk[2]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/services/publishing-services-packs"             | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div/app-lynk[3]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/services/research-promotion"                    | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div/app-lynk[4]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk/a | "/info/services/conference"                       | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu/section/div[1]/div/app-lynk[5]/a |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/app-lynk/a | "/why-choose-us"                                  | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-basic-menu/ul/li[1]/app-lynk/a                 |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/app-lynk/a | "/quality"                                        | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-basic-menu/ul/li[2]/app-lynk/a                 |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/app-lynk/a | "/subject-expertise"                              | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-basic-menu/ul/li[3]/app-lynk/a                 |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/app-lynk/a | "/why-choose-us?section=local-customised-support" | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-basic-menu/ul/li[4]/app-lynk/a                 |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/app-lynk/a | "/why-choose-us?section=success-stories"          | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-basic-menu/ul/li[5]/app-lynk/a                 |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/app-lynk/a | "/insights"                                       | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-basic-menu/ul/li[6]/app-lynk/a                 |

    @sanity
    Scenario Outline: I expect all direct navigation links that are opening in same tab should get verified against expectation
        Then I expect that element <element> has the link <link>
        @eng
        Examples:
            | element                                                                | link                        |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[1]/app-lynk/a | "/help"                     |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[3]/app-lynk/a | "/signup"                   |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a | "/order/ncf?source=website" |
            | //app-navigator[1]//li[4]//app-lynk[contains(@class,'transition')]//a  | "/researcher-life"          |
        @chn
        Examples:
            | element                                                                | link                        |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[3]/app-lynk/a | "/help"                     |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[5]/app-lynk/a | "/signup"                   |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[8]/app-lynk/a | "/order/ncf?source=website" |

    @sanity
    Scenario Outline: I expect all direct navigation links that are opening in new tab should get verified against expectation
        Then I expect that element <element> has the link <link> opening in new tab
        @eng
        Examples:
            | element                                                                | link                                       |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[3]/app-lynk/a | "/info/how-editage-helps-researchers.html" |
        @chn
        Examples:
            | element                                                                | link       |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[3]/app-lynk/a | "/payment" |


    Scenario Outline: I expect to verify all links have the attribute with the required value
        Then I expect that element <element> has the attribute <attribute> with value <value>
        @chn
        Examples:
            | element                                                                | attribute | value    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[8]/app-lynk/a | rel       | nofollow |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a | rel       | nofollow |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[5]/app-lynk/a | rel       | nofollow |

    @sanity @regression
    Scenario Outline: I expect to verify Editing left side nagivation menus opening in same tab
        When I move to element <EditingMainMenu>
        And I click on the element <MenuLink>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | EditingMainMenu                                                      | MenuLink                                                                                                                 | ExpectedUrl                                          |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu-variant/div/div[1]/div[1]/div/app-lynk | "/services/english-editing"                          |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu-variant/div/div[1]/div[2]/div/app-lynk | "/services/english-editing/top-journal-editing-plan" |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu-variant/div/div[1]/div[3]/div/app-lynk | "/services/english-editing/premium-editing-plan"     |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu-variant/div/div[1]/div[4]/div/app-lynk | "/services/english-editing/standard-editing-plan"    |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu-variant/div/div[1]/div[5]/div/app-lynk | "/pricing/editing-service"                           |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu-variant/div/div[1]/div[6]/div/app-lynk | "/services/english-editing/compare-plans"            |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu-variant/div/div[1]/div[8]/div/app-lynk | "/services/english-editing/re-editing"               |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu-variant/div/div[1]/div[9]/div/app-lynk | "/services/english-editing/sample"                   |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu-variant/div/div[2]/div[2]/div/app-lynk | "/services/other/book-translation-and-editing"       |

    @sanity @regression
    Scenario Outline: I expect to verify Editing left side nagivation menus opening in new tab
        When I move to element //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/app-lynk
        And I click on the element <MenuLink>
        Then I expect the url <ExpectedUrl> is opened in a new window

        @jpn
        Examples:
            | MenuLink                                                                                                                    | ExpectedUrl                                                         |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu-variant/div/div[1]/div[7]/div/app-lynk    | "/info/editing_serv/support.html"                                   |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu-variant/div/div[1]/div[10]/div/app-lynk/a | "/info/editing_serv/fileformats.html"                               |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu-variant/div/div[1]/div[11]/div/app-lynk   | "/info/editing_serv/curation-english-manuscript-writing-posts.html" |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[1]/div/app-detailed-menu-variant/div/div[2]/div[3]/div/app-lynk    | "/info/ppc/thesis-editing/"                                         |

    @sanity @regression
    Scenario Outline: I expect to verify translation left side nagivation menus opening in same tab
        When I move to element //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/app-lynk
        And I click on the element <MenuLink>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | MenuLink                                                                                                                 | ExpectedUrl                                          |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-detailed-menu-variant/div/div[1]/div[1]/div/app-lynk | "/services/translation"                              |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-detailed-menu-variant/div/div[1]/div[2]/div/app-lynk | "/services/translation/top-journal-translation-plan" |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-detailed-menu-variant/div/div[1]/div[3]/div/app-lynk | "/services/translation/premium-translation-plan"     |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-detailed-menu-variant/div/div[1]/div[4]/div/app-lynk | "/services/translation/standard-translation-plan"    |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-detailed-menu-variant/div/div[1]/div[5]/div/app-lynk | "/services/translation/basic-translation-plan"       |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-detailed-menu-variant/div/div[1]/div[6]/div/app-lynk | "/pricing/translation-service"                       |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-detailed-menu-variant/div/div[1]/div[7]/div/app-lynk | "/services/translation/compare-plans"                |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-detailed-menu-variant/div/div[1]/div[9]/div/app-lynk | "/services/translation/japanese-to-english/sample"   |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-detailed-menu-variant/div/div[2]/div[2]/div/app-lynk | "/services/translation/english-to-japanese"          |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-detailed-menu-variant/div/div[2]/div[3]/div/app-lynk | "/services/other/book-translation-and-editing"       |

    @sanity @regression
    Scenario Outline: I expect to verify translation left side nagivation menus opening in new tab
        When I move to element //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/app-lynk
        And I click on the element <MenuLink>
        Then I expect the url <ExpectedUrl> is opened in a new window

        @jpn
        Examples:
            | MenuLink                                                                                                                  | ExpectedUrl                          |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-detailed-menu-variant/div/div[1]/div[8]/div/app-lynk  | "/info/translation/after_care.html"  |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-detailed-menu-variant/div/div[1]/div[10]/div/app-lynk | "/info/translation/file_format.html" |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[2]/div/app-detailed-menu-variant/div/div[2]/div[4]/div/app-lynk  | "/info/ppc/thesis-translation/"      |

    @sanity @regression
    Scenario Outline: I expect to verify PSS left side nagivation menus opening in same tab
        When I move to element //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[3]/app-lynk
        And I click on the element <MenuLink>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | MenuLink                                                                                                              | ExpectedUrl                                                                 |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[3]/div/app-detailed-menu-variant/div/div/div[1]/div/app-lynk | "/services/publishing-services-packs"                                       |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[3]/div/app-detailed-menu-variant/div/div/div[2]/div/app-lynk | "/services/publishing-services-packs/writing-plus-full-publication-support" |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[3]/div/app-detailed-menu-variant/div/div/div[3]/div/app-lynk | "/services/publishing-services-packs/full-publication-support"              |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[3]/div/app-detailed-menu-variant/div/div/div[4]/div/app-lynk | "/services/publishing-services-packs/express-submission-support"            |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[3]/div/app-detailed-menu-variant/div/div/div[5]/div/app-lynk | "/services/publishing-services-packs/custom-pack"                           |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[3]/div/app-detailed-menu-variant/div/div/div[7]/div/app-lynk | "/pricing/publication-support-packs"                                        |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[3]/div/app-detailed-menu-variant/div/div/div[8]/div/app-lynk | "/services/publishing-services-packs/compare-plans"                         |

    @sanity @regression
    Scenario Outline: I expect to verify PSS left side nagivation menus opening in new tab
        When I move to element <PSSMainMenu>
        And I click on the element <MenuLink>
        Then I expect the url <ExpectedUrl> is opened in a new window

        @jpn
        Examples:
            | PSSMainMenu                                                          | MenuLink                                                                                                               | ExpectedUrl                                      |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[3]/app-lynk | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[3]/div/app-detailed-menu-variant/div/div/div[9]/div/app-lynk  | "/info/publication-support/confidentiality.html" |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[3]/app-lynk | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[3]/div/app-detailed-menu-variant/div/div/div[10]/div/app-lynk | "/info/publication-support/ethics.html"          |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[3]/app-lynk | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[3]/div/app-detailed-menu-variant/div/div/div[6]/div/app-lynk  | "/services/other/literature-review"              |

    @sanity @regression
    Scenario Outline: I expect to verify Subject-area expertise left side nagivation menu opening in same tab
        And I click on the element <SubjectExpertiseLink>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | SubjectExpertiseLink                                                 | ExpectedUrl          |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[4]/app-lynk | "/subject-expertise" |

    @sanity @regression
    Scenario Outline: I expect to verify Why choose us left side nagivation menus opening in same tab
        When I move to element <WhyChooseUsMainMenu>
        And I click on the element <MenuLink>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | WhyChooseUsMainMenu                                                  | MenuLink                                                                                                     | ExpectedUrl |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[5]/app-lynk | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[5]/div/app-basic-menu-variant-one/ul/li[1]/app-lynk | "/payments" |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[5]/app-lynk | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[5]/div/app-basic-menu-variant-one/ul/li[2]/app-lynk | "/quality"  |

    @sanity @regression
    Scenario Outline: I expect to verify Why choose us left side nagivation menus opening in new tab
        When I move to element <WhyChooseUsMainMenu>
        And I click on the element <MenuLink>
        Then I expect the url <ExpectedUrl> is opened in a new window

        @jpn
        Examples:
            | WhyChooseUsMainMenu                                                  | MenuLink                                                                                                     | ExpectedUrl           |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[5]/app-lynk | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[5]/div/app-basic-menu-variant-one/ul/li[3]/app-lynk | "/info/testimonials/" |
            | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[5]/app-lynk | //*[@id="header"]/section/div/app-navigator[1]/div/ul/li[5]/div/app-basic-menu-variant-one/ul/li[4]/app-lynk | "/researcher-life"    |

    @regression
    Scenario Outline: I expect to verify Contact us details on right side nagivation
        When I move to element <ContactUsMenu>
        Then I expect that element <element> matches the text <content>

        @jpn
        Examples:
            | ContactUsMenu                                                                              | element                                 | content                   |
            | //app-navigator[@menutype="secondary"]//li[1]//app-lynk[contains(@class,'pearl-theta')]//a | //div[1]/app-contact-options/span[2]//a | "0120-50-2987"            |
            | //app-navigator[@menutype="secondary"]//li[1]//app-lynk[contains(@class,'pearl-theta')]//a | //div[2]/app-contact-options/span[2]//a | "submissions@editage.com" |

    @sanity @regression
    Scenario Outline: I expect to verify Help page on right side nagivation
        When I move to element <ContactUsMenu>
        And I click on the element <HelpMenuLink>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | ContactUsMenu                                                        | HelpMenuLink                                                                                                                                          | ExpectedUrl |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[1]/app-lynk | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[1]/div/app-contact-menu/app-contact-block/div[2]/div[4]/app-contact-options/span[2]/app-lynk | "/help"     |

    @sanity @regression
    Scenario Outline: I expect to verify Login menu on right side nagivation
        When I click on the element <LoginLink>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | LoginLink                                                            | ExpectedUrl                   |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[2]/app-lynk | "login?domain=app.editage.jp" |

    @smoke @sanity @regression
    Scenario Outline: I expect to verify Get Quote on right side nagivation
        When I click on the element <GetQuoteCTA>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | GetQuoteCTA                                                          | ExpectedUrl  |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk | "/order/ncf" |

    @regression
    Scenario Outline: I expect that the data description of top navigation menus should be verified
        When I move to element <Main Top navigation Menu>
        Then I expect that element <element> has the attribute <data-description-attribute> containing value <value>

        @jpn
        Examples:
            | Main Top navigation Menu                                                                   | element                                                                                    | data-description-attribute | value                                                                           |
            | //app-navigator[@menutype="primary"]//li[1]//app-lynk[contains(@class,'pearl-theta')]//a   | //app-navigator[@menutype="primary"]//li[1]//app-lynk[contains(@class,'pearl-theta')]//a   | data-description           | hp-top nav-engish proofreading-main-click                                       |
            | //app-navigator[@menutype="primary"]//li[1]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[1]/div/app-detailed-menu-variant//div//div[1]/div[1]//a                               | data-description           | hp-top nav-engish proofreading-overview-click                                   |
            | //app-navigator[@menutype="primary"]//li[1]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[1]/div/app-detailed-menu-variant//div//div[1]/div[2]//a                               | data-description           | hp-top nav-engish proofreading-top journal-click                                |
            | //app-navigator[@menutype="primary"]//li[1]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[1]/div/app-detailed-menu-variant//div//div[1]/div[3]//a                               | data-description           | hp-top nav-engish proofreading-premium ed-click                                 |
            | //app-navigator[@menutype="primary"]//li[1]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[1]/div/app-detailed-menu-variant//div//div[1]/div[4]//a                               | data-description           | hp-top nav-engish proofreading-standard ed-click                                |
            | //app-navigator[@menutype="primary"]//li[1]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[1]/div/app-detailed-menu-variant//div//div[1]/div[5]//a                               | data-description           | hp-top nav-engish proofreading-fee and delivery-click                           |
            | //app-navigator[@menutype="primary"]//li[1]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[1]/div/app-detailed-menu-variant//div//div[1]/div[6]//a                               | data-description           | hp-top nav-engish proofreading-service comparison-click                         |
            | //app-navigator[@menutype="primary"]//li[1]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[1]/div/app-detailed-menu-variant//div//div[1]/div[7]//a                               | data-description           | hp-top nav-engish proofreading-post sub support-click                           |
            | //app-navigator[@menutype="primary"]//li[1]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[1]/div/app-detailed-menu-variant//div//div[1]/div[8]//a                               | data-description           | top nav-engish proofreading-re-editing-click                                    |
            | //app-navigator[@menutype="primary"]//li[1]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[1]/div/app-detailed-menu-variant//div//div[1]/div[9]//a                               | data-description           | hp-top nav-engish proofreading-eng proofreading-click                           |
            | //app-navigator[@menutype="primary"]//li[1]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[1]/div/app-detailed-menu-variant//div//div[1]/div[10]//a                              | data-description           | hp-top nav-engish proofreading-file format-click                                |
            | //app-navigator[@menutype="primary"]//li[1]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[1]/div/app-detailed-menu-variant//div//div[1]/div[11]//a                              | data-description           | hp-top nav-engish proofreading-summary-click                                    |
            | //app-navigator[@menutype="primary"]//li[1]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[1]/div/app-detailed-menu-variant//div//div[2]/div[2]//a                               | data-description           | hp-top nav-engish proofreading-book editing-click                               |
            | //app-navigator[@menutype="primary"]//li[1]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[1]/div/app-detailed-menu-variant//div//div[2]/div[3]//a                               | data-description           | hp-top nav-engish proofreading-thesis editing-click                             |
            | //app-navigator[@menutype="primary"]//li[2]//app-lynk[contains(@class,'pearl-theta')]//a   | //app-navigator[@menutype="primary"]//li[2]//app-lynk[contains(@class,'pearl-theta')]//a   | data-description           | hp-top nav-academic translation j2e-main-click                                  |
            | //app-navigator[@menutype="primary"]//li[2]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[2]/div/app-detailed-menu-variant//div//div[1]/div[1]//a                               | data-description           | hp-top nav-academic translation j2e-overview-click                              |
            | //app-navigator[@menutype="primary"]//li[2]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[2]/div/app-detailed-menu-variant//div//div[1]/div[2]//a                               | data-description           | hp-top nav-academic translation j2e-top journal-click                           |
            | //app-navigator[@menutype="primary"]//li[2]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[2]/div/app-detailed-menu-variant//div//div[1]/div[3]//a                               | data-description           | hp-top nav-academic translation j2e-premium tl-click                            |
            | //app-navigator[@menutype="primary"]//li[2]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[2]/div/app-detailed-menu-variant//div//div[1]/div[4]//a                               | data-description           | hp-top nav-academic translation j2e-standard tl-click                           |
            | //app-navigator[@menutype="primary"]//li[2]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[2]/div/app-detailed-menu-variant//div//div[1]/div[5]//a                               | data-description           | hp-top nav-academic translation j2e-manuscript other-click                      |
            | //app-navigator[@menutype="primary"]//li[2]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[2]/div/app-detailed-menu-variant//div//div[1]/div[6]//a                               | data-description           | hp-top nav-academic translation j2e-fee and delivery-click                      |
            | //app-navigator[@menutype="primary"]//li[2]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[2]/div/app-detailed-menu-variant//div//div[1]/div[7]//a                               | data-description           | hp-top nav-academic translation j2e-tl service comparison-click                 |
            | //app-navigator[@menutype="primary"]//li[2]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[2]/div/app-detailed-menu-variant//div//div[1]/div[8]//a                               | data-description           | hp-top nav-academic translation j2e-post sub support-click                      |
            | //app-navigator[@menutype="primary"]//li[2]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[2]/div/app-detailed-menu-variant//div//div[1]/div[9]//a                               | data-description           | hp-top nav-academic translation j2e-tl sample-click                             |
            | //app-navigator[@menutype="primary"]//li[2]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[2]/div/app-detailed-menu-variant//div//div[1]/div[10]//a                              | data-description           | hp-top nav-academic translation j2e-file format-click                           |
            | //app-navigator[@menutype="primary"]//li[2]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[2]/div/app-detailed-menu-variant//div//div[2]/div[2]//a                               | data-description           | hp-top nav-academic translation other-e2j-click                                 |
            | //app-navigator[@menutype="primary"]//li[2]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[2]/div/app-detailed-menu-variant//div//div[2]/div[3]//a                               | data-description           | hp-top nav-academic translation other-book tl-click                             |
            | //app-navigator[@menutype="primary"]//li[2]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[2]/div/app-detailed-menu-variant//div//div[2]/div[4]//a                               | data-description           | hp-top nav-academic translation other-thesis tl-click                           |
            | //app-navigator[@menutype="primary"]//li[3]//app-lynk[contains(@class,'pearl-theta')]//a   | //app-navigator[@menutype="primary"]//li[3]//app-lynk[contains(@class,'pearl-theta')]//a   | data-description           | hp-top nav-publication support services-main-click                              |
            | //app-navigator[@menutype="primary"]//li[3]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[3]/div/app-detailed-menu-variant//div//div[1]/div[1]//a                               | data-description           | hp-top nav-publication support services-overview sub support-click              |
            | //app-navigator[@menutype="primary"]//li[3]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[3]/div/app-detailed-menu-variant//div//div[1]/div[2]//a                               | data-description           | hp-top nav-publication support services-full support-click                      |
            | //app-navigator[@menutype="primary"]//li[3]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[3]/div/app-detailed-menu-variant//div//div[1]/div[3]//a                               | data-description           | hp-top nav-publication support services-post full support-click                 |
            | //app-navigator[@menutype="primary"]//li[3]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[3]/div/app-detailed-menu-variant//div//div[1]/div[4]//a                               | data-description           | hp-top nav-publication support services-hurry support pack-click                |
            | //app-navigator[@menutype="primary"]//li[3]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[3]/div/app-detailed-menu-variant//div//div[1]/div[5]//a                               | data-description           | hp-top nav-publication support services-customize pack-click                    |
            | //app-navigator[@menutype="primary"]//li[3]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[3]/div/app-detailed-menu-variant//div//div[1]/div[6]//a                               | data-description           | hp-top nav-publication support services-literature search support-click         |
            | //app-navigator[@menutype="primary"]//li[3]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[3]/div/app-detailed-menu-variant//div//div[1]/div[7]//a                               | data-description           | hp-top nav-publication support services-fee and delivery-click                  |
            | //app-navigator[@menutype="primary"]//li[3]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[3]/div/app-detailed-menu-variant//div//div[1]/div[8]//a                               | data-description           | hp-top nav-publication support services-comparison of sub support-click         |
            | //app-navigator[@menutype="primary"]//li[3]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[3]/div/app-detailed-menu-variant//div//div[1]/div[9]//a                               | data-description           | hp-top nav-publication support services-confidentiality handling treatise-click |
            | //app-navigator[@menutype="primary"]//li[3]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[3]/div/app-detailed-menu-variant//div//div[1]/div[10]//a                              | data-description           | hp-top nav-publication support services-code of ethic-click                     |
            | //app-navigator[@menutype="primary"]//li[4]//app-lynk[contains(@class,'pearl-theta')]//a   | //app-navigator[@menutype="primary"]//li[4]//app-lynk[contains(@class,'pearl-theta')]//a   | data-description           | hp-top nav-subject area expertise-main-click                                    |
            | //app-navigator[@menutype="primary"]//li[5]//app-lynk[contains(@class,'pearl-theta')]//a   | //app-navigator[@menutype="primary"]//li[5]//app-lynk[contains(@class,'pearl-theta')]//a   | data-description           | hp-top nav-why choose us-main-click                                             |
            | //app-navigator[@menutype="primary"]//li[5]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[5]/div/app-basic-menu-variant-one//li[1]//a                                           | data-description           | hp-top nav-why choose us-payment-click                                          |
            | //app-navigator[@menutype="primary"]//li[5]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[5]/div/app-basic-menu-variant-one//li[2]//a                                           | data-description           | hp-top nav-why choose us-quality assurance-click                                |
            | //app-navigator[@menutype="primary"]//li[5]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[5]/div/app-basic-menu-variant-one//li[3]//a                                           | data-description           | hp-top nav-why choose us-customer voice-click                                   |
            | //app-navigator[@menutype="primary"]//li[5]//app-lynk[contains(@class,'pearl-theta')]//a   | //li[5]/div/app-basic-menu-variant-one//li[4]//a                                           | data-description           | hp-top nav-why choose us-reasearcherlife                                        |
            | //app-navigator[@menutype="secondary"]//li[1]//app-lynk[contains(@class,'pearl-theta')]//a | //div[1]/app-contact-options/span[2]//a                                                    | data-description           | hp-top nav-contact-null-click-<top-navigation>                                  |
            | //app-navigator[@menutype="secondary"]//li[1]//app-lynk[contains(@class,'pearl-theta')]//a | //div[2]/app-contact-options/span[2]//a                                                    | data-description           | hp-top nav-contact-null-click-<top-navigation>                                  |
            | //app-navigator[@menutype="secondary"]//li[2]//app-lynk[contains(@class,'pearl-theta')]//a | //app-navigator[@menutype="secondary"]//li[2]//app-lynk[contains(@class,'pearl-theta')]//a | data-description           | hp-top nav-login-null-click-<top-navigation>                                    |
            | //app-navigator[@menutype="secondary"]//li[4]//a                                           | //app-navigator[@menutype="secondary"]//li[4]//a                                           | data-description           | hp-top nav-get quote                                                            |

        @eng
        Examples:
            | Main Top navigation Menu                                              | element                    | data-description-attribute | value                                        |
            | //app-navigator[1]//li[2]//app-lynk[contains(@class,'transition')]//a | //app-basic-menu//li[6]//a | data-description           | top nav-why choose us-corporate partnerships |