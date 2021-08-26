# @author Jyotsna Patil

Feature: Pre-payment

    Background: I am on pre-payment page
        Given I open the website "/pre-payment"

    @sanity @regression @smoke
    Scenario Outline: I expect to verify get quote CTA on top navigation on pre-payment page
        When I click on the element <GetQuoteCTA>
        Then I expect the url to contain <Expected Url>

        @chn
        Examples:
            | GetQuoteCTA                  | Expected Url |
            | //app-navigator[2]//li[8]//a | "/order/ncf" |

    @regression
    Scenario Outline: I expect that menu lapis tabs on pre-payment page should be verified against expectation
        Then I expect that element <menu lapis tabs> has the link <link>

        @chn
        Examples:
            | menu lapis tabs                      | link           |
            | //*[@id="menuLapis"]//app-lynk[1]//a | "/payment"     |
            | //*[@id="menuLapis"]//app-lynk[2]//a | "/invoices"    |
            | //*[@id="menuLapis"]//app-lynk[3]//a | "/pre-payment" |

    @regression
    Scenario: I expect to verify the pricing plans on pre-payment page
        Then I expect that element //app-tat-information-block//div[1]//div[1]/p matches the text "4,000 - 5,999元"
        Then I expect that element //app-tat-information-block//div[1]//div[2]/p matches the text "3% (赠120-180元)"
        Then I expect that element //app-tat-information-block//div[1]//div[3]/p matches the text "/"
        Then I expect that element //app-tat-information-block//div[2]//div[1]/p matches the text "6,000 - 9,999元"
        Then I expect that element //app-tat-information-block//div[2]//div[2]/p matches the text "5% (赠300-500元)"
        Then I expect that element //app-tat-information-block//div[2]//div[3]/p matches the text "200元"
        Then I expect that element //app-tat-information-block//div[3]//div[1]/p matches the text "10,000 - 14,999元"
        Then I expect that element //app-tat-information-block//div[3]//div[2]/p matches the text "7% (赠700-1050元)"
        Then I expect that element //app-tat-information-block//div[3]//div[3]/p matches the text "500元"
        Then I expect that element //app-tat-information-block//div[4]//div[1]/p matches the text "15,000 - 24,999元"
        Then I expect that element //app-tat-information-block//div[4]//div[2]/p matches the text "10% (赠1,500-2,500元)"
        Then I expect that element //app-tat-information-block//div[4]//div[3]/p matches the text "800元"
        Then I expect that element //app-tat-information-block//div[5]//div[1]/p matches the text "25,000 - 49,999元"
        Then I expect that element //app-tat-information-block//div[5]//div[2]/p matches the text "15% (赠3,750-7,500元)"
        Then I expect that element //app-tat-information-block//div[5]//div[3]/p matches the text "1500元"
        Then I expect that element //app-tat-information-block//div[6]//div[1]/p matches the text "50,000元以上"
        Then I expect that element //app-tat-information-block//div[6]//div[2]/p matches the text "20% (赠10,000元以上)"
        Then I expect that element //app-tat-information-block//div[6]//div[3]/p matches the text "2,000元"
        Then I expect that element <Prepaid card CTA> has the link <Expected Url>

        @chn
        Examples:
            | Prepaid card CTA                         | Expected Url          |
            | //app-pricing-block-ruby//app-lynk[2]//a | "/prepaid-card/setup" |

    @sanity @regression
    Scenario Outline: I expect to verify the Signup CTA link on pricing table on pre-payment page
        When I click on the element <Signup CTA>
        Then I expect the url to contain <Expected Url>

        @chn
        Examples:
            | Signup CTA                               | Expected Url |
            | //app-pricing-block-ruby//app-lynk[1]//a | "/signup"    |

    @regression
    Scenario Outline: I expect to verify ediatge card formstack link on pre-payment page
        When I click on the element <ediatge card formstack link>
        Then I expect the url <Expected Url> is opened in a new window

        @chn
        Examples:
            | ediatge card formstack link | Expected Url                                                      |
            | //app-note-ruby//a          | "/cactuscommunications.formstack.com/forms/chn_editage_card_2021" |

    @regression
    Scenario Outline: I expect to verify Meet Our Support Stars link on pre-payment page
        When I click on the element <Meet Our Support Stars link>
        Then I expect the url to contain <Expected Url>

        @chn
        Examples:
            | Meet Our Support Stars link | Expected Url                                      |
            | //app-support//a            | "/why-choose-us?section=local-customised-support" |

    @regression
    Scenario Outline: I expect to open faq answers when clicking on faq questions along with hyperlink in 4th FAQ on pre-payment page
        Then I expect that element <4th FAQ question> has the class <faqQuestionClass>
        When I click on the element <4th FAQ question>
        Then I expect that element <4th FAQ answer> has the class <faqAnswerClass>
        When I click on the element <hyperlink in 4th FAQ answer>
        Then I expect the url to contain <Expected Url>

        @chn
        Examples:
            | 4th FAQ question       | faqQuestionClass | 4th FAQ answer         | faqAnswerClass     | hyperlink in 4th FAQ answer | Expected Url |
            | //app-faq-block//li[4] | "text-ruby-beta" | //app-faq-block//li[4] | "text-pearl-delta" | //app-faq-block//a          | "/payment"   |

    @regression
    Scenario Outline: I expect to verify Contact us information on pre-payment page
        Then I expect that element <contact no/email locator> matches the text <contact no/email>

        @chn
        Examples:
            | contact no/email locator  | contact no/email    |
            | //app-feature-lapis[1]//a | "400-120-3020"      |
            | //app-feature-lapis[3]//a | "fabiao@editage.cn" |

    @regression
    Scenario Outline: I expect to verify all links have the attribute with the required value on pre-payment page
        Then I expect that element <element> has the attribute <attribute> with value <value>

        @chn
        Examples:
            | element                                  | attribute | value    |
            | //app-pricing-block-ruby//app-lynk[1]//a | rel       | nofollow |
            | //app-pricing-block-ruby//app-lynk[2]//a | rel       | nofollow |
            | //app-note-ruby//a                       | rel       | nofollow |

    @regression
    Scenario Outline: I expect that the data description of all link/CTA's should be verified on pre-payment page
        Then I expect that element <link/CTA> has the attribute data-description containing value <value>

        @chn
        Examples:
            | link/CTA                                 | value                   |
            | //app-navigator[2]//li[8]//a             | hp-top nav-get quote    |
            | //app-pricing-block-ruby//app-lynk[1]//a | NewCustomerRegistration |
            | //app-pricing-block-ruby//app-lynk[2]//a | LoginToClaimOffer       |
            | //app-note-ruby//a                       | pre-deposit intention   |
            | //app-support//a                         | hp-meet support star    |