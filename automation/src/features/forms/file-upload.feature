# @author Ninad Patkar

Feature: New User order form file upload

    Background: I am on new user form
        Given I open the eos "/order/ncf" and wait for load

    @sanity
    Scenario Outline: I expect to see word count of the uploaded doc files
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-36-select sl2 top-click-select-editing')]
        When I click on the element //div[contains(@class,'upload-documents')]//a[contains(@class,'upload-documents-link')]
        When I upload <number> files <file path> at //input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        Then I expect files <file name> should be displayed at //li[contains(@class,'qq-upload-success')]/div[@class='file-details']//span[1]
        Then I expect //div[contains(@class,'word-count-calculation-error')] should not be displayed on page
        Then I expect that element //div[contains(@class,'total-word-count')]/span[1] contains the text <word count>
        Then I expect //button[@angularticsaction='proceedFromWcSection'] should be enabled on page
        When I clear browser session

        @chn @jpn @kor
        Examples:
            | number | file path                                                                | file name                | word count |
            | 2      | ../../../../data/upload/TEST.docx;../../../../data/upload/Sample 3.docx; | TEST.docx;Sample 3.docx; | "1640"     |

    @sanity
    Scenario Outline: I expect to see word count of the uploaded doc files for ENG partner
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-36-select sl2 top-click-select-editing')]
        When I upload <number> files <file path> at //input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        Then I expect files <file name> should be displayed at //li[contains(@class,'qq-upload-success')]/div[@class='file-details']//span[1]
        Then I expect //div[contains(@class,'word-count-calculation-error')] should not be displayed on page
        Then I expect that element //div[contains(@class,'total-word-count')]/span[1] contains the text <word count>
        Then I expect //button[@angularticsaction='proceedFromWcSection'] should be enabled on page
        When I clear browser session

        @eng
        Examples:
            | number | file path                                                                | file name                | word count |
            | 2      | ../../../../data/upload/TEST.docx;../../../../data/upload/Sample 3.docx; | TEST.docx;Sample 3.docx; | "1640"     |

    @sanity
    Scenario Outline: I expect not to see word count of other than doc files uploaded
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-36-select sl2 top-click-select-editing')]
        When I click on the element //div[contains(@class,'upload-documents')]//a[contains(@class,'upload-documents-link')]
        When I upload <number> files <file path> at //input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        Then I expect files <file name> should be displayed at //li[contains(@class,'qq-upload-success')]/div[@class='file-details']//span[1]
        Then I expect //div[contains(@class,'word-count-calculation-error')] should be displayed on page
        Then I expect //div[contains(@class,'enter-word-count')]//input[@class='form-control'] should be displayed on page
        Then I expect //button[@angularticsaction='proceedFromWcSection'] should not be enabled on page
        When I clear browser session

        @chn @jpn @kor
        Examples:
            | number | file path                              | file name      |
            | 1      | ../../../../data/upload/Test_text.txt; | Test_text.txt; |

    @sanity
    Scenario Outline: I expect not to see word count of other than doc files uploaded for ENG partner
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-36-select sl2 top-click-select-editing')]
        When I upload <number> files <file path> at //input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        Then I expect files <file name> should be displayed at //li[contains(@class,'qq-upload-success')]/div[@class='file-details']//span[1]
        Then I expect //div[contains(@class,'word-count-calculation-error')] should be displayed on page
        Then I expect //div[contains(@class,'enter-word-count')]//input[@class='form-control'] should be displayed on page
        Then I expect //button[@angularticsaction='proceedFromWcSection'] should not be enabled on page
        When I clear browser session

        @eng
        Examples:
            | number | file path                              | file name      |
            | 1      | ../../../../data/upload/Test_text.txt; | Test_text.txt; |

    Scenario Outline: I expect to see word count of the uploaded file with special characters in name
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-36-select sl2 top-click-select-editing')]
        When I click on the element //div[contains(@class,'upload-documents')]//a[contains(@class,'upload-documents-link')]
        When I upload <number> files <file path> at //input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        Then I expect files <file name> should be displayed at //li[contains(@class,'qq-upload-success')]/div[@class='file-details']//span[1]
        Then I expect //div[contains(@class,'word-count-calculation-error')] should not be displayed on page
        Then I expect that element //div[contains(@class,'total-word-count')]/span[1] contains the text <word count>
        Then I expect //button[@angularticsaction='proceedFromWcSection'] should be enabled on page
        When I clear browser session

        @chn @jpn @kor
        Examples:
            | number | file path                                | file name        | word count |
            | 1      | ../../../../data/upload/TEST!@$=+..docx; | TEST!@$=+..docx; | "1"        |

    Scenario Outline: I expect to see word count of the uploaded file with special characters in name for ENG partner
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-36-select sl2 top-click-select-editing')]
        When I upload <number> files <file path> at //input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        Then I expect files <file name> should be displayed at //li[contains(@class,'qq-upload-success')]/div[@class='file-details']//span[1]
        Then I expect //div[contains(@class,'word-count-calculation-error')] should not be displayed on page
        Then I expect that element //div[contains(@class,'total-word-count')]/span[1] contains the text <word count>
        Then I expect //button[@angularticsaction='proceedFromWcSection'] should be enabled on page
        When I clear browser session

        @eng
        Examples:
            | number | file path                                | file name        | word count |
            | 1      | ../../../../data/upload/TEST!@$=+..docx; | TEST!@$=+..docx; | "1"        |

    Scenario Outline: I expect to see word count of the uploaded files with foreign characters in name
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-36-select sl2 top-click-select-editing')]
        When I click on the element //div[contains(@class,'upload-documents')]//a[contains(@class,'upload-documents-link')]
        When I upload <number> files <file path> at //input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        Then I expect files <file name> should be displayed at //li[contains(@class,'qq-upload-success')]/div[@class='file-details']//span[1]
        Then I expect //div[contains(@class,'word-count-calculation-error')] should not be displayed on page
        Then I expect that element //div[contains(@class,'total-word-count')]/span[1] contains the text <word count>
        Then I expect //button[@angularticsaction='proceedFromWcSection'] should be enabled on page
        When I clear browser session

        @pending-chn @pending-jpn @pending-kor
        Examples:
            | number | file path                                         | file name                 | word count |
            | 1      | ../../../../data/upload/TEST ホワイトボード.docx; | TEST ホワイトボード.docx; | "11"       |

    Scenario Outline: I expect to see word count of the uploaded files with foreign characters in name for ENG partner
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-36-select sl2 top-click-select-editing')]
        When I upload <number> files <file path> at //input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        Then I expect files <file name> should be displayed at //li[contains(@class,'qq-upload-success')]/div[@class='file-details']//span[1]
        Then I expect //div[contains(@class,'word-count-calculation-error')] should not be displayed on page
        Then I expect that element //div[contains(@class,'total-word-count')]/span[1] contains the text <word count>
        Then I expect //button[@angularticsaction='proceedFromWcSection'] should be enabled on page
        When I clear browser session

        @pending-eng
        Examples:
            | number | file path                                         | file name                 | word count |
            | 1      | ../../../../data/upload/TEST ホワイトボード.docx; | TEST ホワイトボード.docx; | "11"       |

    @sanity
    Scenario Outline: I expect to see alert message when invalid file is uploaded
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-36-select sl2 top-click-select-editing')]
        When I click on the element //div[contains(@class,'upload-documents')]//a[contains(@class,'upload-documents-link')]
        When I upload 1 files <file path> at //input[@name='qqfile']
        Then I expect a popup modal is opened with message <message>
        When I accept alertBox
        When I clear browser session

        @chn @jpn @kor
        Examples:
            | file path                           | message                                                  |
            | ../../../../data/upload/new 1.html; | new 1.html has an invalid extension. Valid extension(s): |

    @sanity
    Scenario Outline: I expect to see alert message when invalid file is uploaded for ENG partner
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-36-select sl2 top-click-select-editing')]
        When I upload 1 files <file path> at //input[@name='qqfile']
        Then I expect a popup modal is opened with message <message>
        When I clear browser session

        @eng
        Examples:
            | file path                           | message                                                  |
            | ../../../../data/upload/new 1.html; | new 1.html has an invalid extension. Valid extension(s): |

    Scenario Outline: I expect to see alert message when empty file is uploaded
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-36-select sl2 top-click-select-editing')]
        When I click on the element //div[contains(@class,'upload-documents')]//a[contains(@class,'upload-documents-link')]
        When I upload 1 files <file path> at //input[@name='qqfile']
        Then I expect a popup modal is opened with message <message>
        When I accept alertBox
        When I clear browser session

        @chn @jpn @kor
        Examples:
            | file path                               | message                                                        |
            | ../../../../data/upload/Empty_Test.txt; | Empty_Test.txt is empty, please select files again without it. |

    Scenario Outline: I expect to see alert message when empty file is uploaded for ENG partner
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-36-select sl2 top-click-select-editing')]
        When I upload 1 files <file path> at //input[@name='qqfile']
        Then I expect a popup modal is opened with message <message>
        When I clear browser session

        @eng
        Examples:
            | file path                               | message                                                        |
            | ../../../../data/upload/Empty_Test.txt; | Empty_Test.txt is empty, please select files again without it. |


    @sanity
    Scenario Outline: I expect to see word count on changing exclude section
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-36-select sl2 top-click-select-editing')]
        When I click on the element //div[contains(@class,'upload-documents')]//a[contains(@class,'upload-documents-link')]
        When I upload <number> files <file path> at //input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        Then I expect files <file name> should be displayed at //li[contains(@class,'qq-upload-success')]/div[@class='file-details']//span[1]
        When I click on the element //span[@id='edit-document-field_file_upload_order']/a
        When I click on the element //label[@for='exclude_field_file_upload_order_references']/span
        When I click on the element //label[@for='exclude_field_file_upload_order_tables']/span
        When I click on the element //div[@class='modal-dialog']//button[@class='btn btn-primary-blue']
        Then I expect that element //div[contains(@class,'total-word-count')]/span[1] contains the text <before word count>
        When I clear browser session

        @chn @jpn @kor
        Examples:
            | number | file path                                                                | file name                | before word count | after wprd count |
            | 2      | ../../../../data/upload/TEST.docx;../../../../data/upload/Sample 3.docx; | TEST.docx;Sample 3.docx; | "1640"            | "1640"           |

    @sanity
    Scenario Outline: I expect to see word count on changing exclude section for ENG partner
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-36-select sl2 top-click-select-editing')]
        When I upload <number> files <file path> at //input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        Then I expect files <file name> should be displayed at //li[contains(@class,'qq-upload-success')]/div[@class='file-details']//span[1]
        When I click on the element //span[@id='edit-document-field_file_upload_order']/a
        When I click on the element //label[@for='exclude_field_file_upload_order_references']/span
        When I click on the element //label[@for='exclude_field_file_upload_order_tables']/span
        When I click on the element //div[@class='modal-dialog']//button[@class='btn btn-primary-blue']
        Then I expect that element //div[contains(@class,'total-word-count')]/span[1] contains the text <before word count>
        When I clear browser session

        @eng
        Examples:
            | number | file path                                                                | file name                | before word count | after wprd count |
            | 2      | ../../../../data/upload/TEST.docx;../../../../data/upload/Sample 3.docx; | TEST.docx;Sample 3.docx; | "1640"            | "1640"           |


    @sanity
    Scenario Outline: I expect to see file upload option when all uploaded files are removed
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-36-select sl2 top-click-select-editing')]
        When I click on the element //div[contains(@class,'upload-documents')]//a[contains(@class,'upload-documents-link')]
        When I upload <number> files <file path> at //input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        Then I expect files <file name> should be displayed at //li[contains(@class,'qq-upload-success')]/div[@class='file-details']//span[1]
        When I remove <number> files <file name>
        Then I expect //input[@name='qqfile'] should be enabled on page
        Then I expect //div[contains(@class,'document-not-ready')]//a should be displayed on page
        When I clear browser session

        @chn @jpn @kor
        Examples:
            | number | file path                                                                | file name                | word count |
            | 2      | ../../../../data/upload/TEST.docx;../../../../data/upload/Sample 3.docx; | TEST.docx;Sample 3.docx; | "1640"     |

    @sanity
    Scenario Outline: I expect to see file upload option when all uploaded files are removed for ENG partner
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-36-select sl2 top-click-select-editing')]
        When I upload <number> files <file path> at //input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        Then I expect files <file name> should be displayed at //li[contains(@class,'qq-upload-success')]/div[@class='file-details']//span[1]
        When I remove <number> files <file name>
        Then I expect //input[@name='qqfile'] should be enabled on page
        Then I expect //div[contains(@class,'document-not-ready')]//a should be displayed on page
        When I clear browser session

        @eng
        Examples:
            | number | file path                                                                | file name                | word count |
            | 2      | ../../../../data/upload/TEST.docx;../../../../data/upload/Sample 3.docx; | TEST.docx;Sample 3.docx; | "1640"     |

    @sanity
    Scenario Outline: I expect to see uploaded files when some of the uploaded files are removed
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-36-select sl2 top-click-select-editing')]
        When I click on the element //div[contains(@class,'upload-documents')]//a[contains(@class,'upload-documents-link')]
        When I upload <number> files <file path> at //input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        Then I expect files <file name> should be displayed at //li[contains(@class,'qq-upload-success')]/div[@class='file-details']//span[1]
        Then I expect that element //div[contains(@class,'total-word-count')]/span[1] contains the text <word count>
        When I remove <Rnumber> files <Rfile name>
        Then I expect files <Lfile name> should be displayed at //li[contains(@class,'qq-upload-success')]/div[@class='file-details']//span[1]
        Then I expect that element //div[contains(@class,'total-word-count')]/span[1] contains the text <Lword count>
        When I clear browser session

        @chn @jpn @kor
        Examples:
            | number | file path                                                                | file name                | word count | Rnumber | Rfile name | Lfile name     | Lword count |
            | 2      | ../../../../data/upload/TEST.docx;../../../../data/upload/Sample 3.docx; | TEST.docx;Sample 3.docx; | "1640"     | 1       | TEST.docx; | Sample 3.docx; | "1629"      |

    @sanity
    Scenario Outline: I expect to see uploaded files when some of the uploaded files are removed for ENG partner
        When I click on the element //a[@href='/order/ncf/english-editing']
        When I click on the element //ul[contains(@class,'compare-table')]//button[contains(@data-description,'2-36-select sl2 top-click-select-editing')]
        When I upload <number> files <file path> at //input[@name='qqfile']
        When I wait for //div[@class='file-upload']//div[@role='progressbar'] to not be displayed on page
        Then I expect files <file name> should be displayed at //li[contains(@class,'qq-upload-success')]/div[@class='file-details']//span[1]
        Then I expect that element //div[contains(@class,'total-word-count')]/span[1] contains the text <word count>
        When I remove <Rnumber> files <Rfile name>
        Then I expect files <Lfile name> should be displayed at //li[contains(@class,'qq-upload-success')]/div[@class='file-details']//span[1]
        Then I expect that element //div[contains(@class,'total-word-count')]/span[1] contains the text <Lword count>
        When I clear browser session

        @eng
        Examples:
            | number | file path                                                                | file name                | word count | Rnumber | Rfile name | Lfile name     | Lword count |
            | 2      | ../../../../data/upload/TEST.docx;../../../../data/upload/Sample 3.docx; | TEST.docx;Sample 3.docx; | "1640"     | 1       | TEST.docx; | Sample 3.docx; | "1629"      |
