Feature: Experimental design service

    Background: I am on experimental design service
        Given I open the website "/services/other/experimental-design"

    @sanity
    Scenario Outline: I expect to see correct buy now link on experimental design page
        Then I expect that element <element> has the link <link>
        @eng
        Examples:
            | element                                                                                       | link                           |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[1]/div/app-lynk/a | "kolabtree.com/create-project" |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                        | "kolabtree.com/create-project" |

    Scenario Outline: I expect FAQs should be functional on experimental design page
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @eng
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[3] |