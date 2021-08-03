Feature: CRM login Page
Background: Verify User Logins

    Scenario: Login by CM
         Given I am on the login page
         When I login with CM credentials
         Then I shall be sucessfully logged in for CM login

    Scenario: Login by PM
        Given I am on the login page
        When I login with PM credentials
        Then I shall be sucessfully logged in for PM login

    Scenario: Login by Translator
        Given I am on the login page
        When I login with Translator credentials
        Then I shall be sucessfully logged in for Translator login

    Scenario: Login by Freelancer
        Given I am on the login page
        When I login with Freelancer credentials
        Then I shall be sucessfully logged in for Freelancer login