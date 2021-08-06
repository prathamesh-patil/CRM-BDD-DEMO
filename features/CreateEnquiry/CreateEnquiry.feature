Feature: Create Enquiry from CRM
    Scenario: CM Creates a Enquiry
        Given I am on Login Page from <env>
        When Secret Password is captured for <env> Admin Login for <username> and <password>
        Then Log in by CM Credentials on <env> and Create Enquiry from CRM for <user_email_id>
        Then Enquiry is Created Successfully
        Examples:
            | env    | username                        | password         | user_email_id                |
            | test17 | makarand.dhuri@cactusglobal.com | VgzTs9zhDcHZmWfX | testusercheck@mailinator.com |
