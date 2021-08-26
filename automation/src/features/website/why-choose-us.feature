Feature: Why choose us
    Background: I am on why choose us page
        Given I open the website "/why-choose-us"

    @sanity
    Scenario Outline: I expect all links in same tab on why choose us page should get verified against expectation
        Then I expect that element <element> has the link <link>
        @eng @chn @jpn @pending-kor
        Examples:
            | element                                                                                          | link               |
            | /html/body/app-root/ng-component/app-quick-note-ruby/app-note-opal/div/div/div[2]/div/app-lynk/a | "/insights/"       |
            | //*[@id="trusted-and-endorsed-by-experts"]/section/div/div[3]/app-lynk/a                         | "/partner-with-us" |
            | //*[@id="trusted-and-endorsed-by-experts"]/section/div/div[3]/app-lynk/a                         | "/partner-with-us" |

        @eng @jpn @chn
        Examples:
            | element                                                        | link                 |
            | //*[@id="experts-and-subject-areas"]/div/div/div[3]/app-lynk/a | "/subject-expertise" |


        @jpn
        Examples:
            | element                                                                                              | link                 |
            | /html/body/app-root/ng-component/app-featured-block-diamond/section/div/div/div[2]/div[2]/app-lynk/a | "/types-of-document" |

    @chn
    Scenario: I expect to verify the h1 tags on why choose us page
        Then I expect the page to contain tagname h1 to be equal to count 1

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
