Feature: Book editing service

    Background: I am on book editing page
        Given I open the website "/services/other/book-editing"

    @sanity
    Scenario Outline: I expect to see correct buy now link on book editing page
        Then I expect that element <element> has the link <link> opening in new tab
        @eng
        Examples:
            | element                                                                                       | link                                      |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[1]/div/app-lynk/a | "/info/book-editing-services/#quote-form" |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                        | "/info/book-editing-services/#quote-form" |

    @sanity
    Scenario Outline: I expect that all links on book editing page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @eng
        Examples:
            | element                                                                                                                                  | link                                      |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div/div/div[1]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/info/book-editing-services/#quote-form" |
            | /html/body/app-root/ng-component/app-plan-selection-ruby/section/div/div/div/div[2]/app-plan-information-block/div/div[3]/div/app-lynk/a | "/info/book-editing-services/#quote-form" |
            | /html/body/app-root/ng-component/app-plan-selection-opal/section/div/div/div/div[1]/app-lynk/a                                           | "/info/book-editing-services/#quote-form" |
            | /html/body/app-root/ng-component/app-featured-block-diamond/section/div/div/div[2]/div[2]/app-lynk/a                                     | "/info/book-editing-services/#quote-form" |
            | /html/body/app-root/ng-component/app-featured-block-pearl/section/div[1]/app-feature-pearl[3]/div/div[1]/div/app-lynk/a                  | "/info/book-editing-services/#quote-form" |
