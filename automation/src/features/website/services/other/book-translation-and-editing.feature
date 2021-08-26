Feature: Book translation and editing

    Background: I am on book-translation-and-editing page
        Given I open the website "/services/other/book-translation-and-editing"

    @sanity
    Scenario Outline: I expect that all links on book translation and editing page should scroll to formstack form according to expectation
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <formstackPath> has the class <formstackClass>
        @jpn
        Examples:
            | path                                                                                                    | link                                                                      | formstackPath        | formstackClass |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[4]/app-lynk/a                                  | "/services/other/book-translation-and-editing?section=book-services-form" | //*[@id="formStack"] | "wrapper"      |
            | /html/body/app-root/ng-component/app-introduction-pearl/section/div/div/div[1]/div/app-lynk/a           | "/services/other/book-translation-and-editing?section=book-services-form" | //*[@id="formStack"] | "wrapper"      |
            | /html/body/app-root/ng-component/app-featured-block-diamond[1]/section/div/div/div[2]/div[2]/app-lynk/a | "/services/other/book-translation-and-editing?section=book-services-form" | //*[@id="formStack"] | "wrapper"      |
            | /html/body/app-root/ng-component/app-featured-block-diamond[2]/section/div/div/div[2]/div[2]/app-lynk/a | "/services/other/book-translation-and-editing?section=book-services-form" | //*[@id="formStack"] | "wrapper"      |
