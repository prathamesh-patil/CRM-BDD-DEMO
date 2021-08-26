Feature: Literature review service

    Background: I am on literature-review page
        Given I open the website "/services/other/literature-review"

    @sanity
    Scenario Outline: I expect that all links on literature review page should scroll to formstack form according to expectation
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <formstackPath> has the class <formstackClass>
        @jpn
        Examples:
            | path                                                                                                 | link                                                     | formstackPath        | formstackClass |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                               | "/services/other/literature-review?section=contact-form" | //*[@id="formStack"] | "wrapper"      |
            | /html/body/app-root/ng-component/app-featured-block-diamond/section/div/div/div[2]/div[2]/app-lynk/a | "/services/other/literature-review?section=contact-form" | //*[@id="formStack"] | "wrapper"      |

    Scenario Outline: I expect FAQs should be functional on literature review page
        When I scroll the page to end and click on the element <element>
        Then I expect that element <element> has the class "text-pearl-delta"
        And I scroll the page to end and click on the element <element>
        Then I expect that element <element> has the class "text-ruby-beta"
        @jpn
        Examples:
            | element                                                                |
            | /html/body/app-root/ng-component/app-faq-block/div[2]/div/div/ul/li[2] |