Feature: Quality

    Background: I am on quality page
        Given I open the website "/quality"

    Scenario Outline: I expect FAQs should be functional on quality page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @eng @chn @jpn @pending-kor
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[3] |

    @sanity
    Scenario Outline: I should see correct value on quality page "Get Started" link
        Then I expect that element <element> has the link <link>
        @eng @chn @jpn @pending-kor
        Examples:
            | element                                                                                          | link         |
            | /html/body/app-root/ng-component/app-quick-note-ruby/app-note-opal/div/div/div[2]/div/app-lynk/a | "/order/ncf" |

    @chn
    Scenario: I expect to verify the h1 tags on quality page
        Then I expect the page to contain tagname h1 to be equal to count 1

    Scenario Outline: I expect to verify all links have the attribute with the required value
        Then I expect that element <element> has the attribute <attribute> with value <value>
        @chn
        Examples:
            | element                                                                                          | attribute | value    |
            | /html/body/app-root/ng-component/app-quick-note-ruby/app-note-opal/div/div/div[2]/div/app-lynk/a | rel       | nofollow |

