Feature: Landing

    Background: I am on landing page
        Given I open the website "/"

    @eng @chn
    Scenario: I expect that logo should have landing page link
        Then I expect that element //*[@id="header"]/section/app-logo/div/div/app-lynk/a has the link "/"

    @sanity
    Scenario Outline: I expect that all links on landing page should be verified against expectation
        Then I expect that element <path> has the link <link>
        @eng
        Examples:
            | link                                                 | path                                                                                                   |
            | "/services/english-editing"                          | //a[@data-description='hp-first fold-EditingServices-null-click-null-null']                            |
            | "/services/translation"                              | //a[@data-description='hp-first fold-Translationservices-null-click-null-null']                        |
            | "/services/publishing-services-packs"                | //a[@data-description='hp-first fold-PSSservices-null-click-null-null']                                |
            | "/info/services/conference"                          | //a[@data-description='hp-first fold-VirtualConference-null-click-null-null']                          |
            | "/services"                                          | /html/body/app-root/ng-component/app-compare-services/div/div/div/div[3]/app-lynk[1]/a                 |
            | "/order/ncf/?source=website"                         | /html/body/app-root/ng-component/app-compare-services/div/div/div/div[3]/app-lynk[2]/a                 |
            | "/partner-with-us"                                   | /html/body/app-root/ng-component/app-featured-block-topaz/div/section/div/div[3]/app-lynk/a            |
            | "/insights/"                                         | /html/body/app-root/ng-component/app-partners-beyond-services/div[2]/div/div/div[3]/app-lynk/a         |
            | "/why-choose-us?section=local-customised-support"    | /html/body/app-root/ng-component/app-support/div[1]/section/div[1]/div[1]/div/div[1]/div[2]/app-lynk/a |
            | "/subject-expertise"                                 | /html/body/app-root/ng-component/app-featured-block-jade/div[1]/section/div/div[8]/app-lynk/a          |
            | "/services/english-editing/top-journal-editing-plan" | //app-offer-banner//a                                                                                  |

        @chn
        Examples:
            | link                                                                                                                | path                                                                                                   |
            | "/services/english-editing"                                                                                         | //a[@data-description='hp-first fold-EditingServices-null-click-null-null']                            |
            | "/services/translation"                                                                                             | //a[@data-description='hp-first fold-Translationservices-null-click-null-null']                        |
            | "/services/publishing-services-packs"                                                                               | //a[@data-description='hp-first fold-PSSservices-null-click-null-null']                                |
            | "/order/ncf/english-editing?source=website"                                                                         | /html/body/app-root/ng-component/app-featured-block-onyx/section/div/div[3]/div/div/div[2]/app-lynk/a  |
            | "/order/ncf/translation-services?source=website"                                                                    | /html/body/app-root/ng-component/app-featured-block-onyx/section/div/div[4]/div/div/div[2]/app-lynk/a  |
            | "/order/ncf/publication-support-packages?source=website"                                                            | /html/body/app-root/ng-component/app-featured-block-onyx/section/div/div[5]/div/div/div[2]/app-lynk/a  |
            | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&source=website" | /html/body/app-root/ng-component/app-featured-block-onyx/section/div/div[6]/div/div/div[2]/app-lynk/a  |
            | "/why-choose-us?section=local-customised-support"                                                                   | /html/body/app-root/ng-component/app-support/div[1]/section/div[1]/div[1]/div/div[1]/div[2]/app-lynk/a |
            | "/subject-expertise"                                                                                                | //app-featured-block-jade//a                                                                           |

        @chn
        Examples:
            | link                        | path                                                                           |
            | "/info/services/conference" | //a[@data-description='hp-first fold-servicesconference-null-click-null-null'] |
            | "/pre-payment"              | //app-offer-banner//a                                                          |

    Scenario Outline: I expect the service widget on home page to throw validation in case user enters invalid value in any field
        When I click on the element //*[@id="radio0"]
        And I add <value> to the inputfield <field>
        And I click on the button //app-mini-widget//app-lynk[contains(@class,'btn btn-primary')]
        Then I expect that element <field> has the class "ng-invalid"
        @chn
        Examples:
            | value            | field                             |
            | "wrongwordcount" | //app-mini-widget-field[1]//input |
            | "wrongemail"     | //app-mini-widget-field[2]//input |
            | "wrongphone"     | //app-mini-widget-field[3]//input |

    @sanity
    Scenario Outline: I expect to open the service segments page on forms on clicking on forms CTA on landing page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the link <eosElementLink>
        And I should go back to the previous page
        @eng
        Examples:
            | path                                                                   | link                        | eosElementPath                                                                                                              | eosElementLink                              |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a | "/order/ncf?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/ng-component/ng-component/div[1]/div/div/div/div[1]/div/a | "/order/ncf/english-editing?source=website" |

        @chn
        Examples:
            | path                                                                   | link                        | eosElementPath                                                                                                              | eosElementLink                              |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[8]/app-lynk/a | "/order/ncf?source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/ng-component/ng-component/div[1]/div/div/div/div[1]/div/a | "/order/ncf/english-editing?source=website" |

    @sanity
    Scenario Outline: I expect to open service page on forms by clicking on forms CTA on landing page
        Then I expect that element <path> has the link <link>
        When I click on the element <path>
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I should go back to the previous page
        @chn
        Examples:
            | path                                                                                                  | link                                                                                                                | eosElementPath                                                                                                                                      | eosElementClass    |
            | /html/body/app-root/ng-component/app-featured-block-onyx/section/div/div[3]/div/div/div[2]/app-lynk/a | "/order/ncf/english-editing?source=website"                                                                         | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div[1]/ul/li[2]/div[1]/h3                                     | "comp-head"        |
            | /html/body/app-root/ng-component/app-featured-block-onyx/section/div/div[4]/div/div/div[2]/app-lynk/a | "/order/ncf/translation-services?source=website"                                                                    | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div/div[2]/table/tbody/tr[8]/td[2]/button                     | "btn-primary-blue" |
            | /html/body/app-root/ng-component/app-featured-block-onyx/section/div/div[5]/div/div/div[2]/app-lynk/a | "/order/ncf/publication-support-packages?source=website"                                                            | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div/div/div/div[2]/div[2]/ul/li[2]/div[1]/h3                  | "comp-head"        |
            | /html/body/app-root/ng-component/app-featured-block-onyx/section/div/div[6]/div/div/div[2]/app-lynk/a | "/order/ncf/research-promotion/research-promotion-services/document/plan/add-on?loop=enter-large-wc&source=website" | /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[1]/app-phoenix-add-on/div[1]/div/div[10]/button | "btn-primary-blue" |

    @sanity
    Scenario Outline: I expect to open order page on forms on clicking on service widget forms CTA on landing page
        When I click on the element <elementPath>
        When I add "234" to the inputfield //app-mini-widget-field[1]//input
        And I add "abcd@mailinator.com" to the inputfield //app-mini-widget-field[2]//input
        And I add "96196368810" to the inputfield //app-mini-widget-field[3]//input
        And I click on the button //app-mini-widget//app-lynk[contains(@class,'btn btn-primary')]
        Then I expect that element <eosElementPath> has the class <eosElementClass>
        And I expect the url to contain <url>
        And I expect the url to contain "pii=ZW1haWw6YWJjZEBtYWlsaW5hdG9yLmNvbSxwaG9uZTo5NjE5NjM2ODgxMA"
        And I should go back to the previous page
        @chn
        Examples:
            | elementPath       | eosElementPath                                                                                                                  | eosElementClass    | url                                         |
            | //*[@id="radio0"] | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div[1]/ul/li[2]/div[1]/h3                 | "comp-head"        | "/order/ncf/english-editing?units=234"      |
            | //*[@id="radio1"] | /html/body/app-root/ng-component/div/section/div/ng-component/ng-component/div/div[2]/div/div[2]/table/tbody/tr[8]/td[2]/button | "btn-primary-blue" | "/order/ncf/translation-services?units=234" |

    @sanity
    Scenario Outline: I expect to verify links on clicking on bottom sticky CTA on landing page
        When I click on the element //app-bottom-sticky-ruby//app-lynk//a
        And I click on the element <bottomStickyBlockLink>
        Then I expect the url to contain <ExpectedUrl>

        @eng
        Examples:
            | bottomStickyBlockLink                                   | ExpectedUrl                                          |
            | //a[@data-description='homepage-bottom sticky-offer 1'] | "/services/english-editing/top-journal-editing-plan" |
            | //a[@data-description='homepage-bottom sticky-offer 2'] | "/services/other/thesis-editing"                     |
            | //a[@data-description='homepage-bottom sticky-offer 3'] | "/order/ncf/english-editing"                         |
            | //a[@data-description='homepage-bottom sticky-offer 4'] | "/order/ncf/publication-support-packages"            |

    @chn
    Scenario: I expect to verify the h1 tags on landing page
        Then I expect the page to contain tagname h1 to be equal to count 1

    Scenario Outline: I expect to verify all links have the attribute with the required value
        Then I expect that element <element> has the attribute <attribute> with value <value>
        @chn
        Examples:
            | element                                                                                               | attribute | value    |
            | //*[@id="header"]/section/div/app-navigator[2]/div/ul/li[6]/app-lynk/a                                | rel       | nofollow |
            | /html/body/app-root/ng-component/app-featured-block-onyx/section/div/div[3]/div/div/div[2]/app-lynk/a | rel       | nofollow |
            | /html/body/app-root/ng-component/app-featured-block-onyx/section/div/div[4]/div/div/div[2]/app-lynk/a | rel       | nofollow |
            | /html/body/app-root/ng-component/app-featured-block-onyx/section/div/div[5]/div/div/div[2]/app-lynk/a | rel       | nofollow |
            | /html/body/app-root/ng-component/app-featured-block-onyx/section/div/div[6]/div/div/div[2]/app-lynk/a | rel       | nofollow |
            | /html/body/app-root/ng-component/app-compare-services/div/div/div/div[3]/app-lynk[1]/a                | rel       | nofollow |
            | /html/body/app-root/ng-component/app-compare-services/div/div/div/div[3]/app-lynk[2]/a                | rel       | nofollow |

    @sanity
    Scenario Outline: I expect that testimonials verified against expectation on homepage
        When I scroll to center of element <element>
        When I wait for //*[@id="success-stories"]/div/div/app-carousel/section/div/ul/li[1]/app-testimonial/div/div[2]/div to be displayed on page
        When I click on the element //app-testimonials//app-carousel//div[contains(@style,'arrow-right')]
        When I wait for //*[@id="success-stories"]/div/div/app-carousel/section/div/ul/li[2]/app-testimonial/div/div[2]/div to be displayed on page
        When I click on the element //app-testimonials//app-carousel//div[contains(@style,'arrow-right')]
        When I wait for //app-testimonial//div[contains(@style,'mrs-xinying-yu.jpg')] to be displayed on page
        When I click on the element //app-testimonials//app-carousel//div[contains(@style,'arrow-right')]
        When I wait for //app-testimonial//div[contains(@style,'ijkpn.jpg')] to be displayed on page
        When I click on the element //app-testimonials//app-carousel//div[contains(@style,'arrow-right')]
        When I wait for //app-testimonial//div[contains(@style,'jaimw.jpg')] to be displayed on page

        @chn
        Examples:
            | element                                         |
            | "//app-testimonials//li[1]/app-testimonial/div" |

    Scenario Outline: I expect that logo should have home page  link
        When I scroll to center of element "//app-logo/div/div/app-lynk/a"
        Then I expect that element //app-logo/div/div/app-lynk/a has the link <link>

        @jpn
        Examples:
            | link |
            | "/"  |

    @sanity
    Scenario Outline: I expect the CTAs on slider banner should be verified on  homepage
        When I scroll to center of element "//app-service-banner-pearl//section/div"
        Then I expect //app-service-banner/div[contains(@style,'arrow-left')] should be displayed on page
        Then I expect //app-service-banner/div[contains(@style,'arrow-right')] should be displayed on page
        When I wait for //app-service-banner-pearl//div[contains(@style,'banner-journals-desktop-img1.png')] to be displayed on page
        And I scroll the page to center and click on the element //app-carousel[@controllerlayout='service-banner']//li[1]//a
        Then I expect the url to contain <1stExpectedUrl>
        And  I should go back to the previous page
        When I scroll the page to center and click on the element //app-service-banner/div[contains(@style,'arrow-right')]
        And I wait for //app-service-banner-pearl//div[contains(@style,'banner-journals-desktop-img2.png')] to be displayed on page
        And I scroll the page to center and click on the element //app-carousel[@controllerlayout='service-banner']//li[2]//a
        Then I expect the url to contain <2ndExpectedUrl>
        And  I should go back to the previous page
        When I click on the element //app-service-banner/div[contains(@style,'arrow-right')]
        And I click on the element //app-service-banner/div[contains(@style,'arrow-right')]
        And I wait for //app-service-banner-pearl//div[contains(@style,'banner-journals-desktop-img3.png')] to be displayed on page
        And I scroll the page to center and click on the element //app-carousel[@controllerlayout='service-banner']//li[3]//a
        Then I expect the url to contain <3rdExpectedUrl>

        @jpn
        Examples:
            | 1stExpectedUrl                                       | 2ndExpectedUrl                                   | 3rdExpectedUrl                                   |
            | "/services/english-editing/top-journal-editing-plan" | "/services/english-editing/premium-editing-plan" | "/services/translation/premium-translation-plan" |

    Scenario Outline: I expect that who-are-we section is displayed on  homepage
        Then I expect <whoAreWeComponent> should be displayed on page

        @jpn
        Examples:
            | whoAreWeComponent                  |
            | //app-service-information-ruby//h2 |

    @sanity
    Scenario Outline: I expect that all links on service comparison section should be verified on homepage
        When I scroll the page to center and click on the element <planSectionCTA>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | planSectionCTA                     | ExpectedUrl                                          |
            | //app-plan-information-block[1]//a | "/services/english-editing/top-journal-editing-plan" |
            | //app-plan-information-block[2]//a | "/services/english-editing/premium-editing-plan"     |
            | //app-plan-information-block[3]//a | "/services/english-editing/standard-editing-plan"    |

    @regression
    Scenario Outline: I expect the carousel-cards-lapis should be verified on  homepage
        When I scroll to center of element <carouselCardsLapis>
        Then I expect //app-carousel-cards-lapis//li[1]//img should be displayed on page
        When I scroll the page to center and click on the element //app-carousel-cards-lapis//div[contains(@style,'arrow-right')]
        Then I expect //app-carousel-cards-lapis//li[2]//img should be displayed on page
        When I scroll the page to center and click on the element //app-carousel-cards-lapis//div[contains(@style,'arrow-right')]
        When I scroll the page to center and click on the element //app-carousel-cards-lapis//div[contains(@style,'arrow-right')]
        Then I expect //app-carousel-cards-lapis//li[3]//img should be displayed on page

        @jpn
        Examples:
            | carouselCardsLapis                                              |
            | "//app-carousel-cards-lapis//div[contains(@class,'container')]" |

    @regression
    Scenario Outline: I expect that customer interview section links besides plan page are verified against expectation on homepage
        When I scroll to center of element "//app-testimonials-pearl//app-carousel//li[1]//a"
        When I click on the element //app-testimonials-pearl//app-carousel//li[1]//a
        Then I expect the url <1stExpectedLink> is opened in a new window
        When I click on the element //app-testimonials-pearl//div[contains(@style,'arrow-right')]
        When I click on the element //app-testimonials-pearl//app-carousel//li[2]//a
        Then I expect the url <2ndExpectedLink> is opened in a new window
        When I click on the element //app-testimonials-pearl//div[contains(@style,'arrow-right')]
        When I click on the element //app-testimonials-pearl//app-carousel//li[3]//a
        Then I expect the url <3rdExpectedLink> is opened in a new window

        @jpn
        Examples:
            | 1stExpectedLink                                                    | 2ndExpectedLink                                                 | 3rdExpectedLink                                                |
            | "/info/testimonials/medicine/masahiro_kashiura_acutemedicine.html" | "/info/testimonials/medicine/satoshi_ideno_anesthesiology.html" | "/info/testimonials/medicine/sho_suzuki_gastroenterology.html" |

    @regression
    Scenario Outline: I expect that all links of other service intro section should be verified on homepage
        When I scroll the page to center and click on the element <cardSectionCTA>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | cardSectionCTA                                                                        | ExpectedUrl                                                                 |
            | //app-service-block-pearl//div[@class='flex flex-wrap']/div[1]/div/app-lynk/a         | "/services/translation"                                                     |
            | //app-service-block-pearl//div[@class='flex flex-wrap']/div[1]//div[2]//app-lynk[1]/a | "/services/translation"                                                     |
            | //app-service-block-pearl//div[@class='flex flex-wrap']/div[1]//app-lynk[2]/a         | "/services/translation/english-to-japanese"                                 |
            | //app-service-block-pearl//div[@class='flex flex-wrap']/div[2]/div/app-lynk/a         | "/services/publishing-services-packs"                                       |
            | //app-service-block-pearl//div[@class='flex flex-wrap']/div[2]//div[2]//app-lynk[1]/a | "/services/publishing-services-packs/full-publication-support"              |
            | //app-service-block-pearl//div[@class='flex flex-wrap']/div[2]//app-lynk[2]/a         | "/services/publishing-services-packs/writing-plus-full-publication-support" |
            | //app-service-block-pearl//div[@class='flex flex-wrap']/div[3]/div/app-lynk/a         | "/services/other/book-translation-and-editing"                              |

    @regression
    Scenario Outline: I expect that featured block cta on home  page should be verified
        When I scroll the page to center and click on the element <featuredBlockCTA>
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | featuredBlockCTA                   | ExpectedUrl  |
            | //app-featured-block-diamond[1]//a | "/order/ncf" |
            | //app-featured-block-diamond[2]//a | "/order/ncf" |
            | //app-featured-block-diamond[3]//a | "/order/ncf" |

    @sanity
    Scenario Outline: I expect that links at efl pitch section should be verified on homepage
        When I scroll the page to center and click on the element //app-service-banner-ruby//a
        Then I expect the url <ExpectedUrl> is opened in a new window

        @jpn
        Examples:
            | ExpectedUrl              |
            | "/info/editage-for-lab/" |

    @sanity
    Scenario Outline: I expect that links at our partner section should be verified homepage
        When I scroll the page to center and click on the element //app-partner-block-ruby//a
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | ExpectedUrl        |
            | "/partner-with-us" |

    @sanity
    Scenario Outline: I expect that links at partner beyond service section should be verified against expectation
        When I scroll to center of element "//app-partners-beyond-services/div[@class='container']"
        Then I expect //app-partners-beyond-services//app-controller-ruby//span[contains(@style,'angle-left')] should be displayed on page
        Then I expect //app-partners-beyond-services//app-controller-ruby//span[contains(@style,'angle-right')] should be displayed on page
        Then I expect //app-partners-beyond-services//app-authors-ecosystem/div should be enabled on page
        When I scroll the page to center and click on the element //app-partners-beyond-services//a
        Then I expect the url to contain <ExpectedUrl>

        @jpn
        Examples:
            | ExpectedUrl |
            | "/insights" |

    @regression
    Scenario Outline: I expect that links at our editor profile section should be verified against expectation
        When I scroll to center of element <editorProfileSection>
        When I scroll the page to center and click on the element //app-carousel-cards-jasper//app-carousel//li[1]//div/app-lynk/a
        Then I expect //app-modal-pearl/section/div should be displayed on page
        When I click on the button //lib-dialog//button
        When I scroll the page to center and click on the element //app-carousel-cards-jasper//app-carousel//li[2]//div/app-lynk/a
        Then I expect //app-modal-pearl/section/div should be displayed on page
        When I click on the button //lib-dialog//button
        When I scroll the page to center and click on the element //app-carousel-cards-jasper//app-carousel//li[3]//div/app-lynk/a
        Then I expect //app-modal-pearl/section/div should be displayed on page
        When I click on the button //lib-dialog//button
        When I scroll the page to center and click on the element //app-carousel-cards-jasper//app-carousel//div[contains(@style,'arrow-right')]
        When I scroll the page to center and click on the element //app-carousel-cards-jasper//app-carousel//li[4]//div/app-lynk/a
        Then I expect //app-modal-pearl/section/div should be displayed on page
        When I click on the button //lib-dialog//button
        When I scroll the page to center and click on the element //app-carousel-cards-jasper//app-carousel//div[contains(@style,'arrow-right')]
        When I scroll the page to center and click on the element //app-carousel-cards-jasper//app-carousel//li[5]//div/app-lynk/a
        Then I expect //app-modal-pearl/section/div should be displayed on page
        When I click on the button //lib-dialog//button
        When I scroll the page to center and click on the element //app-carousel-cards-jasper//app-carousel//div[contains(@style,'arrow-right')]
        When I scroll the page to center and click on the element //app-carousel-cards-jasper//app-carousel//li[6]//div/app-lynk/a
        Then I expect //app-modal-pearl/section/div should be displayed on page
        When I click on the button //lib-dialog//button

        @jpn
        Examples:
            | editorProfileSection                                       |
            | "//app-carousel-cards-jasper//section[@class='container']" |

    @sanity
    Scenario Outline: I expect that all subject-area and sample page redirections on  homepage should be verified.
        When I click on the element <SA Page Link>
        Then I expect the url to contain <SA Page Expected url>
        And I should go back to the previous page
        And I click on the element <View sample link>
        Then I expect the url to contain <Sample Page url>

        @jpn
        Examples:
            | SA Page Link                                           | SA Page Expected url                                  | View sample link                                       | Sample Page url                    |
            | //app-featured-card-pearl//div[1]/div[2]/app-lynk[1]/a | "/subject-expertise/medical-sciences"                 | //app-featured-card-pearl//div[1]/div[2]/app-lynk[2]/a | "/services/english-editing/sample" |
            | //app-featured-card-pearl//div[2]/div[2]/app-lynk[1]/a | "/subject-expertise/life-sciences"                    | //app-featured-card-pearl//div[2]/div[2]/app-lynk[2]/a | "/services/english-editing/sample" |
            | //app-featured-card-pearl//div[3]/div[2]/app-lynk[1]/a | "/subject-expertise/physical-science-and-engineering" | //app-featured-card-pearl//div[3]/div[2]/app-lynk[2]/a | "/services/english-editing/sample" |
            | //app-featured-card-pearl//div[4]/div[2]/app-lynk[1]/a | "/subject-expertise/humanities-and-social-sciences"   | //app-featured-card-pearl//div[4]/div[2]/app-lynk[2]/a | "/services/english-editing/sample" |
            | //app-featured-card-pearl//div[5]/div[2]/app-lynk[1]/a | "/subject-expertise/business-and-economics"           | //app-featured-card-pearl//div[5]/div[2]/app-lynk[2]/a | "/services/english-editing/sample" |

    @regression
    Scenario Outline: I expect that the data description of all links/CTA's should ve verified on  home page
        Then I expect that element <element> has the attribute <data> with value <value>

        @jpn
        Examples:
            | element                                                                               | data             | value                                                                  |
            | //app-carousel[@controllerlayout='service-banner']//li[1]//a                          | data-description | hp v2-top fold-card 1-top journal editing-click                        |
            | //app-carousel[@controllerlayout='service-banner']//li[2]//a                          | data-description | hp v2-top fold-card 2-premium editing-click                            |
            | //app-carousel[@controllerlayout='service-banner']//li[3]//a                          | data-description | hp v2-top fold-card 3-premium translation-click                        |
            | //app-plan-information-block[1]//a                                                    | data-description | hp v2-plan selection-top journal editing details-click                 |
            | //app-plan-information-block[2]//a                                                    | data-description | hp v2-plan selection-premium editing details-click                     |
            | //app-plan-information-block[3]//a                                                    | data-description | hp v2-plan selection-standardediting details-click                     |
            | //app-testimonials-pearl//app-carousel//li[1]//a                                      | data-description | hp v2-testimonial-card1-click-read all-Masahiro Kashiura               |
            | //app-testimonials-pearl//app-carousel//li[2]//a                                      | data-description | hp v2-testimonial-card2-click-read all-Satoshi Ideno                   |
            | //app-testimonials-pearl//app-carousel//li[3]//a                                      | data-description | hp v2-testimonial-card3-click-read all-Sho Suzuki                      |
            | //app-service-block-pearl//div[@class='flex flex-wrap']/div[1]/div/app-lynk/a         | data-description | hp v2-other services-card1-click-academic translation services         |
            | //app-service-block-pearl//div[@class='flex flex-wrap']/div[1]//div[2]//app-lynk[1]/a | data-description | hp v2-other services-card1-click-japanese to english tl services       |
            | //app-service-block-pearl//div[@class='flex flex-wrap']/div[1]//app-lynk[2]/a         | data-description | hp v2-other services-card1-click-english to japanese tl services       |
            | //app-service-block-pearl//div[@class='flex flex-wrap']/div[2]/div/app-lynk/a         | data-description | hp v2-other services-card1-click-manuscript writing and pss            |
            | //app-service-block-pearl//div[@class='flex flex-wrap']/div[2]//div[2]//app-lynk[1]/a | data-description | hp v2-other services-card1-click-full publication support              |
            | //app-service-block-pearl//div[@class='flex flex-wrap']/div[2]//app-lynk[2]/a         | data-description | hp v2-other services-card1-click-writing plus full publication support |
            | //app-service-block-pearl//div[@class='flex flex-wrap']/div[3]/div/app-lynk/a         | data-description | hp v2-other services-card1-click-book editing plus tl service          |
            | //app-featured-block-diamond[1]//a                                                    | data-description | hp v2-feature block diamond-1-click-get quote                          |
            | //app-service-banner-ruby//a                                                          | data-description | hp v2-efl-group program for lab details-click                          |
            | //app-featured-block-diamond[2]//a                                                    | data-description | hp v2-feature block diamond-2-click-get quote                          |
            | //app-partner-block-ruby//a                                                           | data-description | hp v2-our partners-partner with us-click                               |
            | //app-featured-block-diamond[3]//a                                                    | data-description | hp v2-feature block diamond-3-click-get quote                          |
            | //app-carousel-cards-jasper//app-carousel//li[1]//div/app-lynk/a                      | data-description | hp v2-editor profile-click-view profile av                             |
            | //app-carousel-cards-jasper//app-carousel//li[2]//div/app-lynk/a                      | data-description | hp v2-editor profile-click-view profile mb                             |
            | //app-carousel-cards-jasper//app-carousel//li[3]//div/app-lynk/a                      | data-description | hp v2-editor profile-click-view profile mm                             |
            | //app-carousel-cards-jasper//app-carousel//li[4]//div/app-lynk/a                      | data-description | hp v2-editor profile-click-view profile rw                             |
            | //app-carousel-cards-jasper//app-carousel//li[5]//div/app-lynk/a                      | data-description | hp v2-editor profile-click-view profile ms                             |
            | //app-carousel-cards-jasper//app-carousel//li[6]//div/app-lynk/a                      | data-description | hp v2-editor profile-click-view profile kd                             |
            | //app-carousel-cards-jasper//app-carousel//li[1]//div/p//a                            | data-description | hp v2-editor profile-click-view more av                                |
            | //app-carousel-cards-jasper//app-carousel//li[2]//div/p//a                            | data-description | hp v2-editor profile-click-view more mb                                |
            | //app-carousel-cards-jasper//app-carousel//li[3]//div/p//a                            | data-description | hp v2-editor profile-click-view more mm                                |
            | //app-carousel-cards-jasper//app-carousel//li[4]//div/p//a                            | data-description | hp v2-editor profile-click-view more rw                                |
            | //app-carousel-cards-jasper//app-carousel//li[5]//div/p//a                            | data-description | hp v2-editor profile-click-view more ms                                |
            | //app-carousel-cards-jasper//app-carousel//li[6]//div/p//a                            | data-description | hp v2-editor profile-click-view more kd                                |
            | //app-featured-card-pearl//div[1]/div[2]/app-lynk[1]/a                                | data-description | hp v2-subject area-content-click-medical sciences                      |
            | //app-featured-card-pearl//div[1]/div[2]/app-lynk[2]/a                                | data-description | hp v2-subject area-content-click-medical sciences sample               |
            | //app-featured-card-pearl//div[2]/div[2]/app-lynk[1]/a                                | data-description | hp v2-subject area-content-click-life sciences                         |
            | //app-featured-card-pearl//div[2]/div[2]/app-lynk[2]/a                                | data-description | hp v2-subject area-content-click-life sciences sample                  |
            | //app-featured-card-pearl//div[3]/div[2]/app-lynk[1]/a                                | data-description | hp v2-subject area-content-click-phy engg                              |
            | //app-featured-card-pearl//div[3]/div[2]/app-lynk[2]/a                                | data-description | hp v2-subject area-content-click-phy engg sample                       |
            | //app-featured-card-pearl//div[4]/div[2]/app-lynk[1]/a                                | data-description | hp v2-subject area-content-click-social sciences                       |
            | //app-featured-card-pearl//div[4]/div[2]/app-lynk[2]/a                                | data-description | hp v2-subject area-content-click-social sciences sample                |
            | //app-featured-card-pearl//div[5]/div[2]/app-lynk[1]/a                                | data-description | hp v2-subject area-content-click-business economics                    |
            | //app-featured-card-pearl//div[5]/div[2]/app-lynk[2]/a                                | data-description | hp v2-subject area-content-click-business economics sample             |