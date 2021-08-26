# @author Ninad Patkar

Feature: New User order form submission for Scientific Editing

    Background: I am on new user form
        Given I open the eos "/order/ncf" and wait for load

    @sanity
    Scenario Outline: I expect to submit NCF for Scientific editing in wc loop for ENG partner
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-102-select sl2 top-click-select-editing')]
        When I click on the element //a[@angularticsaction='clickDocumentNotReady']
        When I set <wordCount> to the inputfield //div[@class='input-box']/input
        When I click on the element //div[contains(@class,'enter-word-count')]/button
        When I set <email> to the inputfield //input[@id='email_id']
        When I set <phone> to the inputfield //input[@id='phone_number']
        When I click on the element //div[@id='prospect']//button[@class='btn btn-primary-blue']
        When I click on the element //app-phoenix-plan-items/form/div/div[3]//span[@class='radio-icon']
        When I click on the element //button[@angularticsaction="proceedFromPlanSection"]
        When I click on the element //button[@angularticsaction="proceedFromAddonSection"]
        When I upload <number> files <file path> at //div[@id="field_file_upload_order"]//input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        When I click on the element //mat-select[contains(@data-description,'information-select-document')]
        When I click on the element <Type of Document>
        When I click on the element //label[@for='field_enq_ex_formatng_info_no']
        When I click on the element //mat-select[contains(@data-description,'information-select-subject')]
        When I click on the element <subject area1>
        When I click on the element //input[@id='s-subject_area']
        When I click on the element <subject area2>
        When I click on the element //mat-label[@for='field_client_profile_ref_source']//parent::label//parent::span//parent::div
        When I click on the element <reference source>
        When I click on the element //input[@id="field_term_and_policyfield_term_and_policy"]
        When I click on the element //button[@angularticsaction='Submit attempt']
        Then I expect the url to contain "thank-you"
        Then I expect that element //div[contains(@class,'message-section')]/h3[1] matches the text <Success message>

        @eng
        Examples:
            | wordCount | email                    | phone        | number | file path                          | Type of Document                          | subject area1                         | subject area2            | reference source                   | Success message                       |
            | "5000"    | "enguser@mailinator.com" | "9999999999" | 1      | ../../../../data/upload/TEST.docx; | //span[normalize-space()='Annual report'] | //span[normalize-space()='Chemistry'] | //div[text()='Colloids'] | //span[normalize-space()='Google'] | "We'll start work on it immediately!" |

    @sanity
    Scenario Outline: I expect to submit NCF for Scientific editing in wc loop for CHN partner
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-102-select sl2 top-click-select-editing')]
        When I set <wordCount> to the inputfield //div[@class='input-box']/input
        When I click on the element //div[contains(@class,'enter-word-count')]/button
        When I set <email> to the inputfield //input[@id='email_id']
        When I set <phone> to the inputfield //input[@id='phone_number']
        When I click on the element //div[@id='prospect']//button[@class='btn btn-primary-blue']
        When I click on the element //app-phoenix-plan-items/form/div/div[3]//span[@class='radio-icon']
        When I click on the element //button[@angularticsaction="proceedFromPlanSection"]
        When I click on the element //button[@angularticsaction="proceedFromAddonSection"]
        When I upload <number> files <file path> at //div[@id="field_file_upload_order"]//input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        When I click on the element //mat-select[contains(@data-description,'information-select-document')]
        When I click on the element <Type of Document>
        When I click on the element //label[@for='field_enq_ex_formatng_info_no']
        When I click on the element //mat-select[contains(@data-description,'information-select-subject')]
        When I click on the element <subject area1>
        When I click on the element //input[@id='s-subject_area']
        When I click on the element <subject area2>
        When I click on the element //mat-label[@for='field_client_profile_ref_source']//parent::label//parent::span//parent::div
        When I click on the element <reference source>
        When I click on the element //input[@id="field_term_and_policyfield_term_and_policy"]
        When I click on the element //button[@angularticsaction='Submit attempt']
        Then I expect the url to contain "thank-you"
        Then I expect that element //div[contains(@class,'message-section')]/h3[1] matches the text <Success message>

        @chn
        Examples:
            | wordCount | email                    | phone         | number | file path                          | Type of Document                     | subject area1                         | subject area2            | reference source                     | Success message            |
            | "5000"    | "chnelig@mailinator.com" | "99999999999" | 1      | ../../../../data/upload/TEST.docx; | //span[normalize-space()='会议论文'] | //span[normalize-space()='Chemistry'] | //div[text()='Colloids'] | //span[normalize-space()='期刊推荐'] | "我们将立即为您启动服务。" |

    @sanity
    Scenario Outline: I expect to submit NCF for Scientific editing in wc loop for JPN partner
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-102-select sl2 top-click-select-editing')]
        When I set <wordCount> to the inputfield //div[@class='input-box']/input
        When I click on the element //div[contains(@class,'enter-word-count')]/button
        When I click on the element //app-phoenix-plan-items/form/div/div[3]//span[@class='radio-icon']
        When I click on the element //button[@angularticsaction="proceedFromPlanSection"]
        When I click on the element //button[@angularticsaction="proceedFromAddonSection"]
        When I set <first name> to the inputfield //input[@id='field_client_profile_firstname']
        When I set <last name> to the inputfield //input[@id='field_client_profile_lastname']
        When I set <native first name> to the inputfield //input[@id='field_client_profile_native_firstName']
        When I set <native last name> to the inputfield //input[@id='field_client_profile_native_lastName']
        When I set <email> to the inputfield //input[@id='field_client_profile_pri_email']
        When I set <phone> to the inputfield //input[@id='field_client_profile_primary_ph-number']
        When I set <department> to the inputfield //input[@id='field_client_profile_department']
        When I set <organization> to the inputfield //input[@id='field_client_profile_org']
        When I click on the element //mat-label[@for='field_cp_job_description']//parent::label//parent::span//parent::div
        When I click on the element <job description option>
        When I upload 1 files <file path> at //div[@id="field_file_upload_order"]//input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        When I click on the element //mat-select[contains(@data-description,'information-select-document')]
        When I click on the element <Type of Document>
        When I click on the element //label[@for='field_enq_ex_formatng_info_no']
        When I click on the element //mat-select[contains(@data-description,'information-select-subject')]
        When I click on the element <subject area1>
        When I click on the element //input[@id='s-subject_area']
        When I click on the element <subject area2>
        When I click on the element //mat-label[@for='field_client_profile_ref_source']//parent::label//parent::span//parent::div
        When I click on the element <reference source>
        When I click on the element //button[@angularticsaction='Submit attempt']
        Then I expect the url to contain "thank-you"
        Then I expect that element //div[contains(@class,'message-section')]/h3[1] matches the text <Success message>

        @jpn
        Examples:
            | wordCount | first name | last name | native first name | native last name | email                    | phone        | department   | organization   | job description option                 | file path                          | Type of Document                                          | subject area1                         | subject area2            | reference source                   | Success message            |
            | "5000"    | "fname"    | "lname"   | "nfname"          | "nlname"         | "jpnuser@mailinator.com" | "9999999999" | "department" | "organization" | //span[normalize-space()='非常勤講師'] | ../../../../data/upload/TEST.docx; | //span[normalize-space()='研究論文/ジャーナル投稿用論文'] | //span[normalize-space()='Chemistry'] | //div[text()='Colloids'] | //span[normalize-space()='Google'] | "すぐに作業を開始します。" |

    @sanity
    Scenario Outline: I expect to submit NCF for Scientific editing in wc loop for KOR partner
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //button[contains(@data-description,'2-102-select') and @angularticslabel='top cta']
        When I set <wordCount> to the inputfield //div[@class='input-box']/input
        When I click on the element //div[contains(@class,'enter-word-count')]/button
        When I click on the element /html/body/app-root/ng-component/div/section/div/ng-component/div/div/div[2]/div/div/div[1]/div/div[2]/app-phoenix-plan/div/div/app-phoenix-plan-items/form/div[1]/div[3]/div[1]/div/div/label/span
        When I click on the element //button[@angularticsaction="proceedFromPlanSection"]
        When I click on the element //button[@angularticsaction="proceedFromAddonSection"]
        When I set <first name> to the inputfield //input[@id='field_client_profile_firstname']
        When I set <last name> to the inputfield //input[@id='field_client_profile_lastname']
        When I set <native last name> to the inputfield //input[@id='field_client_profile_native_lastName']
        When I set <email> to the inputfield //input[@id='field_client_profile_pri_email']
        When I set <phone> to the inputfield //input[@id='field_client_profile_primary_ph-number']
        When I set <department> to the inputfield //input[@id='field_client_profile_department']
        When I set <organization> to the inputfield //input[@id='field_client_profile_org']
        When I click on the element //mat-label[@for='field_cp_job_description']//parent::label//parent::span//parent::div
        When I click on the element <job description option>
        When I upload 1 files <file path> at //div[@id="field_file_upload_order"]//input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        When I click on the element //mat-select[contains(@data-description,'information-select-document')]
        When I click on the element <Type of Document>
        When I click on the element //label[@for='field_enq_ex_formatng_info_no']
        When I click on the element //mat-select[contains(@data-description,'information-select-subject')]
        When I click on the element <subject area1>
        When I click on the element //input[@id='s-subject_area']
        When I click on the element <subject area2>
        When I click on the element //mat-label[@for='field_client_profile_ref_source']//parent::label//parent::span//parent::div
        When I click on the element <reference source>
        When I set <payerName> to the inputfield //input[@id='field_pay_pref_lastname']
        When I set <payerAddress> to the inputfield //textarea[@id='field_pay_pref_payment_addr-street_textarea']
        When I click on the element //button[@angularticsaction='Submit attempt']
        Then I expect the url to contain "thank-you"
        Then I expect that element //div[contains(@class,'message-section')]/h3[1] matches the text <Success message>

        @kor
        Examples:
            | wordCount | first name | last name | native last name | email                       | phone        | department   | organization   | job description option           | file path                          | Type of Document                              | subject area1                         | subject area2            | reference source                    | payerName    | payerAddress        | Success message                                                                                                    |
            | "5000"    | "fname"    | "lname"   | "nlname"         | "koruser123@mailinator.com" | "9999999999" | "department" | "organization" | //span[normalize-space()='강사'] | ../../../../data/upload/TEST.docx; | //span[normalize-space()='컨퍼런스 발표자료'] | //span[normalize-space()='Chemistry'] | //div[text()='Colloids'] | //span[normalize-space()='PubSURE'] | "Payer name" | "Payer address ABC" | "영업시간 내에 작업과 관련되는 사항이 이메일로 발송될예정이며, 메일함과 스팸메일함을 모두 확인해 주시기 바랍니다." |


    @sanity
    Scenario Outline: I expect to submit NCF for Scientific editing in skip wc send quote loop for ENG partner
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-102-select sl2 top-click-select-editing')]
        When I click on the element //a[@angularticsaction='clickDocumentNotReady']
        When I click on the element //a[@angularticsaction='iDontKnowWordcount']
        When I set <email> to the inputfield //input[@id='email_id']
        When I set <phone> to the inputfield //input[@id='phone_number']
        When I click on the element //div[@id='prospect']//button[@class='btn btn-primary-blue']
        When I click on the element //app-phoenix-plan-items/form/div/div[3]//span[@class='radio-icon']
        When I click on the element //button[@angularticsaction="proceedFromPlanSection"]
        When I click on the element //button[@angularticsaction="proceedFromAddonSection"]
        When I upload <number> files <file path> at //div[@id="field_file_upload_order"]//input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        When I click on the element //label[@for='field_enq_ex_can_we_start_no']
        When I click on the element //mat-select[contains(@data-description,'information-select-document')]
        When I click on the element <Type of Document>
        When I click on the element //label[@for='field_enq_ex_formatng_info_no']
        When I click on the element //mat-select[contains(@data-description,'information-select-subject')]
        When I click on the element <subject area1>
        When I click on the element //input[@id='s-subject_area']
        When I click on the element <subject area2>
        When I click on the element //mat-label[@for='field_client_profile_ref_source']//parent::label//parent::span//parent::div
        When I click on the element <reference source>
        When I click on the element //button[@angularticsaction='Submit attempt']
        Then I expect the url to contain "thank-you"
        Then I expect that element //div[contains(@class,'message-section')]/h3[1] matches the text <Success message>

        @eng
        Examples:
            | email                    | phone        | number | file path                          | Type of Document                          | subject area1                         | subject area2            | reference source                   | Success message                                                          |
            | "enguser@mailinator.com" | "9999999999" | 1      | ../../../../data/upload/TEST.docx; | //span[normalize-space()='Annual report'] | //span[normalize-space()='Chemistry'] | //div[text()='Colloids'] | //span[normalize-space()='Google'] | "Our team will get back to you with a quotation within 1 business hour!" |

    @sanity
    Scenario Outline: I expect to submit NCF for Scientific editing in skip wc send quote loop for CHN partner
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-102-select sl2 top-click-select-editing')]
        When I click on the element //a[@angularticsaction='iDontKnowWordcount']
        When I set <email> to the inputfield //input[@id='email_id']
        When I set <phone> to the inputfield //input[@id='phone_number']
        When I click on the element //div[@id='prospect']//button[@class='btn btn-primary-blue']
        When I click on the element //app-phoenix-plan-items/form/div/div[3]//span[@class='radio-icon']
        When I click on the element //button[@angularticsaction="proceedFromPlanSection"]
        When I click on the element //button[@angularticsaction="proceedFromAddonSection"]
        When I upload <number> files <file path> at //div[@id="field_file_upload_order"]//input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        When I click on the element //mat-select[contains(@data-description,'information-select-document')]
        When I click on the element <Type of Document>
        When I click on the element //label[@for='field_enq_ex_formatng_info_no']
        When I click on the element //mat-select[contains(@data-description,'information-select-subject')]
        When I click on the element <subject area1>
        When I click on the element //input[@id='s-subject_area']
        When I click on the element <subject area2>
        When I click on the element //mat-label[@for='field_client_profile_ref_source']//parent::label//parent::span//parent::div
        When I click on the element <reference source>
        When I click on the element //button[@angularticsaction='Submit attempt']
        Then I expect the url to contain "thank-you"
        Then I expect that element //div[contains(@class,'message-section')]/h3[1] matches the text <Success message>

        @chn
        Examples:
            | email                    | phone        | number | file path                          | Type of Document                     | subject area1                         | subject area2            | reference source                     | Success message            |
            | "chnelig@mailinator.com" | "9999999999" | 1      | ../../../../data/upload/TEST.docx; | //span[normalize-space()='会议论文'] | //span[normalize-space()='Chemistry'] | //div[text()='Colloids'] | //span[normalize-space()='期刊推荐'] | "我们将立即为您启动服务。" |

    @sanity
    Scenario Outline: I expect to submit NCF for Scientific editing in skip wc send quote loop for JPN partner
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-102-select sl2 top-click-select-editing')]
        When I click on the element //a[@angularticsaction='iDontKnowWordcount']
        When I click on the element //app-phoenix-plan-items/form/div/div[3]//span[@class='radio-icon']
        When I click on the element //button[@angularticsaction="proceedFromPlanSection"]
        When I click on the element //button[@angularticsaction="proceedFromAddonSection"]
        When I set <first name> to the inputfield //input[@id='field_client_profile_firstname']
        When I set <last name> to the inputfield //input[@id='field_client_profile_lastname']
        When I set <native first name> to the inputfield //input[@id='field_client_profile_native_firstName']
        When I set <native last name> to the inputfield //input[@id='field_client_profile_native_lastName']
        When I set <email> to the inputfield //input[@id='field_client_profile_pri_email']
        When I set <phone> to the inputfield //input[@id='field_client_profile_primary_ph-number']
        When I set <department> to the inputfield //input[@id='field_client_profile_department']
        When I set <organization> to the inputfield //input[@id='field_client_profile_org']
        When I click on the element //mat-label[@for='field_cp_job_description']//parent::label//parent::span//parent::div
        When I click on the element <job description option>
        When I upload <number> files <file path> at //div[@id="field_file_upload_order"]//input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        When I click on the element //label[@for='field_enq_ex_can_we_start_no']
        When I click on the element //mat-select[contains(@data-description,'information-select-document')]
        When I click on the element <Type of Document>
        When I click on the element //label[@for='field_enq_ex_formatng_info_no']
        When I click on the element //mat-select[contains(@data-description,'information-select-subject')]
        When I click on the element <subject area1>
        When I click on the element //input[@id='s-subject_area']
        When I click on the element <subject area2>
        When I click on the element //mat-label[@for='field_client_profile_ref_source']//parent::label//parent::span//parent::div
        When I click on the element <reference source>
        When I click on the element //button[@angularticsaction='Submit attempt']
        Then I expect the url to contain "thank-you"
        Then I expect that element //div[contains(@class,'message-section')]/h3[1] matches the text <Success message>

        @jpn
        Examples:
            | first name | last name | native first name | native last name | email                    | phone        | department   | organization   | job description option                 | number | file path                          | Type of Document                                          | subject area1                         | subject area2            | reference source                   | Success message                                                                   |
            | "fname"    | "lname"   | "nfname"          | "nlname"         | "jpnuser@mailinator.com" | "9999999999" | "department" | "organization" | //span[normalize-space()='非常勤講師'] | 1      | ../../../../data/upload/TEST.docx; | //span[normalize-space()='研究論文/ジャーナル投稿用論文'] | //span[normalize-space()='Chemistry'] | //div[text()='Colloids'] | //span[normalize-space()='Google'] | "エディテージのカスタマーサポートが、1営業時間内にお見積と一緒にご連絡致します。" |

    @sanity
    Scenario Outline: I expect to submit NCF for Scientific editing in skip wc send quote loop for KOR partner
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //button[contains(@data-description,'2-102-select') and @angularticslabel='top cta']
        When I click on the element //a[@angularticsaction='iDontKnowWordcount']
        When I click on the element //app-phoenix-plan-items/form/div/div[3]//span[@class='radio-icon']
        When I click on the element //button[@angularticsaction="proceedFromPlanSection"]
        When I click on the element //button[@angularticsaction="proceedFromAddonSection"]
        When I set <first name> to the inputfield //input[@id='field_client_profile_firstname']
        When I set <last name> to the inputfield //input[@id='field_client_profile_lastname']
        When I set <native last name> to the inputfield //input[@id='field_client_profile_native_lastName']
        When I set <email> to the inputfield //input[@id='field_client_profile_pri_email']
        When I set <phone> to the inputfield //input[@id='field_client_profile_primary_ph-number']
        When I set <department> to the inputfield //input[@id='field_client_profile_department']
        When I set <organization> to the inputfield //input[@id='field_client_profile_org']
        When I click on the element //mat-label[@for='field_cp_job_description']//parent::label//parent::span//parent::div
        When I click on the element <job description option>
        When I upload 1 files <file path> at //div[@id="field_file_upload_order"]//input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        When I click on the element //mat-select[contains(@data-description,'information-select-document')]
        When I click on the element <Type of Document>
        When I click on the element //label[@for='field_enq_ex_can_we_start_no']
        When I click on the element //label[@for='field_enq_ex_formatng_info_no']
        When I click on the element //mat-select[contains(@data-description,'information-select-subject')]
        When I click on the element <subject area1>
        When I click on the element //input[@id='s-subject_area']
        When I click on the element <subject area2>
        When I click on the element //mat-label[@for='field_client_profile_ref_source']//parent::label//parent::span//parent::div
        When I click on the element <reference source>
        When I set <payerName> to the inputfield //input[@id='field_pay_pref_lastname']
        When I set <payerAddress> to the inputfield //textarea[@id='field_pay_pref_payment_addr-street_textarea']
        When I click on the element //button[@angularticsaction='Submit attempt']
        Then I expect the url to contain "thank-you"
        Then I expect that element //div[contains(@class,'message-section')]/h3[1] matches the text <Success message>

        @kor
        Examples:
            | first name | last name | native last name | email                    | phone        | department   | organization   | job description option           | file path                          | Type of Document                              | subject area1                         | subject area2            | reference source                    | payerName    | payerAddress        | Success message                                       |
            | "fname"    | "lname"   | "nlname"         | "koruser@mailinator.com" | "9999999999" | "department" | "organization" | //span[normalize-space()='강사'] | ../../../../data/upload/TEST.docx; | //span[normalize-space()='컨퍼런스 발표자료'] | //span[normalize-space()='Chemistry'] | //div[text()='Colloids'] | //span[normalize-space()='PubSURE'] | "Payer name" | "Payer address ABC" | "근무시간 기준 1시간 이내로 견적을 회신드리겠습니다." |


    @sanity
    Scenario Outline: I expect to submit NCF for Scientific editing in skip wc start job loop for ENG partner
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-102-select sl2 top-click-select-editing')]
        When I click on the element //a[@angularticsaction='clickDocumentNotReady']
        When I click on the element //a[@angularticsaction='iDontKnowWordcount']
        When I set <email> to the inputfield //input[@id='email_id']
        When I set <phone> to the inputfield //input[@id='phone_number']
        When I click on the element //div[@id='prospect']//button[@class='btn btn-primary-blue']
        When I click on the element //app-phoenix-plan-items/form/div/div[3]//span[@class='radio-icon']
        When I click on the element //button[@angularticsaction="proceedFromPlanSection"]
        When I click on the element //button[@angularticsaction="proceedFromAddonSection"]
        When I upload <number> files <file path> at //div[@id="field_file_upload_order"]//input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        When I click on the element //label[@for='field_enq_ex_can_we_start_yes']
        When I click on the element //mat-select[contains(@data-description,'information-select-document')]
        When I click on the element <Type of Document>
        When I click on the element //label[@for='field_enq_ex_formatng_info_no']
        When I click on the element //mat-select[contains(@data-description,'information-select-subject')]
        When I click on the element <subject area1>
        When I click on the element //input[@id='s-subject_area']
        When I click on the element <subject area2>
        When I click on the element //mat-label[@for='field_client_profile_ref_source']//parent::label//parent::span//parent::div
        When I click on the element <reference source>
        When I click on the element //button[@angularticsaction='Submit attempt']
        Then I expect the url to contain "thank-you"
        Then I expect that element //div[contains(@class,'message-section')]/h3[1] matches the text <Success message>

        @eng
        Examples:
            | email                    | phone        | number | file path                          | Type of Document                          | subject area1                         | subject area2            | reference source                   | Success message                       |
            | "enguser@mailinator.com" | "9999999999" | 1      | ../../../../data/upload/TEST.docx; | //span[normalize-space()='Annual report'] | //span[normalize-space()='Chemistry'] | //div[text()='Colloids'] | //span[normalize-space()='Google'] | "We'll start work on it immediately!" |

    @sanity
    Scenario Outline: I expect to submit NCF for Scientific editing in skip wc start job loop for CHN partner
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-102-select sl2 top-click-select-editing')]
        When I click on the element //a[@angularticsaction='iDontKnowWordcount']
        When I set <email> to the inputfield //input[@id='email_id']
        When I set <phone> to the inputfield //input[@id='phone_number']
        When I click on the element //div[@id='prospect']//button[@class='btn btn-primary-blue']
        When I click on the element //app-phoenix-plan-items/form/div/div[3]//span[@class='radio-icon']
        When I click on the element //button[@angularticsaction="proceedFromPlanSection"]
        When I click on the element //button[@angularticsaction="proceedFromAddonSection"]
        When I upload <number> files <file path> at //div[@id="field_file_upload_order"]//input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        When I click on the element //mat-select[contains(@data-description,'information-select-document')]
        When I click on the element <Type of Document>
        When I click on the element //label[@for='field_enq_ex_formatng_info_no']
        When I click on the element //mat-select[contains(@data-description,'information-select-subject')]
        When I click on the element <subject area1>
        When I click on the element //input[@id='s-subject_area']
        When I click on the element <subject area2>
        When I click on the element //mat-label[@for='field_client_profile_ref_source']//parent::label//parent::span//parent::div
        When I click on the element <reference source>
        When I click on the element //button[@angularticsaction='Submit attempt']
        Then I expect the url to contain "thank-you"
        Then I expect that element //div[contains(@class,'message-section')]/h3[1] matches the text <Success message>

        @chn
        Examples:
            | email                    | phone        | number | file path                          | Type of Document                     | subject area1                         | subject area2            | reference source                     | Success message            |
            | "chnelig@mailinator.com" | "9999999999" | 1      | ../../../../data/upload/TEST.docx; | //span[normalize-space()='会议论文'] | //span[normalize-space()='Chemistry'] | //div[text()='Colloids'] | //span[normalize-space()='期刊推荐'] | "我们将立即为您启动服务。" |

    @sanity
    Scenario Outline: I expect to submit NCF for Scientific editing in skip wc start job loop for JPN partner
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-102-select sl2 top-click-select-editing')]
        When I click on the element //a[@angularticsaction='iDontKnowWordcount']
        When I click on the element //app-phoenix-plan-items/form/div/div[3]//span[@class='radio-icon']
        When I click on the element //button[@angularticsaction="proceedFromPlanSection"]
        When I click on the element //button[@angularticsaction="proceedFromAddonSection"]
        When I set <first name> to the inputfield //input[@id='field_client_profile_firstname']
        When I set <last name> to the inputfield //input[@id='field_client_profile_lastname']
        When I set <native first name> to the inputfield //input[@id='field_client_profile_native_firstName']
        When I set <native last name> to the inputfield //input[@id='field_client_profile_native_lastName']
        When I set <email> to the inputfield //input[@id='field_client_profile_pri_email']
        When I set <phone> to the inputfield //input[@id='field_client_profile_primary_ph-number']
        When I set <department> to the inputfield //input[@id='field_client_profile_department']
        When I set <organization> to the inputfield //input[@id='field_client_profile_org']
        When I click on the element //mat-label[@for='field_cp_job_description']//parent::label//parent::span//parent::div
        When I click on the element <job description option>
        When I upload <number> files <file path> at //div[@id="field_file_upload_order"]//input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        When I click on the element //label[@for='field_enq_ex_can_we_start_yes']
        When I click on the element //mat-select[contains(@data-description,'information-select-document')]
        When I click on the element <Type of Document>
        When I click on the element //label[@for='field_enq_ex_formatng_info_no']
        When I click on the element //mat-select[contains(@data-description,'information-select-subject')]
        When I click on the element <subject area1>
        When I click on the element //input[@id='s-subject_area']
        When I click on the element <subject area2>
        When I click on the element //mat-label[@for='field_client_profile_ref_source']//parent::label//parent::span//parent::div
        When I click on the element <reference source>
        When I click on the element //button[@angularticsaction='Submit attempt']
        Then I expect the url to contain "thank-you"
        Then I expect that element //div[contains(@class,'message-section')]/h3[1] matches the text <Success message>

        @jpn
        Examples:
            | first name | last name | native first name | native last name | email                    | phone        | department   | organization   | job description option                 | number | file path                          | Type of Document                                          | subject area1                         | subject area2            | reference source                   | Success message            |
            | "fname"    | "lname"   | "nfname"          | "nlname"         | "jpnuser@mailinator.com" | "9999999999" | "department" | "organization" | //span[normalize-space()='非常勤講師'] | 1      | ../../../../data/upload/TEST.docx; | //span[normalize-space()='研究論文/ジャーナル投稿用論文'] | //span[normalize-space()='Chemistry'] | //div[text()='Colloids'] | //span[normalize-space()='Google'] | "すぐに作業を開始します。" |
    @sanity
    Scenario Outline: I expect to submit NCF for Scientific editing in skip wc start job loop for KOR partner
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //button[contains(@data-description,'2-102-select') and @angularticslabel='top cta']
        When I click on the element //a[@angularticsaction='iDontKnowWordcount']
        When I click on the element //app-phoenix-plan-items/form/div/div[3]//span[@class='radio-icon']
        When I click on the element //button[@angularticsaction="proceedFromPlanSection"]
        When I click on the element //button[@angularticsaction="proceedFromAddonSection"]
        When I set <first name> to the inputfield //input[@id='field_client_profile_firstname']
        When I set <last name> to the inputfield //input[@id='field_client_profile_lastname']
        When I set <native last name> to the inputfield //input[@id='field_client_profile_native_lastName']
        When I set <email> to the inputfield //input[@id='field_client_profile_pri_email']
        When I set <phone> to the inputfield //input[@id='field_client_profile_primary_ph-number']
        When I set <department> to the inputfield //input[@id='field_client_profile_department']
        When I set <organization> to the inputfield //input[@id='field_client_profile_org']
        When I click on the element //mat-label[@for='field_cp_job_description']//parent::label//parent::span//parent::div
        When I click on the element <job description option>
        When I upload 1 files <file path> at //div[@id="field_file_upload_order"]//input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        When I click on the element //mat-select[contains(@data-description,'information-select-document')]
        When I click on the element <Type of Document>
        When I click on the element //label[@for='field_enq_ex_can_we_start_yes']
        When I click on the element //label[@for='field_enq_ex_formatng_info_no']
        When I click on the element //mat-select[contains(@data-description,'information-select-subject')]
        When I click on the element <subject area1>
        When I click on the element //input[@id='s-subject_area']
        When I click on the element <subject area2>
        When I click on the element //mat-label[@for='field_client_profile_ref_source']//parent::label//parent::span//parent::div
        When I click on the element <reference source>
        When I set <payerName> to the inputfield //input[@id='field_pay_pref_lastname']
        When I set <payerAddress> to the inputfield //textarea[@id='field_pay_pref_payment_addr-street_textarea']
        When I click on the element //button[@angularticsaction='Submit attempt']
        Then I expect the url to contain "thank-you"
        Then I expect that element //div[contains(@class,'message-section')]/h3[1] matches the text <Success message>


        @kor
        Examples:
            | first name | last name | native last name | email                    | phone        | department   | organization   | job description option           | file path                          | Type of Document                              | subject area1                         | subject area2            | reference source                    | payerName    | payerAddress        | Success message                                                                                                    |
            | "fname"    | "lname"   | "nlname"         | "koruser@mailinator.com" | "9999999999" | "department" | "organization" | //span[normalize-space()='강사'] | ../../../../data/upload/TEST.docx; | //span[normalize-space()='컨퍼런스 발표자료'] | //span[normalize-space()='Chemistry'] | //div[text()='Colloids'] | //span[normalize-space()='PubSURE'] | "Payer name" | "Payer address ABC" | "영업시간 내에 작업과 관련되는 사항이 이메일로 발송될예정이며, 메일함과 스팸메일함을 모두 확인해 주시기 바랍니다." |
