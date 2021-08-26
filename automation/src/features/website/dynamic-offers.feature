# @author Jyotsna Patil

Feature: Dynamic offers on Website

    @regression
    Scenario Outline: I expect to verify dynamic offers on website pages opening in same tab
        Given I open the website <url>
        And I wait for <OfferLink> to be displayed on page
        Then I expect that element <OfferLink> has the attribute data-description containing value <value>
        When I click on the element <OfferLink>
        Then I expect the url to contain <ExpectedUrl>

        @chn
        Examples:
            | url                                                  | OfferLink                               | ExpectedUrl                                                                                      | value                 |
            | "/"                                                  | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-premium-editing-plus" | top nav- offer banner |
            | "/"                                                  | //div[@id="offer-strip-ruby"]/div[2]//a | "/order/ncf/english-editing/premium-editing"                                                     | top nav- offer banner |
            | "/services/english-editing"                          | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf/english-editing/premium-editing/document?source=website"                             | top nav- offer banner |
            | "/services/english-editing"                          | //div[@id="offer-strip-ruby"]/div[2]//a | "/order/ncf/english-editing/scientific-editing/document?source=website&coupon=KEXUE8"            | top nav- offer banner |
            | "/services/english-editing/compare-plans"            | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf/english-editing/premium-editing/document?source=website"                             | top nav- offer banner |
            | "/services/english-editing/compare-plans"            | //div[@id="offer-strip-ruby"]/div[2]//a | "/order/ncf/english-editing/scientific-editing/document?source=website&coupon=KEXUE8"            | top nav- offer banner |
            | "/services/english-editing/top-journal-editing-plan" | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf/english-editing/scientific-editing/document?source=website&coupon=KEXUE8"            | top nav- offer banner |

    @regression
    Scenario Outline: I expect to verify dynamic offers on website pages opening in new tab
        Given I open the website <url>
        And I wait for <OfferLink> to be displayed on page
        Then I expect that element <OfferLink> has the attribute data-description containing value <value>
        When I click on the element <OfferLink>
        Then I expect the url <ExpectedUrl> is opened in a new window

        @eng
        Examples:
            | url                                                  | OfferLink                               | ExpectedUrl                                                              | value                        |
            | "/subjectarea/abnormal-psychology"                   | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf?coupon=DISCOUNT20"                                           | top nav-newyear offer banner |
            | "/"                                                  | //div[@id="offer-strip-ruby"]/div[2]//a | "/order/ncf/english-editing"                                             | top nav- offer banner        |
            | "/journal/plos-one"                                  | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf?coupon=DISCOUNT20"                                           | top nav-newyear offer banner |
            | "/services/english-editing"                          | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf/english-editing"                                             | top nav- offer banner        |
            | "/services/english-editing"                          | //div[@id="offer-strip-ruby"]/div[2]//a | "/order/ncf/english-editing/premium-editing"                             | top nav- offer banner        |
            | "/services/english-editing/standard-editing-plan"    | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf/english-editing/standard-editing"                            | top nav- offer banner        |
            | "/services/english-editing/premium-editing-plan"     | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf/english-editing/premium-editing"                             | top nav- offer banner        |
            | "/services/english-editing/premium-editing-plan"     | //div[@id="offer-strip-ruby"]/div[2]//a | "/order/ncf/english-editing/premium-editing"                             | top nav- offer banner        |
            | "/services/english-editing/top-journal-editing-plan" | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf/english-editing/scientific-editing"                          | top nav- offer banner        |
            | "/services/english-editing/abstract-editing"         | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf/english-editing/standard-editing/document?coupon=ABSTRACT10" | top nav- offer banner        |
            | "/services/english-editing/case-report-editing"      | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf/english-editing/standard-editing/document?coupon=CASE10"     | top nav- offer banner        |
            | "/services/publishing-services-packs"                | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf/publication-support-packages"                                | top nav- offer banner        |
            | "/services/publishing-services-packs/silver-pack"    | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf/publication-support-packages"                                | top nav- offer banner        |
            | "/services/publishing-services-packs/gold-pack"      | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf/publication-support-packages"                                | top nav- offer banner        |
            | "/services/publishing-services-packs/platinum-pack"  | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf/publication-support-packages"                                | top nav- offer banner        |

        @chn
        Examples:
            | url                                               | OfferLink                               | ExpectedUrl                                                                                      | value                 |
            | "/services/english-editing/standard-editing-plan" | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf/english-editing/standard-editing"                                                    | top nav- offer banner |
            | "/services/translation"                           | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-premium-editing-plus" | top nav- offer banner |
            | "/services/translation/compare-plans"             | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-premium-editing-plus" | top nav- offer banner |
            | "/services/translation/sci"                       | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-premium-editing-plus" | top nav- offer banner |
            | "/services/translation/upgraded"                  | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf/translation-services/simplified-chinese-to-english-translation-premium-editing-plus" | top nav- offer banner |
            | "/services/publishing-services-packs"             | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf/publication-support-packages?pd=em&source=website&coupon=JUNE9"                      | top nav- offer banner |
            | "/journal/plos-one"                               | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf?source=website&coupon=DISCOUNT20"                                                    | top nav- offer banner |
            | "/services/english-editing/premium-editing-plan"  | //div[@id="offer-strip-ruby"]/div[1]//a | "/order/ncf/english-editing/premium-editing"                                                     | top nav- offer banner |