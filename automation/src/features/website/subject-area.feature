Feature: Subject Area

    Background: I am on subject area page
        Given I open the website "/subjectarea/abnormal-psychology"

    @sanity
    Scenario Outline: I expect that all links on subject area page should be verified against expectation
        Then I expect that element <path> has the link <link>
        @eng @chn
        Examples:
            | link                                                                                                                | path                                                                                                      |
            | "/order/ncf/english-editing?source=website"                                                                         | /html/body/app-root/app-subject-area/app-featured-block-onyx/section/div/div[3]/div/div/div[2]/app-lynk/a |
            | "/order/ncf/translation-services?source=website"                                                                    | /html/body/app-root/app-subject-area/app-featured-block-onyx/section/div/div[4]/div/div/div[2]/app-lynk/a |
            | "/order/ncf/publication-support-packages?source=website"                                                            | /html/body/app-root/app-subject-area/app-featured-block-onyx/section/div/div[5]/div/div/div[2]/app-lynk/a |
            | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&source=website" | /html/body/app-root/app-subject-area/app-featured-block-onyx/section/div/div[6]/div/div/div[2]/app-lynk/a |
            | "/order/ncf/?source=website"                                                                                        | /html/body/app-root/app-subject-area/app-sa-table-block/section/div/app-lynk/a                            |

    Scenario Outline: I expect to open 404 page when subjectarea page not found
        Given I open the website "/subjectarea/abnormal"
        Then I expect that element <infoElementPath> has the class <infoElementClass>
        @eng
        Examples:
            | infoElementPath                   | infoElementClass       |
            | //*[@id="inner_full_wrap"]/div[1] | "page_section_heading" |

        @chn
        Examples:
            | infoElementPath           | infoElementClass |
            | //*[@id="error"]/div/span | "text-404"       |