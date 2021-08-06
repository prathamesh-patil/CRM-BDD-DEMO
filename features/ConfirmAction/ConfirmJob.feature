Feature: Confirm Job from CRM
    Background: Verify Confirm Job Scenarios
    Scenario: CM Creates a Enquiry
        Given I am on Login Page from <env>
        When Secret Password is captured for <env> Admin Login for <username> and <password>
        Then Log in by CM Credentials on <env> and Create Enquiry from CRM for <user_email_id>
        Then Enquiry is Created Successfully
        Examples:
            | env    | username               | password         | user_email_id                |
            | test48 | neild@cactusglobal.com | VgzTs9zhDcHZmWfX | testusercheck@mailinator.com |
    Scenario: PM Confirms the Job
        Given I am on Login Page from <env>
        When Secret Password is captured for <env> Admin Login for <username> and <password>
        Then Login by PM Credentials on <env> for PM Login
        Then Confirm Job Successfully
        Then Logout from PM Credentials Successfully
        Examples:
            | env    | username               | password         | user_email_id                |
            | test48 | neild@cactusglobal.com | VgzTs9zhDcHZmWfX | testusercheck@mailinator.com |



