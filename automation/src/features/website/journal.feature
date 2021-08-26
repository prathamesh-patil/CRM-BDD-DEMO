Feature: Journal

    Background: I am on journal page
        Given I open the website "/journal/2d-materials"

    @sanity
    Scenario Outline: I expect that all links on journal page should be verified against expectation
        Then I expect that element <path> has the link <link>
        @eng
        Examples:
            | link                                                 | path                                                                                                      |
            | "/order/ncf/?source=website"                         | /html/body/app-root/app-journal/app-journal-table-block/section/div/app-lynk/a                            |
            | "/services/english-editing/top-journal-editing-plan" | /html/body/app-root/app-journal/app-service-pitch-ruby/div[2]/div/div[1]/div/div[2]/div[2]/div/app-lynk/a |
        @chn
        Examples:
            | link                                                                                      | path                                                                                                |
            | "/order/ncf/publication-support-packages/custom-pack/document/plan/add-on?source=website" | /html/body/app-root/app-journal/app-featured-block-diamond/section/div/div/div[2]/div[2]/app-lynk/a |

        @jpn
        Examples:
            | link                        | path                                                                           |
            | "/order/ncf?source=website" | /html/body/app-root/app-journal/app-journal-table-block/section/div/app-lynk/a |

    Scenario Outline: I expect to open 404 page when journal page not found
        Given I open the website "/journal/2d-mater"
        Then I expect that element <infoElementPath> has the class <infoElementClass>
        @eng
        Examples:
            | infoElementPath                   | infoElementClass       |
            | //*[@id="inner_full_wrap"]/div[1] | "page_section_heading" |

        @chn
        Examples:
            | infoElementPath           | infoElementClass |
            | //*[@id="error"]/div/span | "text-404"       |
