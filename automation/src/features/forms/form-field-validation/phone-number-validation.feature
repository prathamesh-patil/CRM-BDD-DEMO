Feature: Phone Number validation

    Background: I am on new user form
        Given I open the eos "/order/ncf" and wait for load

    @sanity
    Scenario Outline: It should show validation message for maximum and minimum length validations on prospect pop up
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //button[contains(@data-description,'2-1-select') and @angularticslabel='top cta']
        When I set <wordCount> to the inputfield //div[@class='input-box']/input
        When I click on the element //div[contains(@class,'enter-word-count')]/button
        When I set <email> to the inputfield //input[@id='email_id']
        When I click on the element <countryDropDown>
        And I click on the element <selectCountry>
        When I set <phone> to the inputfield //input[@id='phone_number']
        When I click on the element //div[@id='prospect']//button[@class='btn btn-primary-blue']
        Then I expect that element <element1> matches the text <validationMessage>
        When I clear browser session

        @chn
        Examples:
            | wordCount | email                     | countryDropDown                                             | selectCountry                                 | phone          | element1                                   | validationMessage          |
            | "5000"    | "chnelig@mailinator.com"  | //div[contains(@class,'mat-form-field-infix ng-tns-c65-1')] | //span[@class='cn iti-flag ng-star-inserted'] | "9987544787"   | //div[@class='error-msg ng-star-inserted'] | "电话号码不可少于11位数字" |
            | "5000"    | "chnelig1@mailinator.com" | //div[contains(@class,'mat-form-field-infix ng-tns-c65-1')] | //span[@class='cn iti-flag ng-star-inserted'] | "998754478711" | //div[@class='error-msg ng-star-inserted'] | "电话号码不可长于11位数字" |
            | "1000"    | "chnelig1@mailinator.com" | //div[contains(@class,'mat-form-field-infix ng-tns-c65-1')] | //span[@class='cn iti-flag ng-star-inserted'] | ""             | //div[@class='error-msg ng-star-inserted'] | "请输入您的手机号码"       |

        @jpn
        Examples:
            | wordCount | email                            | countryDropDown                                             | selectCountry                                               | phone          | element1                                   | validationMessage                            |
            | "10000"   | "jaapancustomer@mailinator.com"  | //div[contains(@class,'mat-form-field-infix ng-tns-c65-0')] | //span[@class='iti-flag jp ng-star-inserted']//parent::span | "998754478"    | //div[@class='error-msg ng-star-inserted'] | "10桁以上の正しい電話番号を入力してください" |
            | "10000"   | "jaapancustomer1@mailinator.com" | //div[contains(@class,'mat-form-field-infix ng-tns-c65-0')] | //span[@class='iti-flag jp ng-star-inserted']//parent::span | "998754478711" | //div[@class='error-msg ng-star-inserted'] | "正しい電話番号を11桁以内で入力してください" |
            | "10000"   | "jaapancustomer1@mailinator.com" | //div[contains(@class,'mat-form-field-infix ng-tns-c65-0')] | //span[@class='iti-flag jp ng-star-inserted']//parent::span | ""             | //div[@class='error-msg ng-star-inserted'] | "電話番号を入力してください"                 |

        @kor
        Examples:
            | wordCount | email                          | countryDropDown                                             | selectCountry                                               | phone          | element1                                   | validationMessage                                   |
            | "11111"   | "korea@mailinator.com"         | //div[contains(@class,'mat-form-field-infix ng-tns-c65-0')] | //span[@class='iti-flag kr ng-star-inserted']//parent::span | "99875447"     | //div[@class='error-msg ng-star-inserted'] | "휴대폰 번호는 최소 9자리 숫자로 입력이 필요합니다" |
            | "10001"   | "koreacustomer@mailinator.com" | //div[contains(@class,'mat-form-field-infix ng-tns-c65-0')] | //span[@class='iti-flag kr ng-star-inserted']//parent::span | "998754478711" | //div[@class='error-msg ng-star-inserted'] | "휴대폰 번호는 11자리 숫자를 초과할 수 없습니다"    |
            | "10000"   | "koreacustomer@mailinator.com" | //div[contains(@class,'mat-form-field-infix ng-tns-c65-0')] | //span[@class='iti-flag kr ng-star-inserted']//parent::span | ""             | //div[@class='error-msg ng-star-inserted'] | "휴대폰 번호를 입력하세요"                          |

    @regression
    Scenario Outline: It should show validation message for maximum and minimum length validations in eng market on prospect popup
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //button[contains(@data-description,'2-1-select') and @angularticslabel='top cta']
        When I click on the element //a[@angularticsaction='clickDocumentNotReady']
        When I set <wordCount> to the inputfield //div[@class='input-box']/input
        When I click on the element //div[contains(@class,'enter-word-count')]/button
        When I set <email> to the inputfield //input[@id='email_id']
        When I click on the element <countryDropDown>
        And  I click on the element <selectCountry>
        When I set <phone> to the inputfield //input[@id='phone_number']
        When I click on the element //div[@id='prospect']//button[@class='btn btn-primary-blue']
        Then I expect that element <element1> matches the text <validationMessage>
        When I clear browser session
        When I refresh the page

        @eng
        Examples:
            | wordCount | email                       | countryDropDown                                                                | selectCountry                                           | phone         | element1                                   | validationMessage                                     |
            | "1000"    | "engmarket@mailinator.com"  | //span[contains(@class,'mat-select-value-text ng-tns-c68-1 ng-star-inserted')] | //span[contains(@class,'in iti-flag ng-star-inserted')] | "998754478"   | //div[@class='error-msg ng-star-inserted'] | "Your phone number should be at least 10 digits long" |
            | "1000"    | "engmakret1@mailinator.com" | //span[contains(@class,'mat-select-value-text ng-tns-c68-1 ng-star-inserted')] | //span[contains(@class,'in iti-flag ng-star-inserted')] | "99875447871" | //div[@class='error-msg ng-star-inserted'] | "Your phone number cannot exceed 10 digits"           |

    @regression
    Scenario Outline: It should show validation message for maximum and minimum length validations on all other country codes on prospect popup
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //button[contains(@data-description,'2-1-select') and @angularticslabel='top cta']
        When I click on the element //a[@angularticsaction='clickDocumentNotReady']
        When I set <wordCount> to the inputfield //div[@class='input-box']/input
        When I click on the element //div[contains(@class,'enter-word-count')]/button
        When I set <email> to the inputfield //input[@id='email_id']
        When I click on the element <countryDropDown>
        And  I click on the element <selectCountry>
        When I set <phone> to the inputfield //input[@id='phone_number']
        When I click on the element //div[@id='prospect']//button[@class='btn btn-primary-blue']
        Then I expect that element <element1> matches the text <validationMessage>
        When I clear browser session
        When I refresh the page

        @eng
        Examples:
            | wordCount | email                       | countryDropDown                                               | selectCountry                          | phone            | element1                                   | validationMessage                                     |
            | "1000"    | "engmarket@mailinator.com"  | //div[contains(@class,'mat-form-field-wrapper ng-tns-c65-0')] | //span[contains(@class,'id iti-flag')] | "998"            | //div[@class='error-msg ng-star-inserted'] | "Your phone number should be at least 4 digits long"  |
            | "1500"    | "engmakret1@mailinator.com" | //span[contains(@class,'mat-select-value-text ng-tns-c68')]   | //span[contains(@class,'de iti-flag')] | "998"            | //div[@class='error-msg ng-star-inserted'] | "Your phone number should be at least 4 digits long"  |
            | "2000"    | "engmakret1@mailinator.com" | //span[contains(@class,'mat-select-value-text ng-tns-c68')]   | //span[contains(@class,'fr iti-flag')] | "99875447871111" | //div[@class='error-msg ng-star-inserted'] | "Your phone number cannot exceed 13 digits"           |
            | "2500"    | "engmakret1@mailinator.com" | //span[contains(@class,'mat-select-value-text ng-tns-c68-1')] | //span[contains(@class,'at iti-flag')] | "99875447871111" | //div[@class='error-msg ng-star-inserted'] | "Your phone number cannot exceed 13 digits"           |
            | "3000"    | "engmakret1@mailinator.com" | //div[contains(@class,'mat-form-field-wrapper ng-tns-c65-0')] | //span[contains(@class,'br iti-flag')] | "99875447871111" | //div[@class='error-msg ng-star-inserted'] | "Your phone number cannot exceed 13 digits"           |
            | "3500"    | "engmakret1@mailinator.com" | //div[contains(@class,'mat-form-field-wrapper ng-tns-c65-0')] | //span[contains(@class,'bg iti-flag')] | "99875447871111" | //div[@class='error-msg ng-star-inserted'] | "Your phone number cannot exceed 13 digits"           |
            | "4000"    | "engmakret1@mailinator.com" | //div[contains(@class,'mat-form-field-wrapper ng-tns-c65-0')] | //span[contains(@class,'cc iti-flag')] | "99875447871111" | //div[@class='error-msg ng-star-inserted'] | "Your phone number cannot exceed 13 digits"           |
            | "4500"    | "engmakret1@mailinator.com" | //div[contains(@class,'mat-form-field-wrapper ng-tns-c65-0')] | //span[contains(@class,'cu iti-flag')] | "99875447871111" | //div[@class='error-msg ng-star-inserted'] | "Your phone number cannot exceed 13 digits"           |
            | "5000"    | "engmakret1@mailinator.com" | //div[contains(@class,'mat-form-field-wrapper ng-tns-c65-0')] | //span[contains(@class,'iti-flag jp')] | "998754478"      | //div[@class='error-msg ng-star-inserted'] | "Your phone number should be at least 10 digits long" |
            | "5500"    | "engmakret1@mailinator.com" | //div[contains(@class,'mat-form-field-wrapper ng-tns-c65-0')] | //span[contains(@class,'iti-flag jp')] | "998754478711"   | //div[@class='error-msg ng-star-inserted'] | "Your phone number cannot exceed 11 digits"           |
            | "6000"    | "engmakret1@mailinator.com" | //div[contains(@class,'mat-form-field-wrapper ng-tns-c65-0')] | //span[contains(@class,'iti-flag kr')] | "998754478711"   | //div[@class='error-msg ng-star-inserted'] | "Your phone number cannot exceed 11 digits"           |
            | "6200"    | "engmakret1@mailinator.com" | //div[contains(@class,'mat-form-field-wrapper ng-tns-c65-0')] | //span[contains(@class,'iti-flag kr')] | "99875447"       | //div[@class='error-msg ng-star-inserted'] | "Your phone number should be at least 9 digits long"  |
            | "7000"    | "engmakret1@mailinator.com" | //div[contains(@class,'mat-form-field-wrapper ng-tns-c65-0')] | //span[contains(@class,'cn iti-flag')] | "998754478711"   | //div[@class='error-msg ng-star-inserted'] | "Your phone number cannot exceed 11 digits"           |
            | "7200"    | "engmakret1@mailinator.com" | //div[contains(@class,'mat-form-field-wrapper ng-tns-c65-0')] | //span[contains(@class,'cn iti-flag')] | "9987544787"     | //div[@class='error-msg ng-star-inserted'] | "Your phone number should be at least 11 digits long" |
            | "7500"    | "engmakret1@mailinator.com" | //div[contains(@class,'mat-form-field-wrapper ng-tns-c65-0')] | //span[contains(@class,'iti-flag us')] | "998"            | //div[@class='error-msg ng-star-inserted'] | "Your phone number should be at least 4 digits long"  |
            | "8000"    | "engmakret1@mailinator.com" | //div[contains(@class,'mat-form-field-wrapper ng-tns-c65-0')] | //span[contains(@class,'iti-flag us')] | "99875447871111" | //div[@class='error-msg ng-star-inserted'] | "Your phone number cannot exceed 13 digits"           |

    @regression
    Scenario Outline: It should accept the values without throwing validation in prospect pop up
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //button[contains(@data-description,'2-1-select') and @angularticslabel='top cta']
        When I set <wordCount> to the inputfield //div[@class='input-box']/input
        When I click on the element //div[contains(@class,'enter-word-count')]/button
        When I set <email> to the inputfield //input[@id='email_id']
        When I click on the element <countryDropDown>
        And I click on the element <selectCountry>
        When I set <phone> to the inputfield //input[@id='phone_number']
        When I click on the element //div[@id='prospect']//button[@class='btn btn-primary-blue']
        Then I expect <element1> should not be displayed on page
        When I clear browser session

        @chn
        Examples:
            | wordCount | email                    | countryDropDown                                             | selectCountry                                 | phone         | element1                                   |
            | "5000"    | "chnelig@mailinator.com" | //div[contains(@class,'mat-form-field-infix ng-tns-c65-1')] | //span[@class='cn iti-flag ng-star-inserted'] | "99875447871" | //div[@class='error-msg ng-star-inserted'] |

        @jpn
        Examples:
            | wordCount | email                            | countryDropDown                                             | selectCountry                                               | phone         | element1                                   |
            | "20001"   | "jaapancustomer@mailinator.com"  | //div[contains(@class,'mat-form-field-infix ng-tns-c65-0')] | //span[@class='iti-flag jp ng-star-inserted']//parent::span | "9987544787"  | //div[@class='error-msg ng-star-inserted'] |
            | "30000"   | "jaapancustomer1@mailinator.com" | //div[contains(@class,'mat-form-field-infix ng-tns-c65-0')] | //span[@class='iti-flag jp ng-star-inserted']//parent::span | "99875447871" | //div[@class='error-msg ng-star-inserted'] |

        @kor
        Examples:
            | wordCount | email                          | countryDropDown                                             | selectCountry                                               | phone         | element1                                   |
            | "11111"   | "korea@mailinator.com"         | //div[contains(@class,'mat-form-field-infix ng-tns-c65-0')] | //span[@class='iti-flag kr ng-star-inserted']//parent::span | "998754478"   | //div[@class='error-msg ng-star-inserted'] |
            | "10001"   | "koreacustomer@mailinator.com" | //div[contains(@class,'mat-form-field-infix ng-tns-c65-0')] | //span[@class='iti-flag kr ng-star-inserted']//parent::span | "99875447871" | //div[@class='error-msg ng-star-inserted'] |

    @sanity
    Scenario Outline: It should show validation message for maximum and minimum length validations on Download quotation pop up for china market
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //button[contains(@data-description,'2-1-select') and @angularticslabel='top cta']
        When I set <wordCount> to the inputfield //div[@class='input-box']/input
        When I click on the element //div[contains(@class,'enter-word-count')]/button
        When I set <email> to the inputfield //input[@id='email_id']
        When I click on the element <prospectCountryDropDown>
        And I click on the element <prospectSelectCountry>
        When I set <phone> to the inputfield //input[@id='phone_number']
        When I click on the element //div[@id='prospect']//button[@class='btn btn-primary-blue']
        When I click on the element //app-phoenix-plan-items/form/div/div[2]//span[@class='radio-icon']
        When I click on the element //a[contains(@data-toggle,'modal') and @class='ng-star-inserted']
        When I set <nativeName> to the inputfield <native>
        When I delete prefilled value of inputfield <quotationEmailId>
        When I set <quotationEmail> to the inputfield <quotationEmailId>
        When I delete prefilled value of inputfield //input[@id='phone']
        When I set <DownloadQuotePhoneNumber> to the inputfield //input[@id='phone']
        When I click on the element <downloadQuoteCountryDropDown>
        And I click on the element <selectCountry>
        When I click on the element //button[@class='btn btn-primary-blue download-quote']
        And I expect that element <element1> matches the text <validationMessage>
        When I clear browser session

        @chn
        Examples:
            | wordCount | email                    | downloadQuoteCountryDropDown                            | selectCountry                                 | phone         | DownloadQuotePhoneNumber | element1                                   | nativeName | quotationEmail         | native                     | quotationEmailId     | validationMessage          | prospectCountryDropDown                                     | prospectSelectCountry                         |
            | "5000"    | "chnelig@mailinator.com" | //div[contains(@class,'mat-select-value ng-tns-c68-4')] | //span[@class='cn iti-flag ng-star-inserted'] | "99875447871" | "9987544787"             | //div[@class='error-msg ng-star-inserted'] | "联系"     | "angry@mailinator.com" | //input[@id='native_name'] | //input[@id='email'] | "电话号码不可少于11位数字" | //div[contains(@class,'mat-form-field-infix ng-tns-c65-1')] | //span[@class='cn iti-flag ng-star-inserted'] |
            | "6000"    | "chnelig@mailinator.com" | //div[contains(@class,'mat-select-value ng-tns-c68-4')] | //span[@class='cn iti-flag ng-star-inserted'] | "99875447871" | "998754478711"           | //div[@class='error-msg ng-star-inserted'] | "联系"     | "angry@mailinator.com" | //input[@id='native_name'] | //input[@id='email'] | "电话号码不可长于11位数字" | //div[contains(@class,'mat-form-field-infix ng-tns-c65-1')] | //span[@class='cn iti-flag ng-star-inserted'] |
            | "7000"    | "chnelig@mailinator.com" | //div[contains(@class,'mat-select-value ng-tns-c68-4')] | //span[@class='cn iti-flag ng-star-inserted'] | "99875447871" | ""                       | //div[@class='error-msg ng-star-inserted'] | "联系"     | "angry@mailinator.com" | //input[@id='native_name'] | //input[@id='email'] | "请输入您的手机号码"       | //div[contains(@class,'mat-form-field-infix ng-tns-c65-1')] | //span[@class='cn iti-flag ng-star-inserted'] |

    @regression
    Scenario Outline: It should show validation message for maximum and minimum length validations on Download quotation pop up for japan and korea market
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //button[contains(@data-description,'2-1-select') and @angularticslabel='top cta']
        When I set <wordCount> to the inputfield //div[@class='input-box']/input
        When I click on the element //div[contains(@class,'enter-word-count')]/button
        When I click on the element //app-phoenix-plan-items/form/div/div[2]//span[@class='radio-icon']
        When I click on the element //a[contains(@data-toggle,'modal') and @class='ng-star-inserted']
        When I set <nativeName> to the inputfield <native>
        When I set <quotationEmail> to the inputfield <quotationEmailId>
        When I click on the element <downloadQuoteCountryDropDown>
        And I click on the element <selectCountry>
        When I set <DownloadQuotePhoneNumber> to the inputfield //input[@id='phone']
        When I click on the element //button[@class='btn btn-primary-blue download-quote']
        And I expect that element <element1> matches the text <validationMessage>
        When I clear browser session

        @jpn
        Examples:
            | wordCount | email                            | downloadQuoteCountryDropDown                  | selectCountry                                 | DownloadQuotePhoneNumber | element1                                   | nativeName | quotationEmail          | native                     | quotationEmailId     | validationMessage                            | prospectCountryDropDown                                     | prospectSelectCountry                         |
            | "3000"    | "jaapancustomer@mailinator.com"  | //mat-select[contains(@class,'ng-tns-c65-2')] | //span[@class="iti-flag jp ng-star-inserted"] | "998754478"              | //div[@class='error-msg ng-star-inserted'] | "test"     | "angry@mailinator.com"  | //input[@id='native_name'] | //input[@id='email'] | "10桁以上の正しい電話番号を入力してください" | //div[contains(@class,'mat-form-field-infix ng-tns-c65-1')] | //span[@class='cn iti-flag ng-star-inserted'] |
            | "3500"    | "jaapancustomer1@mailinator.com" | //mat-select[contains(@class,'ng-tns-c65-2')] | //span[@class="iti-flag jp ng-star-inserted"] | "998754478711"           | //div[@class='error-msg ng-star-inserted'] | "ださい"   | "angry1@mailinator.com" | //input[@id='native_name'] | //input[@id='email'] | "正しい電話番号を11桁以内で入力してください" | //div[contains(@class,'mat-form-field-infix ng-tns-c65-1')] | //span[@class='cn iti-flag ng-star-inserted'] |
            | "4000"    | "jaapancustomer1@mailinator.com" | //mat-select[contains(@class,'ng-tns-c65-2')] | //span[@class="iti-flag jp ng-star-inserted"] | ""                       | //div[@class='error-msg ng-star-inserted'] | "ださい"   | "angry2@mailinator.com" | //input[@id='native_name'] | //input[@id='email'] | "電話番号を入力してください"                 | //div[contains(@class,'mat-form-field-infix ng-tns-c65-1')] | //span[@class='cn iti-flag ng-star-inserted'] |

        @kor
        Examples:
            | wordCount | email                            | downloadQuoteCountryDropDown                     | selectCountry                                 | DownloadQuotePhoneNumber | element1                                   | nativeName | quotationEmail          | native                     | quotationEmailId     | validationMessage                                   | prospectCountryDropDown                                     | prospectSelectCountry                         |
            | "3000"    | "jaapancustomer@mailinator.com"  | //div[@class='mat-form-field-flex ng-tns-c65-2'] | //span[@class='iti-flag kr ng-star-inserted'] | "99875447"               | //div[@class='error-msg ng-star-inserted'] | "test"     | "angry@mailinator.com"  | //input[@id='native_name'] | //input[@id='email'] | "휴대폰 번호는 최소 9자리 숫자로 입력이 필요합니다" | //div[contains(@class,'mat-form-field-infix ng-tns-c65-1')] | //span[@class='cn iti-flag ng-star-inserted'] |
            | "3500"    | "jaapancustomer1@mailinator.com" | //div[@class='mat-form-field-flex ng-tns-c65-2'] | //span[@class='iti-flag kr ng-star-inserted'] | "998754478711"           | //div[@class='error-msg ng-star-inserted'] | "ださい"   | "angry1@mailinator.com" | //input[@id='native_name'] | //input[@id='email'] | "휴대폰 번호는 11자리 숫자를 초과할 수 없습니다"    | //div[contains(@class,'mat-form-field-infix ng-tns-c65-1')] | //span[@class='cn iti-flag ng-star-inserted'] |
            | "4000"    | "jaapancustomer1@mailinator.com" | //div[@class='mat-form-field-flex ng-tns-c65-2'] | //span[@class='iti-flag kr ng-star-inserted'] | ""                       | //div[@class='error-msg ng-star-inserted'] | "ださい"   | "angry2@mailinator.com" | //input[@id='native_name'] | //input[@id='email'] | "휴대폰 번호를 입력하세요"                          | //div[contains(@class,'mat-form-field-infix ng-tns-c65-1')] | //span[@class='cn iti-flag ng-star-inserted'] |

    @sanity
    Scenario Outline: It should show validation message for maximum and minimum length validations in eng market on download quotation
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //button[contains(@data-description,'2-1-select') and @angularticslabel='top cta']
        When I click on the element //a[@angularticsaction='clickDocumentNotReady']
        When I set <wordCount> to the inputfield //div[@class='input-box']/input
        When I click on the element //div[contains(@class,'enter-word-count')]/button
        When I set <email> to the inputfield //input[@id='email_id']
        When I click on the element <countryDropDown>
        And  I click on the element <selectCountry>
        When I set <phone> to the inputfield //input[@id='phone_number']
        When I click on the element //div[@id='prospect']//button[@class='btn btn-primary-blue']
        When I click on the element //app-phoenix-plan-items/form/div/div[2]//span[@class='radio-icon']
        When I click on the element //a[contains(@data-toggle,'modal') and @class='ng-star-inserted']
        When I set <nativeName> to the inputfield <native>
        When I delete prefilled value of inputfield <quotationEmailId>
        When I set <quotationEmail> to the inputfield <quotationEmailId>
        When I delete prefilled value of inputfield //input[@id='phone']
        When I set <DownloadQuotePhoneNumber> to the inputfield //input[@id='phone']
        When I click on the element //button[@class='btn btn-primary-blue download-quote']
        Then I expect that element <element1> matches the text <downloadQuoteValidationMessage>
        When I clear browser session

        @eng
        Examples:
            | wordCount | email                       | countryDropDown                                                                | selectCountry                                           | phone        | element1                                   | downloadQuoteValidationMessage                        | nativeName | native                     | quotationEmail              | quotationEmailId     | DownloadQuotePhoneNumber |
            | "3000"    | "engmarket@mailinator.com"  | //span[contains(@class,'mat-select-value-text ng-tns-c68-1 ng-star-inserted')] | //span[contains(@class,'in iti-flag ng-star-inserted')] | "9987544787" | //div[@class='error-msg ng-star-inserted'] | "Your phone number should be at least 10 digits long" | "nitin"    | //input[@id='native_name'] | "engmarket@mailinator.com"  | //input[@id='email'] | "998754478"              |
            | "3000"    | "engmakret1@mailinator.com" | //span[contains(@class,'mat-select-value-text ng-tns-c68-1 ng-star-inserted')] | //span[contains(@class,'in iti-flag ng-star-inserted')] | "9987544787" | //div[@class='error-msg ng-star-inserted'] | "Your phone number cannot exceed 10 digits"           | "nsss"     | //input[@id='native_name'] | "engmarket1@mailinator.com" | //input[@id='email'] | "99875447871"            |

    @regression
    Scenario Outline: It should show validation message for maximum and minimum length validations on all other country codes on download quote popup
        When I click on the element //a[contains(@angularticslabel,'Editing')]
        When I click on the element //button[contains(@data-description,'2-1-select') and @angularticslabel='top cta']
        When I click on the element //a[@angularticsaction='clickDocumentNotReady']
        When I set <wordCount> to the inputfield //div[@class='input-box']/input
        When I click on the element //div[contains(@class,'enter-word-count')]/button
        When I set <email> to the inputfield //input[@id='email_id']
        When I set <phone> to the inputfield //input[@id='phone_number']
        When I click on the element //div[@id='prospect']//button[@class='btn btn-primary-blue']
        When I click on the element //app-phoenix-plan-items/form/div/div[2]//span[@class='radio-icon']
        When I click on the element //a[contains(@data-toggle,'modal') and @class='ng-star-inserted']
        When I set <nativeName> to the inputfield <native>
        When I delete prefilled value of inputfield <quotationEmailId>
        When I set <quotationEmail> to the inputfield <quotationEmailId>
        When I click on the element <countryDropDown>
        And  I click on the element <selectCountry>
        When I delete prefilled value of inputfield //input[@id='phone']
        When I set <DownloadQuotePhoneNumber> to the inputfield //input[@id='phone']
        When I click on the element //button[@class='btn btn-primary-blue download-quote']
        Then I expect that element <element1> matches the text <downloadQuoteValidationMessage>
        When I clear browser session

        @eng
        Examples:
            | wordCount | email                          | countryDropDown                                             | selectCountry                          | phone        | element1                                   | downloadQuoteValidationMessage                        | nativeName | native                     | quotationEmail             | quotationEmailId     | DownloadQuotePhoneNumber |
            | "2000"    | "engmarket1212@mailinator.com" | //div[contains(@class,'mat-form-field-infix ng-tns-c65-2')] | //span[contains(@class,'id iti-flag')] | "9987544787" | //div[@class='error-msg ng-star-inserted'] | "Your phone number should be at least 4 digits long"  | "Nitin"    | //input[@id='native_name'] | "engmarket@mailinator.com" | //input[@id='email'] | "998"                    |
            | "2000"    | "engmakret112@mailinator.com"  | //div[contains(@class,'mat-form-field-infix ng-tns-c65-2')] | //span[contains(@class,'de iti-flag')] | "9987544787" | //div[@class='error-msg ng-star-inserted'] | "Your phone number should be at least 4 digits long"  | "Nitin"    | //input[@id='native_name'] | "engmarket@mailinator.com" | //input[@id='email'] | "998"                    |
            | "2000"    | "engmakret112@mailinator.com"  | //div[contains(@class,'mat-form-field-infix ng-tns-c65-2')] | //span[contains(@class,'fr iti-flag')] | "9987544787" | //div[@class='error-msg ng-star-inserted'] | "Your phone number cannot exceed 13 digits"           | "Nitin"    | //input[@id='native_name'] | "engmarket@mailinator.com" | //input[@id='email'] | "99875447871111"         |
            | "2500"    | "engma12kret1@mailinator.com"  | //div[contains(@class,'mat-form-field-infix ng-tns-c65-2')] | //span[contains(@class,'at iti-flag')] | "9987544787" | //div[@class='error-msg ng-star-inserted'] | "Your phone number cannot exceed 13 digits"           | "Nitin"    | //input[@id='native_name'] | "engmarket@mailinator.com" | //input[@id='email'] | "99875447871111"         |
            | "3000"    | "engmakret121@mailinator.com"  | //div[contains(@class,'mat-form-field-infix ng-tns-c65-2')] | //span[contains(@class,'br iti-flag')] | "9987544787" | //div[@class='error-msg ng-star-inserted'] | "Your phone number cannot exceed 13 digits"           | "Nitin"    | //input[@id='native_name'] | "engmarket@mailinator.com" | //input[@id='email'] | "99875447871111"         |
            | "4000"    | "engmakr12et1@mailinator.com"  | //div[contains(@class,'mat-form-field-infix ng-tns-c65-2')] | //span[contains(@class,'cc iti-flag')] | "9987544787" | //div[@class='error-msg ng-star-inserted'] | "Your phone number cannot exceed 13 digits"           | "Nitin"    | //input[@id='native_name'] | "engmarket@mailinator.com" | //input[@id='email'] | "99875447871111"         |
            | "4500"    | "engmakret121@mailinator.com"  | //div[contains(@class,'mat-form-field-infix ng-tns-c65-2')] | //span[contains(@class,'cu iti-flag')] | "9987544787" | //div[@class='error-msg ng-star-inserted'] | "Your phone number cannot exceed 13 digits"           | "Nitin"    | //input[@id='native_name'] | "engmarket@mailinator.com" | //input[@id='email'] | "99875447871111"         |
            | "5000"    | "engmak12ret1@mailinator.com"  | //div[contains(@class,'mat-form-field-infix ng-tns-c65-2')] | //span[contains(@class,'iti-flag jp')] | "9987544787" | //div[@class='error-msg ng-star-inserted'] | "Your phone number should be at least 10 digits long" | "Nitin"    | //input[@id='native_name'] | "engmarket@mailinator.com" | //input[@id='email'] | "998754478"              |
            | "5500"    | "engmak12ret1@mailinator.com"  | //div[contains(@class,'mat-form-field-infix ng-tns-c65-2')] | //span[contains(@class,'iti-flag jp')] | "9987544787" | //div[@class='error-msg ng-star-inserted'] | "Your phone number cannot exceed 11 digits"           | "Nitin"    | //input[@id='native_name'] | "engmarket@mailinator.com" | //input[@id='email'] | "998754478711"           |
            | "6000"    | "engmak12ret1@mailinator.com"  | //div[contains(@class,'mat-form-field-infix ng-tns-c65-2')] | //span[contains(@class,'iti-flag kr')] | "9987544787" | //div[@class='error-msg ng-star-inserted'] | "Your phone number cannot exceed 11 digits"           | "Nitin"    | //input[@id='native_name'] | "engmarket@mailinator.com" | //input[@id='email'] | "998754478711"           |
            | "6200"    | "engmakret1@mailinator.com"    | //div[contains(@class,'mat-form-field-infix ng-tns-c65-2')] | //span[contains(@class,'iti-flag kr')] | "9987544787" | //div[@class='error-msg ng-star-inserted'] | "Your phone number should be at least 9 digits long"  | "Nitin"    | //input[@id='native_name'] | "engmarket@mailinator.com" | //input[@id='email'] | "99875447"               |
            | "7000"    | "engmakret1@mailinator.com"    | //div[contains(@class,'mat-form-field-infix ng-tns-c65-2')] | //span[contains(@class,'cn iti-flag')] | "9987544787" | //div[@class='error-msg ng-star-inserted'] | "Your phone number cannot exceed 11 digits"           | "Nitin"    | //input[@id='native_name'] | "engmarket@mailinator.com" | //input[@id='email'] | "998754478711"           |
            | "7200"    | "engmakret1@mailinator.com"    | //div[contains(@class,'mat-form-field-infix ng-tns-c65-2')] | //span[contains(@class,'cn iti-flag')] | "9987544787" | //div[@class='error-msg ng-star-inserted'] | "Your phone number should be at least 11 digits long" | "Nitin"    | //input[@id='native_name'] | "engmarket@mailinator.com" | //input[@id='email'] | "9987544787"             |
            | "7500"    | "engmakret1@mailinator.com"    | //div[contains(@class,'mat-form-field-infix ng-tns-c65-2')] | //span[contains(@class,'iti-flag us')] | "9987544787" | //div[@class='error-msg ng-star-inserted'] | "Your phone number should be at least 4 digits long"  | "Nitin"    | //input[@id='native_name'] | "engmarket@mailinator.com" | //input[@id='email'] | "998"                    |
            | "8000"    | "engmakret1@mailinator.com"    | //div[contains(@class,'mat-form-field-infix ng-tns-c65-2')] | //span[contains(@class,'iti-flag us')] | "9987544787" | //div[@class='error-msg ng-star-inserted'] | "Your phone number cannot exceed 13 digits"           | "Nitin"    | //input[@id='native_name'] | "engmarket@mailinator.com" | //input[@id='email'] | "99875447871111"         |

    @sanity
    Scenario Outline: It should accept the values without throwing validation on download quote pop up in china market
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //button[contains(@data-description,'2-1-select') and @angularticslabel='top cta']
        When I set <wordCount> to the inputfield //div[@class='input-box']/input
        When I click on the element //div[contains(@class,'enter-word-count')]/button
        When I set <email> to the inputfield //input[@id='email_id']
        When I click on the element <prospectCountryDropDown>
        And I click on the element <prospectSelectCountry>
        When I set <phone> to the inputfield //input[@id='phone_number']
        When I click on the element //div[@id='prospect']//button[@class='btn btn-primary-blue']
        When I click on the element //app-phoenix-plan-items/form/div/div[2]//span[@class='radio-icon']
        When I click on the element //a[contains(@data-toggle,'modal') and @class='ng-star-inserted']
        When I set <nativeName> to the inputfield <native>
        When I delete prefilled value of inputfield <quotationEmailId>
        When I set <quotationEmail> to the inputfield <quotationEmailId>
        When I delete prefilled value of inputfield //input[@id='phone']
        When I click on the element <downloadQuoteCountryDropDown>
        And I click on the element <selectCountry>
        When I set <DownloadQuotePhoneNumber> to the inputfield //input[@id='phone']
        When I click on the element //button[@class='btn btn-primary-blue download-quote']
        Then I expect <element1> should not be displayed on page
        When I clear browser session

        @chn
        Examples:
            | wordCount | email                    | downloadQuoteCountryDropDown                            | selectCountry                                 | phone         | DownloadQuotePhoneNumber | element1                                   | nativeName | quotationEmail         | native                     | quotationEmailId     | prospectCountryDropDown                                     | prospectSelectCountry                         |
            | "5000"    | "chnelig@mailinator.com" | //div[contains(@class,'mat-select-value ng-tns-c68-4')] | //span[@class='cn iti-flag ng-star-inserted'] | "99875447871" | "99875447871"            | //div[@class='error-msg ng-star-inserted'] | "联系"     | "angry@mailinator.com" | //input[@id='native_name'] | //input[@id='email'] | //div[contains(@class,'mat-form-field-infix ng-tns-c65-1')] | //span[@class='cn iti-flag ng-star-inserted'] |

    @sanity
    Scenario Outline: It should accept the values without throwing validation on download quote pop up in jpn and korea market
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //button[contains(@data-description,'2-1-select') and @angularticslabel='top cta']
        When I set <wordCount> to the inputfield //div[@class='input-box']/input
        When I click on the element //div[contains(@class,'enter-word-count')]/button
        When I click on the element //app-phoenix-plan-items/form/div/div[2]//span[@class='radio-icon']
        When I click on the element //a[contains(@data-toggle,'modal') and @class='ng-star-inserted']
        When I set <nativeName> to the inputfield <native>
        When I set <quotationEmail> to the inputfield <quotationEmailId>
        When I click on the element <downloadQuoteCountryDropDown>
        And I click on the element <selectCountry>
        When I set <DownloadQuotePhoneNumber> to the inputfield //input[@id='phone']
        When I click on the element //button[@class='btn btn-primary-blue download-quote']
        Then I expect <element1> should not be displayed on page
        When I clear browser session

        @jpn
        Examples:
            | wordCount | email                            | downloadQuoteCountryDropDown                  | selectCountry                                 | DownloadQuotePhoneNumber | element1                                   | nativeName | quotationEmail          | native                     | quotationEmailId     | validationMessage                            |
            | "3000"    | "jaapancustomer@mailinator.com"  | //mat-select[contains(@class,'ng-tns-c65-2')] | //span[@class="iti-flag jp ng-star-inserted"] | "9987544787"             | //div[@class='error-msg ng-star-inserted'] | "test"     | "angry@mailinator.com"  | //input[@id='native_name'] | //input[@id='email'] | "10桁以上の正しい電話番号を入力してください" |
            | "3500"    | "jaapancustomer1@mailinator.com" | //mat-select[contains(@class,'ng-tns-c65-2')] | //span[@class="iti-flag jp ng-star-inserted"] | "99875447871"            | //div[@class='error-msg ng-star-inserted'] | "ださい"   | "angry1@mailinator.com" | //input[@id='native_name'] | //input[@id='email'] | "正しい電話番号を11桁以内で入力してください" |

        @kor
        Examples:
            | wordCount | email                            | downloadQuoteCountryDropDown                      | selectCountry                                 | DownloadQuotePhoneNumber | element1                                   | nativeName | quotationEmail          | native                     | quotationEmailId     | validationMessage                                   |
            | "3000"    | "koreacustomer1@mailinator.com"  | //div[@class='mat-form-field-infix ng-tns-c65-2'] | //span[@class='iti-flag kr ng-star-inserted'] | "998754478"              | //div[@class='error-msg ng-star-inserted'] | "test"     | "angry@mailinator.com"  | //input[@id='native_name'] | //input[@id='email'] | "휴대폰 번호는 최소 9자리 숫자로 입력이 필요합니다" |
            | "3500"    | "jaapancustomer3@mailinator.com" | //div[@class='mat-form-field-infix ng-tns-c65-2'] | //span[@class='iti-flag kr ng-star-inserted'] | "99875447871"            | //div[@class='error-msg ng-star-inserted'] | "ださい"   | "angry1@mailinator.com" | //input[@id='native_name'] | //input[@id='email'] | "휴대폰 번호는 11자리 숫자를 초과할 수 없습니다"    |

    @sanity
    Scenario Outline: It should accept the values without throwing validation on download quote pop up in eng market
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //button[contains(@data-description,'2-1-select') and @angularticslabel='top cta']
        When I click on the element //a[@angularticsaction='clickDocumentNotReady']
        When I set <wordCount> to the inputfield //div[@class='input-box']/input
        When I click on the element //div[contains(@class,'enter-word-count')]/button
        When I set <email> to the inputfield //input[@id='email_id']
        When I click on the element <countryDropDown>
        And  I click on the element <selectCountry>
        When I set <phone> to the inputfield //input[@id='phone_number']
        When I click on the element //div[@id='prospect']//button[@class='btn btn-primary-blue']
        When I click on the element //app-phoenix-plan-items/form/div/div[2]//span[@class='radio-icon']
        When I click on the element //a[contains(@data-toggle,'modal') and @class='ng-star-inserted']
        When I set <nativeName> to the inputfield <native>
        When I delete prefilled value of inputfield <quotationEmailId>
        When I set <quotationEmail> to the inputfield <quotationEmailId>
        When I delete prefilled value of inputfield //input[@id='phone']
        When I set <DownloadQuotePhoneNumber> to the inputfield //input[@id='phone']
        When I click on the element //button[@class='btn btn-primary-blue download-quote']
        Then I expect <element1> should not be displayed on page
        When I clear browser session
        When I refresh the page

        @eng
        Examples:
            | wordCount | email                      | countryDropDown                                                                | selectCountry                                           | phone        | element1                                   | nativeName | native                     | quotationEmail             | quotationEmailId     | DownloadQuotePhoneNumber |
            | "1000"    | "engmarket@mailinator.com" | //span[contains(@class,'mat-select-value-text ng-tns-c68-1 ng-star-inserted')] | //span[contains(@class,'in iti-flag ng-star-inserted')] | "9987544787" | //div[@class='error-msg ng-star-inserted'] | "nitin"    | //input[@id='native_name'] | "engmarket@mailinator.com" | //input[@id='email'] | "9987544787"             |

    Scenario Outline: I expect to submit NCF for ENG partner with allowed special characters
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-1-select sl2 top-click-select-editing')]
        When I click on the element //a[@angularticsaction='clickDocumentNotReady']
        When I set <wordCount> to the inputfield //div[@class='input-box']/input
        When I click on the element //div[contains(@class,'enter-word-count')]/button
        When I set <email> to the inputfield //input[@id='email_id']
        When I set <phone> to the inputfield //input[@id='phone_number']
        When I click on the element //div[@id='prospect']//button[@class='btn btn-primary-blue']
        When I click on the element //app-phoenix-plan-items/form/div/div[2]//span[@class='radio-icon']
        When I click on the element //button[@angularticsaction="proceedFromPlanSection"]
        When I click on the element //button[@angularticsaction="proceedFromAddonSection"]
        When I upload <number> files <filePath> at //div[@id="field_file_upload_order"]//input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        When I click on the element //label[@for='field_enq_ex_file_editing_sectionall']
        When I click on the element //mat-select[contains(@data-description,'information-select-document')]
        When I click on the element <typeOfDocument>
        When I click on the element //label[@for='field_enq_ex_formatng_info_no']
        When I click on the element //mat-select[contains(@data-description,'information-select-subject')]
        When I click on the element <subjectArea1>
        When I set <subjectArea2> to the inputfield //input[@id='s-subject_area']
        When I click on the element //mat-label[@for='field_client_profile_ref_source']//parent::label//parent::span//parent::div
        When I click on the element <referenceSource>
        When I click on the element //input[@id="field_term_and_policyfield_term_and_policy"]
        When I click on the element //button[@angularticsaction='Submit attempt']
        Then I expect the url to contain "thank-you"
        Then I expect that element //div[contains(@class,'message-section')]/h3[1] matches the text <successMessage>
        When I clear browser session
        When I refresh the page

        @eng
        Examples:
            | wordCount | email                             | phone                   | number | filePath                           | typeOfDocument                            | subjectArea1                          | subjectArea2 | referenceSource                    | successMessage                        | firstName | lastName |
            | "1214"    | "autobot_9srk7f5w@mailinator.com" | "8987544787"            | 1      | ../../../../data/upload/TEST.docx; | //span[normalize-space()='Annual report'] | //span[normalize-space()='Chemistry'] | "sceario"    | //span[normalize-space()='wechat'] | "We'll start work on it immediately!" | "ninja"   | "tester" |
            | "1224"    | "autobot_9srk7f5w@mailinator.com" | "8@9-#8( 7)$-5.4/4%787" | 1      | ../../../../data/upload/TEST.docx; | //span[normalize-space()='Annual report'] | //span[normalize-space()='Chemistry'] | "sceario"    | //span[normalize-space()='wechat'] | "We'll start work on it immediately!" | "ninja"   | "tester" |

    @regression
    Scenario Outline:  I expect to submit NCF for CHN partner with allowed special characters
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-1-select sl2 top-click-select-editing')]
        When I set <wordCount> to the inputfield //div[@class='input-box']/input
        When I click on the element //div[contains(@class,'enter-word-count')]/button
        When I set <email> to the inputfield //input[@id='email_id']
        When I click on the element <countryDropDown>
        And I click on the element <selectCountry>
        When I set <phone> to the inputfield //input[@id='phone_number']
        When I click on the element //div[@id='prospect']//button[@class='btn btn-primary-blue']
        When I click on the element //app-phoenix-plan-items/form/div/div[2]//span[@class='radio-icon']
        When I click on the element //button[@angularticsaction="proceedFromPlanSection"]
        When I click on the element //button[@angularticsaction="proceedFromAddonSection"]
        When I upload <number> files <filePath> at //div[@id="field_file_upload_order"]//input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        When I click on the element //label[@for='field_enq_ex_file_editing_sectionall']
        When I click on the element //mat-select[contains(@data-description,'information-select-document')]
        When I click on the element <typeOfDocument>
        When I click on the element //label[@for='field_enq_ex_formatng_info_no']
        When I click on the element //mat-select[contains(@data-description,'information-select-subject')]
        When I click on the element <subjectArea1>
        When I click on the element //input[@id='s-subject_area']
        When I click on the element <subjectArea2>
        When I click on the element //mat-label[@for='field_client_profile_ref_source']//parent::label//parent::span//parent::div
        When I click on the element <referenceSource>
        When I click on the element //input[@id="field_term_and_policyfield_term_and_policy"]
        When I click on the element //button[@angularticsaction='Submit attempt']
        Then I expect the url to contain "thank-you"
        Then I expect that element //div[contains(@class,'message-section')]/h3[1] matches the text <successMessage>

        @chn
        Examples:
            | wordCount | email                       | countryDropDown                                             | selectCountry                                 | phone                    | number | filePath                           | typeOfDocument                       | subjectArea1                          | subjectArea2             | referenceSource                      | successMessage             | pinyinName | chineseName |
            | "1000"    | "chnelig100@mailinator.com" | //div[contains(@class,'mat-form-field-infix ng-tns-c65-1')] | //span[@class='cn iti-flag ng-star-inserted'] | "99-8@&!@%^754 478/ 71"  | 1      | ../../../../data/upload/TEST.docx; | //span[normalize-space()='会议论文'] | //span[normalize-space()='Chemistry'] | //div[text()='Colloids'] | //span[normalize-space()='期刊推荐'] | "我们将立即为您启动服务。" | "您启动服" | "启动服"    |
            | "1000"    | "chnelig101@mailinator.com" | //div[contains(@class,'mat-form-field-infix ng-tns-c65-1')] | //span[@class='cn iti-flag ng-star-inserted'] | "^-(9)98(+7)-54.4.787/2" | 1      | ../../../../data/upload/TEST.docx; | //span[normalize-space()='会议论文'] | //span[normalize-space()='Chemistry'] | //div[text()='Colloids'] | //span[normalize-space()='期刊推荐'] | "我们将立即为您启动服务。" | "您启动服" | "启动服"    |

    @regression
    Scenario Outline: I expect to submit NCF for JPN partner with allowed special characters
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-1-select sl2 top-click-select-editing')]
        When I set <wordCount> to the inputfield //div[@class='input-box']/input
        When I click on the element //div[contains(@class,'enter-word-count')]/button
        When I click on the element //app-phoenix-plan-items/form/div/div[2]//span[@class='radio-icon']
        When I click on the element //button[@angularticsaction="proceedFromPlanSection"]
        When I click on the element //button[@angularticsaction="proceedFromAddonSection"]
        When I set <firstName> to the inputfield //input[@id='field_client_profile_firstname']
        When I set <lastName> to the inputfield //input[@id='field_client_profile_lastname']
        When I set <nativeFirstName> to the inputfield //input[@id='field_client_profile_native_firstName']
        When I set <nativeLastName> to the inputfield //input[@id='field_client_profile_native_lastName']
        When I set <email> to the inputfield //input[@id='field_client_profile_pri_email']
        When I click on the element <countryDropDown>
        And I click on the element <selectCountry>
        When I set <phone> to the inputfield //input[@id='field_client_profile_primary_ph-number']
        When I set <department> to the inputfield //input[@id='field_client_profile_department']
        When I set <organization> to the inputfield //input[@id='field_client_profile_org']
        When I click on the element //mat-label[@for='field_cp_job_description']//parent::label//parent::span//parent::div
        When I click on the element <jobDescriptionOption>
        When I upload 1 files <filePath> at //div[@id="field_file_upload_order"]//input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        When I click on the element //label[@for='field_enq_ex_file_editing_sectionall']
        When I click on the element //mat-select[contains(@data-description,'information-select-document')]
        When I click on the element <typeOfDocument>
        When I click on the element //label[@for='field_enq_ex_formatng_info_no']
        When I click on the element //mat-select[contains(@data-description,'information-select-subject')]
        When I click on the element <subjectArea1>
        When I click on the element //input[@id='s-subject_area']
        When I click on the element <subjectArea2>
        When I click on the element //mat-label[@for='field_client_profile_ref_source']//parent::label//parent::span//parent::div
        When I click on the element <referenceSource>
        When I click on the element //button[@angularticsaction='Submit attempt']
        Then I expect the url to contain "thank-you"
        Then I expect that element //div[contains(@class,'message-section')]/h3[1] matches the text <successMessage>
        When I clear browser session
        When I refresh the page

        @jpn
        Examples:
            | wordCount | firstName | lastName | nativeFirstName | nativeLastName | email                | countryDropDown                                           | selectCountry                                               | phone                  | department    | organization   | jobDescriptionOption                   | filePath                           | typeOfDocument                                            | subjectArea1                          | subjectArea2             | referenceSource                    | successMessage             |
            | "5000"    | "fname"   | "lname"  | "nfname"        | "nlname"       | "jpnuser1@gmail.com" | //div[contains(@class,'mat-select-trigger ng-tns-c68-9')] | //span[@class='iti-flag jp ng-star-inserted']//parent::span | "198@&!@%75447871"     | "department1" | "organization" | //span[normalize-space()='非常勤講師'] | ../../../../data/upload/TEST.docx; | //span[normalize-space()='研究論文/ジャーナル投稿用論文'] | //span[normalize-space()='Chemistry'] | //div[text()='Colloids'] | //span[normalize-space()='Google'] | "すぐに作業を開始します。" |
            | "5001"    | "fname"   | "lname"  | "nfname"        | "nlname"       | "jpnuser2@gmail.com" | //div[contains(@class,'mat-select-trigger ng-tns-c68-9')] | //span[@class='iti-flag jp ng-star-inserted']//parent::span | "^-2987-)5+(44)./7872" | "department2" | "organization" | //span[normalize-space()='非常勤講師'] | ../../../../data/upload/TEST.docx; | //span[normalize-space()='研究論文/ジャーナル投稿用論文'] | //span[normalize-space()='Chemistry'] | //div[text()='Colloids'] | //span[normalize-space()='Google'] | "すぐに作業を開始します。" |

