# @author Prathamesh Patil
Feature: CRM create enquiry

    Background: I am on CRM login
        Given I open the crm "/" and wait for load

    Scenario Outline:: I expect to create an enquiry from crm
        When I expect to get <type> password from crm
        When I expect to login from cm admin role
        Then I expect to create enquiry for <client_type> with <firstNameAndLastName> <service_name> <enquiry_type> <wc>
        @crm
        Examples:
            | type   | client_type | firstNameAndLastName | service_name     | enquiry_type | wc  |
            | secret | ec          | find.newname         | Standard_Editing | Normal         | 100 |


#enquiry_type: Normal,Valid_MRE,Paid_MRE,Sample,Quality_re-edit,Test
#firstNameAndLastName: eg. test.user,newclient.user
