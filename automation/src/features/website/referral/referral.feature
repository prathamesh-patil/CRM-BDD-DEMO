# @author sherin
Feature: Referral pop up

    Background: I am on landing page
        Given I open the website "/"


    @pending-sanity
    Scenario Outline: I expect the new users should be able to access the referral pop up
        When I click on the element //*[@id="offer-strip-ruby"]/div[1]//app-lynk/a
        And I add <referral-email-id> to the inputfield //app-referral-modal-form//div/input
        And I click on the element //span[contains(text(),'Submit')]
        And I expect the url to contain <ExpectedURL>
        Then I wait for //div[@id='refer-signup-modal']//div[@class='modal-body'] to be displayed on page
        @eng
        Examples:
            | referral-email-id      | ExpectedURL                                                  |
            | "web@mailinator.com"   | "/refer-a-friend?pii=ZW1haWw6d2ViQG1haWxpbmF0b3IuY29t"       |
            | "refer@mailinator.com" | "/refer-a-friend?pii=ZW1haWw6cmVmZXJAbWFpbGluYXRvci5jb20%3D" |

    @pending-sanity
    Scenario Outline:I expect the existing users should be able to access the referral pop up
        When I click on the element //*[@id="offer-strip-ruby"]/div[1]//app-lynk/a
        And I add <referral-email-id> to the inputfield //app-referral-modal-form//div/input
        And I click on the element //span[contains(text(),'Submit')]
        And I expect the url to contain <client-code-script-id>
        Then I wait for //input[@name='email_id'] to be displayed on page

        @eng
        Examples:
            | referral-email-id                 | client-code-script-id                                                              |
            | "autobot_7tw4afbl@mailinator.com" | "/refer-friend/JSCJK?pii=ZW1haWw6YXV0b2JvdF83dHc0YWZibEBtYWlsaW5hdG9yLmNvbQ%3D%3D" |
            | "autobot_98kszwwd@mailinator.com" | "/refer-friend/TSKEY?pii=ZW1haWw6YXV0b2JvdF85OGtzend3ZEBtYWlsaW5hdG9yLmNvbQ%3D%3D" |


    @pending-regression
    Scenario Outline:I expect that logged in user should be able to access referral pop up.
        When I click on the element //app-navigator[2]//li[4]/app-lynk/a
        And I set "bdd_eng_subuser@mailinator.com" to the inputfield //*[@id="email_id"]
        And I add "ColdCold" to the inputfield //*[@id="password"]
        And I click on the element //button[@name="login"]
        Then I open the website "/"
        And I click on the element //*[@id="offer-strip-ruby"]/div[1]//app-lynk/a
        When I set <referral-email-id> to the inputfield //app-referral-modal-form//input
        And I click on the element //span[contains(text(),'Submit')]
        And I expect the url to contain <script-id>
        When I scroll the page to center and click on the element //ul[@class='top-nav-link']//li[contains(@class,'custom-dropdown')]/a
        And I click on the element //a[contains(@href,'/logout')]
        @eng
        Examples:
            | referral-email-id    | script-id                                            |
            | "acc@mailinator.com" | "/refer-friend?pii=ZW1haWw6YWNjQG1haWxpbmF0b3IuY29t" |

    @pending-regression
    Scenario Outline: Email id validation scenarios on referral pop-up
        When I click on the element //*[@id="offer-strip-ruby"]/div[1]//app-lynk/a
        When I set <referral-email-id> to the inputfield //app-referral-modal-form//div/input
        And I click on the element //span[contains(text(),'Submit')]
        Then I expect that element //app-referral-modal-form//input has the class "ng-invalid"
        And I click on the element //button[contains(@class,'button float-right')]

        @eng
        Examples:
            | referral-email-id             |
            | "emailwithout@"               |
            | "bddbot#$#$@mailinator.com"   |
            | "bddbot@.&aas@mailinator.com" |
            | "bdd @mailinator.com"         |
            | "BDD@MAILINATORCOM"           |