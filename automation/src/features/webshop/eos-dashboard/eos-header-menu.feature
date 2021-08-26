# @author Ninad Patkar

Feature: EOS Dashboard Header and Menu section

    Background: I am on EOS Dashboard
        Given I open the sso "/"

    @sanity @smoke
    Scenario Outline: I expect that R integration is working for ENG, JPN, KOR, BRL, TWN individual user in Headers
        When I set <email> to the inputfield //input[@id='email_id']
        And  I set <password> to the inputfield //input[@id='password']
        And  I click on the element //div/button[@type='submit']
        And  I wait for //img[@title='Editage Logo'] to be displayed on page
        Then I expect //div[@id='communication-popup'] should be displayed on page
        When I click on the element //div[@id='communication-popup']//a[@class='close']
        Then I expect that element //img[@title='Editage Logo'] has the attribute src containing value <logoLink>
        Then I expect //div[@class='dot-menu'] should be displayed on page
        When I click on the element //div[@class='dot-menu']
        Then I expect //div[@class='dot-menu-dropdown'] should be displayed on page
        When I click on the element //b[text()='Researcher.Life']//parent::a
        Then I expect the url "researcher.life" is opened in a new window
        When I scroll the page to center and click on the element //ul[@class='top-nav-link']//li[contains(@class,'custom-dropdown')]/a
        And  I click on the element //a[contains(@href,'/logout')]


        @eng
        Examples:
            | email                             | password   | logoLink                   |
            | "autobot_9srk7f5w@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |

        @kor
        Examples:
            | email                             | password   | logoLink                   |
            | "autobot_rr2qkc6x@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |

        @jpn
        Examples:
            | email                             | password   | logoLink                   |
            | "autobot_98kszwwd@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |

        @brl
        Examples:
            | email                             | password   | logoLink                   |
            | "autobot_lilrwsgy@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |

        @twn
        Examples:
            | email                             | password   | logoLink                   |
            | "autobot_jn53mech@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |


    Scenario Outline: I expect that R integration is not available to corporate user, subpartner users and other partners in Headers
        When I set <email> to the inputfield //input[@id='email_id']
        And  I set <password> to the inputfield //input[@id='password']
        And  I click on the button //div/button[@type='submit']
        And  I wait for //img[@title='Editage Logo'] to be displayed on page
        Then I expect that element //img[@title='Editage Logo'] has the attribute src containing value <logoLink>
        Then I expect //div[@class='dot-menu'] should not be displayed on page
        When I scroll the page to center and click on the element //ul[@class='top-nav-link']//li[contains(@class,'custom-dropdown')]/a
        And  I click on the element //a[contains(@href,'/logout')]

        @eng
        Examples:
            | email                             | password   | logoLink                   |
            | "autobot_l9vcrhib@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |
            | "bdd_eng_subuser@mailinator.com"  | "ColdCold" | subpartners/NxnByHX2mp.png |

        @kor
        Examples:
            | email                             | password   | logoLink                   |
            | "autobot_uic79l5v@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |
            | "bdd_kor_subuser@mailinator.com"  | "ColdCold" | Editage-logo.png?version=5 |

        @jpn
        Examples:
            | email                             | password   | logoLink                   |
            | "autobot_45dwrdwu@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |

        @brl
        Examples:
            | email                             | password   | logoLink                   |
            | "autobot_brazlcor@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |

        @twn
        Examples:
            | email                             | password   | logoLink                   |
            | "autobot_9mae76um@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |

        @engin
        Examples:
            | email                             | password   | logoLink                   |
            | "autobot_hbxfxg88@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |
            | "autobot_jozmznuc@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |

        @ind
        Examples:
            | email                             | password   | logoLink                   |
            | "autobot_gajac8vj@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |
            | "autobot_rkdyisps@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |

        @ger
        Examples:
            | email                             | password   | logoLink                   |
            | "autobot_eqgds3zj@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |
            | "autobot_gbyiolul@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |

        @kino
        Examples:
            | email                             | password   | logoLink                   |
            | "autobot_rpabrysr@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |
            | "autobot_tbgpvgjl@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |

        @kup
        Examples:
            | email                             | password   | logoLink                   |
            | "autobot_x182uxre@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |
            | "autobot_kupzjcsz@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |

        @wkh
        Examples:
            | email                             | password   | logoLink                   |
            | "autobot_rxzaas0b@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |
            | "autobot_fzbyfubn@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |

        @hdw
        Examples:
            | email                             | password   | logoLink                   |
            | "autobot_f2soqtaj@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |


    Scenario Outline: I expect R integration is not available to CHN partner in Headers
        When I set <email> to the inputfield //input[@id='email_id']
        And  I set <password> to the inputfield //input[@id='password']
        And  I click on the button //div/button[@type='submit']
        And  I wait for //img[@title='Editage Logo'] to be displayed on page
        Then I wait for //div[@class='we-chat-code'] to be displayed on page
        When I click on the element //div[@class='we-chat-code']//a
        Then I expect that element //img[@title='Editage Logo'] has the attribute src containing value <logoLink>
        Then I expect //div[@class='dot-menu'] should not be displayed on page
        When I scroll the page to center and click on the element //ul[@class='top-nav-link']//li[contains(@class,'custom-dropdown')]/a
        And  I click on the element //a[contains(@href,'/logout')]

        @chn
        Examples:
            | email                             | password   | logoLink                   |
            | "autobot_4nxyejsh@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |
            | "autobot_chncoyjt@mailinator.com" | "ColdCold" | Editage-logo.png?version=5 |
            | "bdd_chn_subuser@mailinator.com"  | "ColdCold" | Editage-logo.png?version=5 |