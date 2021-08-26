Feature: Healthcheck for Editage applications

    Background: I am opening the NCF

    @sanity
    Scenario Outline: I expect that Cactus CRM is up and running
        Given I open the crm "/"
        When I set <email> to the inputfield //input[@id='email_id']
        When I set <password> to the inputfield //input[@id='password']
        When I click on the button //form[@id='login_form']//div/button[@type='submit']
        Then I expect //li[@class='dropdown notifications-menu user-menu']/a/span should be displayed on page
        Then I expect that element //li[@class='dropdown notifications-menu user-menu']/a/span matches the text <name>
        When I click on the element //li[contains(@class,'user-menu')]/a
        And  I click on the element //a[contains(@href,'/logout')]

        @crm
        Examples:
            | email                           | password       | name       |
            | "ninad.patkar@cactusglobal.com" | "ninad.patkar" | "Ninad P." |

    @sanity
    Scenario Outline: I expect that Editage application is up and running
        Given I open the eos <url> and wait for load
        Then I expect that element <element> contains the text <title>

        @eng
        Examples:
            | url          | element                        | title                                              |
            | "/order/ncf" | //h1[@class='center relative'] | "How can we help you in your publication journey?" |

        @chn
        Examples:
            | url          | element                        | title          |
            | "/order/ncf" | //h1[@class='center relative'] | "您正在寻找？" |

        @jpn
        Examples:
            | url          | element                        | title                                    |
            | "/order/ncf" | //h1[@class='center relative'] | "ご注文されるサービスをお選びください。" |

        @kor
        Examples:
            | url          | element                        | title                                      |
            | "/order/ncf" | //h1[@class='center relative'] | "당신의 논문 출판 여정에 대한 지원 서비스" |

        @engin
        Examples:
            | url                      | element                       | title                                           |
            | "/submit-order-new-user" | //h1[@class='ecf-heading-h1'] | "Get an instant price or quote in 3 easy steps" |

        @ger
        Examples:
            | url                      | element                       | title                                           |
            | "/submit-order-new-user" | //h1[@class='ecf-heading-h1'] | "Get an instant price or quote in 3 easy steps" |

        @brl
        Examples:
            | url                      | element                       | title               |
            | "/submit-order-new-user" | //h1[@class='ecf-heading-h1'] | "Enviar manuscrito" |

        @tfg
        Examples:
            | url                      | element                       | title                                           |
            | "/submit-order-new-user" | //h1[@class='ecf-heading-h1'] | "Get an instant price or quote in 3 easy steps" |

        @tfc
        Examples:
            | url                      | element                       | title          |
            | "/submit-order-new-user" | //h1[@class='ecf-heading-h1'] | "提交您的文稿" |

        @kino
        Examples:
            | url                      | element                       | title                          |
            | "/submit-order-new-user" | //h1[@class='ecf-heading-h1'] | "自動お見積り／ご注文フォーム" |

        @kup
        Examples:
            | url                      | element                       | title                          |
            | "/submit-order-new-user" | //h1[@class='ecf-heading-h1'] | "自動お見積り／ご注文フォーム" |

        @wkh
        Examples:
            | url                      | element                       | title                                           |
            | "/submit-order-new-user" | //h1[@class='ecf-heading-h1'] | "Get an instant price or quote in 3 easy steps" |

        @hdw
        Examples:
            | url                      | element                       | title                                           |
            | "/submit-order-new-user" | //h1[@class='ecf-heading-h1'] | "Get an instant price or quote in 3 easy steps" |

        @sageg
        Examples:
            | url                      | element                       | title                                           |
            | "/submit-order-new-user" | //h1[@class='ecf-heading-h1'] | "Get an instant price or quote in 3 easy steps" |

        @sagec
        Examples:
            | url                      | element                       | title          |
            | "/submit-order-new-user" | //h1[@class='ecf-heading-h1'] | "提交您的文稿" |

        @wasg
        Examples:
            | url                      | element                   | title                                          |
            | "/submit-order-new-user" | //h2[@class='heading-h2'] | "Please share your details for the quotation." |

        @wasc
        Examples:
            | url                      | element                   | title                        |
            | "/submit-order-new-user" | //h2[@class='heading-h2'] | "填写个人信息，方便获取报价" |

    @sanity
    Scenario Outline: I expect that website is up and running
        Given I open the <website> "/" and wait for load
        Then I expect <element> should be displayed on page

        @brl
        Examples:
            | website        | element          |
            | legacy_website | //h1[@id='logo'] |

        @kor
        Examples:
            | website        | element                      |
            | legacy_website | //div[@class='editage-logo'] |

        @twn
        Examples:
            | website        | element                |
            | legacy_website | //div[@id='logo_wrap'] |

        @ger
        Examples:
            | website        | element           |
            | legacy_website | //div[@id='logo'] |

        @osa
        Examples:
            | website        | element                       |
            | legacy_website | //div[@class='navbar-header'] |

        @tfg
        Examples:
            | website        | element                 |
            | legacy_website | //a[@href='/services/'] |

        @tfc
        Examples:
            | website        | element                 |
            | legacy_website | //a[@href='/services/'] |

        @sageg
        Examples:
            | website        | element                 |
            | legacy_website | //a[@class='sage-logo'] |

        @sagec
        Examples:
            | website        | element                 |
            | legacy_website | //a[@class='sage-logo'] |

        @wasg
        Examples:
            | website        | element                               |
            | legacy_website | //a[@class='navbar-brand wiley-logo'] |

        @wasc
        Examples:
            | website        | element                               |
            | legacy_website | //a[@class='navbar-brand wiley-logo'] |

        @kino
        Examples:
            | website        | element                |
            | legacy_website | //div[@id='logo_wrap'] |

        @wkh
        Examples:
            | website        | element                     |
            | legacy_website | //div[@class='holder-head'] |

        @hdw
        Examples:
            | website        | element                 |
            | legacy_website | //img[@class='logoDiv'] |

        @chn
        Examples:
            | website | element             |
            | website | //div[@id='header'] |

        @jpn
        Examples:
            | website | element             |
            | website | //div[@id='header'] |

        @eng
        Examples:
            | website | element             |
            | website | //div[@id='header'] |