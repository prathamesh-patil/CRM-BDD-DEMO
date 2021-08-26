Feature: Help
    Background: I am on help page
        Given I open the website "/help"

    Scenario Outline: I expect FAQs should be functional on help page
        When I click on the element <tab>
        When I click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @eng @chn @jpn @pending-kor
        Examples:
            | tab                                                                                  | element                                                                   |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul[1]/li[1]/app-lynk/a | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul[2]/li[2] |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul[1]/li[2]/app-lynk/a | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul[3]/li[2] |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul[1]/li[3]/app-lynk/a | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul[4]/li[2] |