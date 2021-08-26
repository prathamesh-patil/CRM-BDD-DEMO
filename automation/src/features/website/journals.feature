Feature: Journals

    Background: I am on journal parent page
        Given I open the website "/journal"

    Scenario Outline: I expect that journal cards should be working
        Then I expect that element <element> has the class "text-ruby-alpha"
        @eng @chn @jpn
        Examples:
            | element                                                                                                                          |
            | /html/body/app-root/app-journals/app-journal-list/section/div[1]/div/div[2]/div[1]/app-journal-card[1]/div/div/app-lynk/a/div/h3 |