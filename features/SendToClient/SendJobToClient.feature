Feature: SendJobToClient from CRM
    Background: Verify Confirm Job Scenarios
    Scenario: CM Creates a Enquiry
        Given I am on Login Page from <env>
        When Secret Password is captured for <env> Admin Login for <username> and <password>
        Then Log in by CM Credentials on <env> and Create Enquiry from CRM for <user_email_id>
        Then Confirm Job Successfully from <env>
        Then Enquiry is Created Successfully
        Examples:
            | env    | username               | password         | user_email_id                |
            | test48 | neild@cactusglobal.com | VgzTs9zhDcHZmWfX | testusercheck@mailinator.com |
    Scenario: PM Confirms the Job
        Given I am on Login Page from <env>
        When Secret Password is captured for <env> Admin Login for <username> and <password>
        Then Login by PM Credentials on <env> for PM Login
        Examples:
            | env    | username               | password         | user_email_id                |
            | test48 | neild@cactusglobal.com | VgzTs9zhDcHZmWfX | testusercheck@mailinator.com |
    Scenario: Allocate a job to FL/EOC/Inhouse User
        Given I am on Login Page from <env>
        When PM Clicks on ManualAllocation Action from More Option <env>
        Then Allocate the job from PM to FL OR EOC OR InhouseUser
        Then Logout from PM Credentials Successfully
        Examples:
            | env    | username               | password         | user_email_id                |
            | test48 | neild@cactusglobal.com | VgzTs9zhDcHZmWfX | testusercheck@mailinator.com |





