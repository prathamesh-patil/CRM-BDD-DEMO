Feature: Services page

    Background: I am on services page
        Given I open the website "/services"

    @sanity
    Scenario Outline: I expect that all links on services page should be verified against expectation
        Then I expect that element <element> has the link <link>
        @eng
        Examples:
            | element                                                                                     | link                                         |
            | /html/body/app-root/ng-component/app-featured-block-quartz/section/div/div[1]/app-lynk[1]/a | "/services/english-editing"                  |
            | /html/body/app-root/ng-component/app-featured-block-quartz/section/div/div[1]/app-lynk[2]/a | "/services/translation"                      |
            | /html/body/app-root/ng-component/app-featured-block-quartz/section/div/div[1]/app-lynk[3]/a | "/services/publishing-services-packs"        |
            | /html/body/app-root/ng-component/app-featured-block-quartz/section/div/div[1]/app-lynk[4]/a | "/services/research-promotion"               |
            | /html/body/app-root/ng-component/app-featured-block-obsidian/section/div/div/app-lynk[1]/a  | "/services/other/journal-selection"          |
            | /html/body/app-root/ng-component/app-featured-block-obsidian/section/div/div/app-lynk[2]/a  | "/services/other/journal-submission"         |
            | /html/body/app-root/ng-component/app-featured-block-obsidian/section/div/div/app-lynk[3]/a  | "/services/other/resubmission-support"       |
            | /html/body/app-root/ng-component/app-featured-block-obsidian/section/div/div/app-lynk[4]/a  | "/services/other/artwork-preparation"        |
            | /html/body/app-root/ng-component/app-featured-block-obsidian/section/div/div/app-lynk[5]/a  | "/services/other/plagiarism-check-report"    |
            | /html/body/app-root/ng-component/app-featured-block-obsidian/section/div/div/app-lynk[6]/a  | "/services/other/pre-submission-peer-review" |
            | /html/body/app-root/ng-component/app-featured-block-obsidian/section/div/div/app-lynk[7]/a  | "/services/other/thesis-editing"             |
            | /html/body/app-root/ng-component/app-featured-block-obsidian/section/div/div/app-lynk[8]/a  | "/services/other/statistical-review"         |
            | /html/body/app-root/ng-component/app-featured-block-obsidian/section/div/div/app-lynk[9]/a  | "/services/other/experimental-design"        |
            | /html/body/app-root/ng-component/app-featured-block-obsidian/section/div/div/app-lynk[10]/a | "/services/other/literature-search"          |
            | /html/body/app-root/ng-component/app-featured-block-obsidian/section/div/div/app-lynk[11]/a | "/services/other/book-editing"               |
            | /html/body/app-root/ng-component/app-featured-block-obsidian/section/div/div/app-lynk[12]/a | "/services/other/proof-reading"              |

