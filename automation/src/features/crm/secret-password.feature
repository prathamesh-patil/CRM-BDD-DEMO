# @author Makarand Dhuri

Feature: CRM secret password

    Background: I am on CRM login
        Given I open the crm "/" and wait for load

    Scenario Outline:: I expect to get secret password
        When I expect to get <type> password from crm

        @crm
        Examples:
            | type   |
            | secret |
            | magic  |


