# @author Ninad Patkar

Feature: New User order form sl1 page

    Background: I am on new user form
        Given I open the eos "/order/ncf" and wait for load

    @sanity
    Scenario Outline: I expect that SL1 page title should be displayed
        When I wait for <element> to be displayed on page
        Then I expect that element <element> matches the text <title>
        @eng
        Examples:
            | element                        | title                                              |
            | //h1[@class='center relative'] | "How can we help you in your publication journey?" |

        @chn
        Examples:
            | element                        | title          |
            | //h1[@class='center relative'] | "您正在寻找？" |

        @jpn
        Examples:
            | element                        | title                                    |
            | //h1[@class='center relative'] | "ご注文されるサービスをお選びください。" |

        @kor
        Examples:
            | element                        | title                                      |
            | //h1[@class='center relative'] | "당신의 논문 출판 여정에 대한 지원 서비스" |

    @sanity
    Scenario Outline: I expect that all the services should be available on sl1 page
        When I wait for <element> to be displayed on page
        Then I expect that element <element> has the link <link>

        @eng @chn @kor
        Examples:
            | element                                 | link                                                                                                 |
            | //ng-component/div[1]/div//div[1]/div/a | "/order/ncf/english-editing"                                                                         |
            | //ng-component/div[1]/div//div[2]/div/a | "/order/ncf/translation-services"                                                                    |
            | //ng-component/div[1]/div//div[3]/div/a | "/order/ncf/publication-support-packages"                                                            |
            | //ng-component/div[1]/div//div[4]/div/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc" |

        @jpn
        Examples:
            | element                                 | link                                                                                                 |
            | //ng-component/div[1]/div//div[1]/div/a | "/order/ncf/english-editing"                                                                         |
            | //ng-component/div[1]/div//div[2]/div/a | "/order/ncf/translation-services"                                                                    |
            | //ng-component/div[1]/div//div[3]/div/a | "/order/ncf/publication-support-packages"                                                            |
            | //ng-component/div[1]/div//div[4]/div/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc" |
            | //ng-component/div[1]/div//div[5]/div/a | "https://www.editage.jp/media-nclient"                                                               |
