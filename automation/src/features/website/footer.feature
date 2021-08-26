Feature: Footer

    Background: I am on landing page
        Given I open the website "/"

    @sanity
    Scenario Outline: I expect all footer links that are opening in same tab should get verified against expectation
        Then I expect that element <element> has the link <link>
        @eng
        Examples:
            | element                                                                          | link                                                 |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[1]/app-lynk/a | "/services/english-editing/standard-editing-plan"    |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[2]/app-lynk/a | "/services/english-editing/premium-editing-plan"     |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[3]/app-lynk/a | "/services/english-editing/top-journal-editing-plan" |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[4]/app-lynk/a | "/services/translation"                              |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[5]/app-lynk/a | "/services/publishing-services-packs/gold-pack"      |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[6]/app-lynk/a | "/services/publishing-services-packs/silver-pack"    |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[7]/app-lynk/a | "/services/publishing-services-packs/platinum-pack"  |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[4]/ul/li[3]/app-lynk/a | "/partner-with-us"                                   |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[5]/ul/li[3]/app-lynk/a | "https://www.facebook.com/Editage"                   |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[5]/ul/li[4]/app-lynk/a | "https://www.youtube.com/user/editage"               |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[5]/ul/li[5]/app-lynk/a | "https://twitter.com/Editage"                        |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[5]/ul/li[6]/app-lynk/a | "https://www.linkedin.com/showcase/editage/"         |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[8]/app-lynk/a | "/subject-expertise"                                 |

        @jpn
        Examples:
            | element                                                                           | link                                                                        |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[1]/app-lynk/a  | "/services/english-editing/standard-editing-plan"                           |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[2]/app-lynk/a  | "/services/english-editing/premium-editing-plan"                            |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[3]/app-lynk/a  | "/services/english-editing/top-journal-editing-plan"                        |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[4]/app-lynk/a  | "/services/translation/standard-translation-plan"                           |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[5]/app-lynk/a  | "/services/translation/premium-translation-plan"                            |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[6]/app-lynk/a  | "/services/translation/top-journal-translation-plan"                        |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[7]/app-lynk/a  | "/services/publishing-services-packs/writing-plus-full-publication-support" |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[8]/app-lynk/a  | "/services/publishing-services-packs/full-publication-support"              |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[9]/app-lynk/a  | "/services/publishing-services-packs/express-submission-support"            |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[7]/app-lynk/a  | "/services/translation/english-to-japanese"                                 |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[5]/ul/li[3]/app-lynk/a  | "/partner-with-us"                                                          |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[7]/ul/li[11]/app-lynk/a | "https://www.facebook.com/EditageJapan"                                     |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[7]/ul/li[12]/app-lynk/a | "https://twitter.com/editagejapan"                                          |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[4]/ul/li[5]/app-lynk/a  | "/subject-expertise"                                                        |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[8]/app-lynk/a  | "/services/translation/basic-translation-plan"                              |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[4]/ul/li[6]/app-lynk/a  | "/types-of-document"                                                        |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[1]/app-lynk/a  | "/services/other/literature-review"                                         |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[5]/app-lynk/a  | "/services/other/book-translation-and-editing"                              |

        @pending-kor
        Examples:
            | element                                                                          | link                                                               |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[1]/app-lynk/a | "/services/english-editing/standard-editing-plan"                  |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[2]/app-lynk/a | "/services/english-editing/premium-editing-plan"                   |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[3]/app-lynk/a | "/services/english-editing/top-journal-editing-plan"               |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[4]/app-lynk/a | "/services/translation/standard-translation-plan"                  |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[5]/app-lynk/a | "/services/translation/premium-translation-plan"                   |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[6]/app-lynk/a | "/services/publishing-services-packs/express-submission-support"   |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[7]/app-lynk/a | "/services/publishing-services-packs/sci-publication-support-plus" |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[1]/ul/li[8]/app-lynk/a | "/services/publishing-services-packs/express-pack"                 |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[4]/ul/li[4]/app-lynk/a | "/partner-with-us"                                                 |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[4]/ul/li[1]/app-lynk/a | "/payments"                                                        |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[4]/ul/li[2]/app-lynk/a | "/pricing"                                                         |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[4]/ul/li[3]/app-lynk/a | "/help"                                                            |

    @sanity
    Scenario Outline: I expect all footer links that are opening in new tab should get verified against expectation
        Then I expect that element <element> has the link <link> opening in new tab
        @eng
        Examples:
            | element                                                                          | link                                                                                                    |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[1]/app-lynk/a | "/refer-a-friend"                                                                                       |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[2]/app-lynk/a | "/info/labs"                                                                                            |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[3]/app-lynk/a | "/info/editage-card"                                                                                    |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[4]/app-lynk/a | "/info/editing-services/post-editing.html"                                                              |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[5]/app-lynk/a | "/insights"                                                                                             |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[6]/app-lynk/a | "/all-about-publication/"                                                                               |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[7]/app-lynk/a | "/journal"                                                                                              |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[4]/ul/li[1]/app-lynk/a | "/info/pricing/payments.html"                                                                           |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[4]/ul/li[2]/app-lynk/a | "/info/faqs"                                                                                            |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[4]/ul/li[4]/app-lynk/a | "/info/file/Cactus_Privacy_Policy.pdf?bottom=&PlacementPage:Footer&PlacementButton/Link:Privacy_Policy" |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[4]/ul/li[5]/app-lynk/a | "/info/quality/terms-of-use.html"                                                                       |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[4]/ul/li[6]/app-lynk/a | "/about-us/"                                                                                            |

        @jpn
        Examples:
            | element                                                                          | link                                            |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[2]/app-lynk/a | "/narration/index.html"                         |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[3]/app-lynk/a | "/transcription/english-transcription.html"     |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[4]/app-lynk/a | "/transcription/transcription-translation.html" |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[6]/app-lynk/a | "/info/rakuraku-web/"                           |

            | /html/body/app-root/app-footer/div/section/div/div[1]/div[4]/ul/li[1]/app-lynk/a | "/info/testimonials/"    |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[4]/ul/li[2]/app-lynk/a | "/refer-a-friend"        |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[4]/ul/li[3]/app-lynk/a | "/info/editage-for-lab/" |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[4]/ul/li[4]/app-lynk/a | "/journal"               |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[5]/ul/li[1]/app-lynk/a | "/abt_us/"               |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[5]/ul/li[2]/app-lynk/a | "/info/news/"            |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[5]/ul/li[4]/app-lynk/a | "/info/privacy/"         |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[5]/ul/li[5]/app-lynk/a | "/info/tokushou/"        |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[5]/ul/li[6]/app-lynk/a | "/info/other/terms.html" |

        @pending-kor
        Examples:
            | element                                                                          | link                                    |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[1]/app-lynk/a | "/refer-a-friend"                       |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[2]/app-lynk/a | "/labs"                                 |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[3]/app-lynk/a | "/editagecard"                          |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[4]/app-lynk/a | "/editing/mre.html"                     |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[5]/app-lynk/a | "/insights"                             |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[6]/app-lynk/a | "/editageworkshop/"                     |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[2]/ul/li[7]/app-lynk/a | "/webinars/exclusive.html"              |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[4]/ul/li[5]/app-lynk/a | "/other/privacy.html"                   |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[4]/ul/li[6]/app-lynk/a | "/other/terms.html"                     |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[4]/ul/li[7]/app-lynk/a | "/disclaimer.html"                      |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[4]/ul/li[8]/app-lynk/a | "aboutus/"                              |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[5]/ul/li[6]/app-lynk/a | "https://www.facebook.com/EditageKorea" |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[5]/ul/li[7]/app-lynk/a | "https://twitter.com/editageKorea"      |

    Scenario Outline: I should see correct company contact information
        Then I expect that element <element> matches the text <content>
        @eng
        Examples:
            | element                                                                          | content                   |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[5]/ul/li[1]/app-lynk/a | "Call: +1 (833) 979-0061" |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[5]/ul/li[2]/app-lynk/a | "request@editage.com"     |

        @jpn
        Examples:
            | element                                                                           | content                   |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[7]/ul/li[9]/app-lynk/a  | "電話：0120-50-2987"      |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[7]/ul/li[10]/app-lynk/a | "submissions@editage.com" |

        @pending-kor
        Examples:
            | element                                                                          | content                    |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[5]/ul/li[1]/app-lynk/a | "Call: 02-3478-4396"       |
            | /html/body/app-root/app-footer/div/section/div/div[1]/div[5]/ul/li[2]/app-lynk/a | "submit-korea@editage.com" |

    Scenario Outline: I expect to verify all links have the attribute with the required value
        Then I expect that element <element> has the attribute <attribute> with value <value>
        @chn
        Examples:
            | element                                                                           | attribute | value    |
            | /html/body/app-root/app-footer/div/section/div/div[4]/div[1]/div[3]/app-lynk[2]/a | rel       | nofollow |
            | /html/body/app-root/app-footer/div/section/div/div[4]/div[1]/div[4]/app-lynk/a    | rel       | nofollow |

    @regression
    Scenario Outline: I exect to verify the ICP link in footer
        When I click on the element <ICP link>
        Then I expect the url <Expected url> is opened in a new window

        @chn
        Examples:
            | ICP link                     | Expected url        |
            | //app-footer//app-lynk[2]//a | "beian.miit.gov.cn" |

    @regression
    Scenario Outline: I expect that the data description of all links/CTA's should ve verified on footer
        Then I expect that element <links/CTA> has the attribute data-description containing value <value>

        @chn
        Examples:
            | links/CTA                    | value                               |
            | //app-footer//app-lynk[2]//a | footer-contact-us-null-click-wechat |