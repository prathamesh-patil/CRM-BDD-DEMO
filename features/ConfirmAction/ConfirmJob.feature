Feature: Confirm Job from CRM
        Background: Verify Confirm Job Scenarios
        Scenario: CM Creates a Enquiry
            Given I am on Login Page from <env>
             When Secret Password is captured for <env> Admin Login for <username> and <password>
             Then Log in by CM Credentials on <env> and Create Enquiry from CRM for <user_email_id>
             Then Enquiry is Created Successfully
        Scenario: PM Confirms the Job
            Given I am on Login Page
             When PM Logins from Secret Password
             Then Confirm the Job Successfully
