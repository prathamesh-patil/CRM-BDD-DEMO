
# @author Sherin

Feature: Re-editing page

    Background: I am on new re-editing page
        Given I open the website "/services/english-editing/re-editing"

    @sanity
    Scenario Outline: I expect that all secondary-navigation menu links on re-editing page should be verified.
        When I click on the element <Menu>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | Menu                                    | ExpectedUrl                                          |
            | //app-breadcrumb-option-large/div[2]//a | "/services/english-editing/standard-editing-plan"    |
            | //app-breadcrumb-option-large/div[3]//a | "/services/english-editing/premium-editing-plan"     |
            | //app-breadcrumb-option-large/div[4]//a | "/services/english-editing/top-journal-editing-plan" |
            | //app-breadcrumb-option-large/div[5]//a | "/pricing/editing-service"                           |

    @sanity
    Scenario Outline: I expect that all secondary-navigation sub-menu links on re-editing page should be verified.
        When I click on the element <Menu>
        Then I expect that element <sub-menu> has the attribute <data> with value <value>
        And I click on the element <sub-menu>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | Menu                                             | sub-menu                                                       | ExpectedUrl                                    | data             | value                                      |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[2]//a         | "/services/english-editing/compare-plans"      | data-description | mre v2-secondary nav-click-compare plans   |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[4]//a         | "/services/english-editing/re-editing"         | data-description | mre v2-secondary nav-click-re-editing      |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[2]/div[2]/app-lynk/a | "/services/other/book-translation-and-editing" | data-description | mre v2-secondary nav-click-book TL editing |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[5]//a         | "/services/english-editing/sample"             | data-description | mre v2-secondary nav-click-editing sample  |

    @regression
    Scenario Outline: I expect to verify secondary-navigation sub-menu links on re-editing page opening in new tab
        When I click on the element <Menu>
        And I wait for <sub-menu> to be displayed on page
        Then I expect that element <sub-menu> has the attribute <data> with value <value>
        And I click on the element <sub-menu>
        Then I expect the url <ExpectedUrl> is opened in a new window
        @jpn
        Examples:
            | Menu                                             | sub-menu                                                       | ExpectedUrl                                                         | data             | value                                              |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[3]//a         | "/info/editing_serv/support.html"                                   | data-description | mre v2-secondary nav-click-after sales support     |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[6]//a         | "/info/editing_serv/fileformats.html"                               | data-description | mre v2-secondary nav-click-file formats            |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[1]/div[7]//a         | "/info/editing_serv/curation-english-manuscript-writing-posts.html" | data-description | mre v2-secondary nav-click-how to write manuscript |
            | //app-breadcrumb-option-large/div[6]/div[1]/span | //app-breadcrumb-option-large/div[6]//div[2]/div[3]/app-lynk/a | "/info/ppc/thesis-editing"                                          | data-description | mre v2-secondary nav-click-thesis editing          |


    @sanity @regression
    Scenario Outline: I expect to verify get quote CTA on top navigation on re-editing page
        When I click on the element <GetQuoteCTA>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | GetQuoteCTA                  | ExpectedUrl  |
            | //app-navigator[2]//li[4]//a | "/order/ncf" |
    @sanity
    Scenario Outline: I expect that the CTA redirections on MRE options block are verified in the re-editing page.
        When I click on the element <link>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | link                                                                                                     | ExpectedUrl                                          |
            | /html/body/app-root/ng-component/app-mre-service-ruby/div/div/div/div[2]/div[1]/div[2]/div[1]/app-lynk/a | "/services/english-editing/top-journal-editing-plan" |
            | /html/body/app-root/ng-component/app-mre-service-ruby/div/div/div/div[2]/div[1]/div[3]/div[1]/app-lynk/a | "/services/english-editing/premium-editing-plan"     |
            | /html/body/app-root/ng-component/app-mre-service-ruby/div/div/div/div[2]/div[1]/div[4]/div[1]/app-lynk/a | "/services/english-editing/standard-editing-plan"    |


    @regression
    Scenario Outline: I expect that the CTA redirections opening on new window on MRE options block are verified in the re-editing page.
        When I click on the element <link>
        Then I expect the url <ExpectedUrl> is opened in a new window
        @jpn
        Examples:
            | link                                  | ExpectedUrl                          |
            | //app-mre-service-ruby//li/app-lynk/a | "/info/editing_serv/formatting.html" |



    @sanity
    Scenario Outline: I expect that the CTA redirections on get quote multi-cta block are verified in the re-editing page.
        When I click on the element <get-quote-multi-CTA>
        Then I expect the url to contain <ExpectedUrl>
        And I should go back to the previous page

        @jpn
        Examples:
            | get-quote-multi-CTA                                                                         | ExpectedUrl                                                             |
            | /html/body/app-root/ng-component/app-featured-card-opal/div[2]/div/div/div[2]/app-lynk[3]/a | "/order/ncf/english-editing/scientific-editing/document?source=website" |
            | /html/body/app-root/ng-component/app-featured-card-opal/div[2]/div/div/div[2]/app-lynk[2]/a | "/order/ncf/english-editing/premium-editing/document?source=website"    |
            | /html/body/app-root/ng-component/app-featured-card-opal/div[2]/div/div/div[2]/app-lynk[1]/a | "/order/ncf/english-editing/standard-editing/document?source=website"   |


    @regression
    Scenario Outline: I expect that the data description of all links/CTA's should ve verified on re-editing page
        Then I expect that element <element> has the attribute <data> with value <value>

        @jpn
        Examples:
            | element                                                                                                  | data             | value                                                       |
            | /html/body/app-root/ng-component/app-mre-service-ruby/div/div/div/div[2]/div[1]/div[2]/div[1]/app-lynk/a | data-description | mre v2-ed support-mre options-sce-click                     |
            | /html/body/app-root/ng-component/app-mre-service-ruby/div/div/div/div[2]/div[1]/div[3]/div[1]/app-lynk/a | data-description | mre v2-ed support-mre options-pes-click                     |
            | /html/body/app-root/ng-component/app-mre-service-ruby/div/div/div/div[2]/div[1]/div[4]/div[1]/app-lynk/a | data-description | mre v2-ed support-mre options-ses-click                     |
            | //app-mre-service-ruby//li/app-lynk/a                                                                    | data-description | mre v2-ed support-mre options-formatting page-click         |
            | /html/body/app-root/ng-component/app-featured-card-opal/div[2]/div/div/div[2]/app-lynk[1]/a              | data-description | mre v2-ed support-multi cta band-ses-click                  |
            | /html/body/app-root/ng-component/app-featured-card-opal/div[2]/div/div/div[2]/app-lynk[2]/a              | data-description | mre v2-ed support-multi cta band-pes-click                  |
            | /html/body/app-root/ng-component/app-featured-card-opal/div[2]/div/div/div[2]/app-lynk[3]/a              | data-description | mre v2-ed support-multi cta band-sce-click                  |
            | //app-breadcrumb-option-large/div[1]//a                                                                  | data-description | mre v2-sec nav-ParentEnglishEditing-null-click-Sec Nav-null |
            | //app-breadcrumb-option-large/div[2]//a                                                                  | data-description | mre v2-sec nav-AdvancedEditing-null-click-Sec Nav-null      |
            | //app-breadcrumb-option-large/div[3]//a                                                                  | data-description | mre v2-sec nav-PremiumEditing-null-click-Sec Nav-null       |
            | //app-breadcrumb-option-large/div[4]//a                                                                  | data-description | mre v2-sec nav-Scientific-null-click-Sec Nav-null           |
            | //app-breadcrumb-option-large/div[5]//a                                                                  | data-description | mre v2-secondary nav-click-editing pricing                  |


    @regression
    Scenario Outline: I expect all links for contact details should be verified on re editing page
        Then I expect that element <element> has the link <link>
        And I should go back to the previous page

        @jpn
        Examples:
            | element                           | link                             |
            | //app-feature-lapis[1]/app-lynk/a | "tel:0120502987"                 |
            | //app-feature-lapis[3]/app-lynk/a | "mailto:submissions@editage.com" |