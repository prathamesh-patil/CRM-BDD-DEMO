# @author Ninad Patkar

Feature: EOS Dashboard body section

    Background: I am on EOS Dashboard
        Given I open the sso "/"

    @sanity @smoke
    Scenario Outline: I expect that R widget is working for individual user of ENG, KOR, JPN
        When I set <email> to the inputfield //input[@id='email_id']
        And  I set <password> to the inputfield //input[@id='password']
        And  I click on the element //div/button[@type='submit']
        And  I wait for //img[@title='Editage Logo'] to be displayed on page
        Then I wait for //div[@id='communication-popup'] to be displayed on page
        When I click on the element //div[@id='communication-popup']//a[@class='close']
        Then I expect //div[contains(@class,'dashboard-referal-detail')] should be displayed on page
        And  I expect //div[@class='promotion-banner reviewer-comment']  should be displayed on page
        And  I expect //div[@class='promotion-banner improve-journey']  should be displayed on page
        And  I expect //div[@class='container-fluid']//div[2]//div[@class='dashboard-right-side-banner'] should be displayed on page
        And  I expect that element //div[@class='container-fluid']//div[2]//div[@class='dashboard-right-side-banner']//p[@class='banner-title']//span contains the text <emailName>
        When I click on the element //div[@class='container-fluid']//div[2]//div[@class='dashboard-right-side-banner']//div[@class='researcher-cta']//a
        Then I expect the url "researcher.life" is opened in a new window
        And  I expect //div[@class='left-banner']//img should be displayed on page
        And  I expect //div[@class='right-banner']//img should be displayed on page
        And  I expect //div[@class='new-editage-feature'] should be displayed on page
        When I scroll the page to center and click on the element //ul[@class='top-nav-link']//li[contains(@class,'custom-dropdown')]/a
        And  I click on the element //a[contains(@href,'/logout')]

        @eng
        Examples:
            | email                             | password   | emailName |
            | "autobot_9srk7f5w@mailinator.com" | "ColdCold" | "email"   |

        @kor
        Examples:
            | email                             | password   | emailName |
            | "autobot_rr2qkc6x@mailinator.com" | "ColdCold" | "email"   |

        @jpn
        Examples:
            | email                             | password   | emailName |
            | "autobot_98kszwwd@mailinator.com" | "ColdCold" | "email"   |

    @sanity
    Scenario Outline: I expect that R widget is working for individual user of BRL & TWN
        When I set <email> to the inputfield //input[@id='email_id']
        And  I set <password> to the inputfield //input[@id='password']
        And  I click on the element //div/button[@type='submit']
        And  I wait for //img[@title='Editage Logo'] to be displayed on page
        Then I wait for //div[@id='communication-popup'] to be displayed on page
        When I click on the element //div[@id='communication-popup']//a[@class='close']
        Then I expect //div[contains(@class,'dashboard-referal-detail')] should be displayed on page
        And  I expect //div[@class='promotion-banner reviewer-comment']  should be displayed on page
        And  I expect //div[@class='promotion-banner improve-journey']  should be displayed on page
        And  I expect //div[@class='container-fluid']//div[2]//div[@class='dashboard-right-side-banner'] should be displayed on page
        And  I expect that element //div[@class='container-fluid']//div[2]//div[@class='dashboard-right-side-banner']//p[@class='banner-title']//span contains the text <emailName>
        When I click on the element //div[@class='container-fluid']//div[2]//div[@class='dashboard-right-side-banner']//div[@class='researcher-cta']//a
        Then I expect the url "researcher.life" is opened in a new window
        And  I expect //div[@class='left-banner']//img should not be displayed on page
        And  I expect //div[@class='right-banner']//img should not be displayed on page
        And  I expect //div[@class='new-editage-feature'] should be displayed on page
        When I scroll the page to center and click on the element //ul[@class='top-nav-link']//li[contains(@class,'custom-dropdown')]/a
        And  I click on the element //a[contains(@href,'/logout')]

        @brl
        Examples:
            | email                             | password   | emailName |
            | "autobot_lilrwsgy@mailinator.com" | "ColdCold" | "email"   |

        @twn
        Examples:
            | email                             | password   | emailName |
            | "autobot_jn53mech@mailinator.com" | "ColdCold" | "email"   |


    Scenario Outline: I expect that R integration banner is not available for ENGIN, IND, GER, KUP, KINO, WKH, HDW partner individual users
        When I set <email> to the inputfield //input[@id='email_id']
        And  I set <password> to the inputfield //input[@id='password']
        And  I click on the element //div/button[@type='submit']
        And  I wait for //img[@title='Editage Logo'] to be displayed on page
        And  I wait for //div[2]//app-banner[@location='dashboard-revamp-large-right']//div[@class='loader-img-banner'] to not be exist on page
        Then I expect //div[contains(@class,'dashboard-referal-detail')] should not be displayed on page
        And  I expect //div[@class='promotion-banner reviewer-comment']  should be displayed on page
        And  I expect //div[@class='left-banner']//img should not be displayed on page
        And  I expect //div[@class='right-banner']//img should not be displayed on page
        And  I expect //div[@class='new-editage-feature'] should be displayed on page
        And  I expect that element "//div[2]//app-banner[@location='dashboard-revamp-large-right']//img" does not exist
        When I scroll the page to center and click on the element //ul[@class='top-nav-link']//li[contains(@class,'custom-dropdown')]/a
        And  I click on the element //a[contains(@href,'/logout')]

        @engin
        Examples:
            | email                             | password   |
            | "autobot_hbxfxg88@mailinator.com" | "ColdCold" |

        @ind
        Examples:
            | email                             | password   |
            | "autobot_gajac8vj@mailinator.com" | "ColdCold" |

        @ger
        Examples:
            | email                             | password   |
            | "autobot_eqgds3zj@mailinator.com" | "ColdCold" |

        @kup
        Examples:
            | email                             | password   |
            | "autobot_x182uxre@mailinator.com" | "ColdCold" |

        @kino
        Examples:
            | email                             | password   |
            | "autobot_rpabrysr@mailinator.com" | "ColdCold" |

        @wkh
        Examples:
            | email                             | password   |
            | "autobot_rxzaas0b@mailinator.com" | "ColdCold" |

        @hdw
        Examples:
            | email                             | password   |
            | "autobot_f2soqtaj@mailinator.com" | "ColdCold" |

    @sanity
    Scenario Outline: I expect that R integration banner is not available for corporate KOR, JPN users and other partners user
        When I set <email> to the inputfield //input[@id='email_id']
        And  I set <password> to the inputfield //input[@id='password']
        And  I click on the element //div/button[@type='submit']
        And  I wait for //img[@title='Editage Logo'] to be displayed on page
        And  I wait for //div[2]//app-banner[@location='dashboard-revamp-large-right']//div[@class='loader-img-banner'] to not be exist on page
        Then I expect //div[contains(@class,'dashboard-referal-detail')] should not be displayed on page
        And  I expect //div[@class='promotion-banner reviewer-comment']  should not be displayed on page
        And  I expect //div[@class='left-banner']//img should not be displayed on page
        And  I expect //div[@class='right-banner']//img should not be displayed on page
        And  I expect //div[@class='new-editage-feature'] should be displayed on page
        And  I expect that element "//div[2]//app-banner[@location='dashboard-revamp-large-right']//img" does exist
        When I scroll the page to center and click on the element //ul[@class='top-nav-link']//li[contains(@class,'custom-dropdown')]/a
        And  I click on the element //a[contains(@href,'/logout')]

        @kor
        Examples:
            | email                             | password   |
            | "autobot_uic79l5v@mailinator.com" | "ColdCold" |

        @jpn
        Examples:
            | email                             | password   |
            | "autobot_45dwrdwu@mailinator.com" | "ColdCold" |


    Scenario Outline: I expect that R integration banner is not available for corporate users of ENG, BRL, TWN, ENGIN, IND, GER, WKH
        When I set <email> to the inputfield //input[@id='email_id']
        And  I set <password> to the inputfield //input[@id='password']
        And  I click on the element //div/button[@type='submit']
        And  I wait for //img[@title='Editage Logo'] to be displayed on page
        And  I wait for //div[2]//app-banner[@location='dashboard-revamp-large-right']//div[@class='loader-img-banner'] to not be exist on page
        Then I expect //div[contains(@class,'dashboard-referal-detail')] should not be displayed on page
        And  I expect //div[@class='promotion-banner reviewer-comment']  should not be displayed on page
        And  I expect //div[@class='left-banner']//img should not be displayed on page
        And  I expect //div[@class='right-banner']//img should not be displayed on page
        And  I expect //div[@class='new-editage-feature'] should be displayed on page
        And  I expect that element "//div[2]//app-banner[@location='dashboard-revamp-large-right']//img" does not exist
        When I scroll the page to center and click on the element //ul[@class='top-nav-link']//li[contains(@class,'custom-dropdown')]/a
        And  I click on the element //a[contains(@href,'/logout')]

        @eng
        Examples:
            | email                             | password   |
            | "autobot_l9vcrhib@mailinator.com" | "ColdCold" |

        @brl
        Examples:
            | email                             | password   |
            | "autobot_brazlcor@mailinator.com" | "ColdCold" |

        @twn
        Examples:
            | email                             | password   |
            | "autobot_9mae76um@mailinator.com" | "ColdCold" |

        @engin
        Examples:
            | email                             | password   |
            | "autobot_jozmznuc@mailinator.com" | "ColdCold" |

        @ind
        Examples:
            | email                             | password   |
            | "autobot_rkdyisps@mailinator.com" | "ColdCold" |

        @ger
        Examples:
            | email                             | password   |
            | "autobot_gbyiolul@mailinator.com" | "ColdCold" |

        @wkh
        Examples:
            | email                             | password   |
            | "autobot_fzbyfubn@mailinator.com" | "ColdCold" |


    Scenario Outline: I expect that R integration banner is not available for corporate users of KUP, KINO
        When I set <email> to the inputfield //input[@id='email_id']
        And  I set <password> to the inputfield //input[@id='password']
        And  I click on the element //div/button[@type='submit']
        And  I wait for //img[@title='Editage Logo'] to be displayed on page
        And  I wait for //div[2]//app-banner[@location='dashboard-revamp-large-right']//div[@class='loader-img-banner'] to not be exist on page
        Then I expect //div[contains(@class,'dashboard-referal-detail')] should not be displayed on page
        And  I expect //div[@class='promotion-banner reviewer-comment']  should not be displayed on page
        And  I expect //div[@class='left-banner']//img should not be displayed on page
        And  I expect //div[@class='right-banner']//img should not be displayed on page
        And  I expect //div[@class='new-editage-feature'] should not be displayed on page
        And  I expect that element "//div[2]//app-banner[@location='dashboard-revamp-large-right']//img" does not exist
        When I scroll the page to center and click on the element //ul[@class='top-nav-link']//li[contains(@class,'custom-dropdown')]/a
        And  I click on the element //a[contains(@href,'/logout')]

        @kup
        Examples:
            | email                             | password   |
            | "autobot_kupzjcsz@mailinator.com" | "ColdCold" |

        @kino
        Examples:
            | email                             | password   |
            | "autobot_tbgpvgjl@mailinator.com" | "ColdCold" |

    @sanity
    Scenario Outline: I expect that R integration banner is not available for ENG, KOR subpartners
        When I set <email> to the inputfield //input[@id='email_id']
        And  I set <password> to the inputfield //input[@id='password']
        And  I click on the element //div/button[@type='submit']
        And  I wait for //img[@title='Editage Logo'] to be displayed on page
        And  I wait for //div[2]//app-banner[@location='dashboard-revamp-large-right']//div[@class='loader-img-banner'] to not be exist on page
        Then I expect //div[contains(@class,'dashboard-referal-detail')] should not be displayed on page
        And  I expect //div[@class='promotion-banner reviewer-comment']  should not be displayed on page
        And  I expect //div[@class='left-banner']//img should be displayed on page
        And  I expect //div[@class='right-banner']//img should be displayed on page
        And  I expect //div[@class='new-editage-feature'] should be displayed on page
        And  I expect that element "//div[2]//app-banner[@location='dashboard-revamp-large-right']//img" does not exist
        When I scroll the page to center and click on the element //ul[@class='top-nav-link']//li[contains(@class,'custom-dropdown')]/a
        And  I click on the element //a[contains(@href,'/logout')]

        @eng
        Examples:
            | email                            | password   |
            | "bdd_eng_subuser@mailinator.com" | "ColdCold" |

        @kor
        Examples:
            | email                            | password   |
            | "bdd_kor_subuser@mailinator.com" | "ColdCold" |


    @sanity
    Scenario Outline: I expect that R integration banner is not available for CHN individual
        When I set <email> to the inputfield //input[@id='email_id']
        And  I set <password> to the inputfield //input[@id='password']
        And  I click on the element //div/button[@type='submit']
        And  I wait for //img[@title='Editage Logo'] to be displayed on page
        Then I wait for //div[@class='we-chat-code'] to be displayed on page
        When I click on the element //div[@class='we-chat-code']//a
        And  I wait for //div[2]//app-banner[@location='dashboard-revamp-large-right']//div[@class='loader-img-banner'] to not be exist on page
        Then I expect //div[contains(@class,'dashboard-referal-detail')] should be displayed on page
        And  I expect //div[@class='promotion-banner reviewer-comment']  should not be displayed on page
        And  I expect //div[@class='left-banner']//img should be displayed on page
        And  I expect //div[@class='right-banner']//img should be displayed on page
        And  I expect //div[@class='new-editage-feature'] should not be displayed on page
        And  I expect that element "//div[2]//app-banner[@location='dashboard-revamp-large-right']//img" does exist
        When I scroll the page to center and click on the element //ul[@class='top-nav-link']//li[contains(@class,'custom-dropdown')]/a
        And  I click on the element //a[contains(@href,'/logout')]

        @chn
        Examples:
            | email                             | password   |
            | "autobot_4nxyejsh@mailinator.com" | "ColdCold" |

    @sanity
    Scenario Outline: I expect that R integration banner is not available for CHN corporate
        When I set <email> to the inputfield //input[@id='email_id']
        And  I set <password> to the inputfield //input[@id='password']
        And  I click on the element //div/button[@type='submit']
        And  I wait for //img[@title='Editage Logo'] to be displayed on page
        Then I wait for //div[@class='we-chat-code'] to be displayed on page
        When I click on the element //div[@class='we-chat-code']//a
        And  I wait for //div[2]//app-banner[@location='dashboard-revamp-large-right']//div[@class='loader-img-banner'] to not be exist on page
        Then I expect //div[contains(@class,'dashboard-referal-detail')] should not be displayed on page
        And  I expect //div[@class='promotion-banner reviewer-comment']  should not be displayed on page
        And  I expect //div[@class='left-banner']//img should not be displayed on page
        And  I expect //div[@class='right-banner']//img should not be displayed on page
        And  I expect //div[@class='new-editage-feature'] should not be displayed on page
        And  I expect that element "//div[2]//app-banner[@location='dashboard-revamp-large-right']//img" does exist
        When I scroll the page to center and click on the element //ul[@class='top-nav-link']//li[contains(@class,'custom-dropdown')]/a
        And  I click on the element //a[contains(@href,'/logout')]

        @chn
        Examples:
            | email                             | password   |
            | "autobot_chncoyjt@mailinator.com" | "ColdCold" |


    Scenario Outline: I expect that R integration banner is not available for CHN subpartner
        When I set <email> to the inputfield //input[@id='email_id']
        And  I set <password> to the inputfield //input[@id='password']
        And  I click on the element //div/button[@type='submit']
        And  I wait for //img[@title='Editage Logo'] to be displayed on page
        Then I wait for //div[@class='we-chat-code'] to be displayed on page
        When I click on the element //div[@class='we-chat-code']//a
        And  I wait for //div[2]//app-banner[@location='dashboard-revamp-large-right']//div[@class='loader-img-banner'] to not be exist on page
        Then I expect //div[contains(@class,'dashboard-referal-detail')] should not be displayed on page
        And  I expect //div[@class='promotion-banner reviewer-comment']  should not be displayed on page
        And  I expect //div[@class='left-banner']//img should be displayed on page
        And  I expect //div[@class='right-banner']//img should be displayed on page
        And  I expect //div[@class='new-editage-feature'] should not be displayed on page
        And  I expect that element "//div[2]//app-banner[@location='dashboard-revamp-large-right']//img" does exist
        When I scroll the page to center and click on the element //ul[@class='top-nav-link']//li[contains(@class,'custom-dropdown')]/a
        And  I click on the element //a[contains(@href,'/logout')]

        @chn
        Examples:
            | email                            | password   |
            | "bdd_chn_subuser@mailinator.com" | "ColdCold" |