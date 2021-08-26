# @author Makarand Dhuri

Feature: New User order form submissions

    Background: I am on new user form
        Given I open the eos "/order/ncf" and wait for load

    @sanity
    Scenario Outline: I expect to submit NCF in wc/skipWc loop for 2.0 partners
        When I expect to submit NCF for <sl2> in <loop> <wordCountOrType> loop for <partner> partner

        @eng
        Examples:
            | loop   | wordCountOrType | partner | sl2                  |
            | wc     | "5000"          | ENG     | "Premium editing"    |
            | wc     | "5000"          | ENG     | "Scientific editing" |
            | wc     | "5000"          | ENG     | "Standard editing"   |
            | skipWc | sendQuote       | ENG     | "Premium editing"    |
            | skipWc | startJob        | ENG     | "Premium editing"    |
            | skipWc | sendQuote       | ENG     | "Scientific editing" |
            | skipWc | startJob        | ENG     | "Scientific editing" |
            | skipWc | sendQuote       | ENG     | "Standard editing"   |
            | skipWc | startJob        | ENG     | "Standard editing"   |

        @chn
        Examples:
            | loop   | wordCountOrType | partner | sl2                  |
            | wc     | "5000"          | CHN     | "Premium editing"    |
            | wc     | "5000"          | CHN     | "Scientific editing" |
            | wc     | "5000"          | CHN     | "Standard editing"   |
            | skipWc | sendQuote       | CHN     | "Premium editing"    |
            | skipWc | sendQuote       | CHN     | "Scientific editing" |
            | skipWc | sendQuote       | CHN     | "Standard editing"   |

        @jpn
        Examples:
            | loop   | wordCountOrType | partner | sl2                  |
            | wc     | "5000"          | JPN     | "Premium editing"    |
            | wc     | "5000"          | JPN     | "Scientific editing" |
            | wc     | "5000"          | JPN     | "Standard editing"   |
            | skipWc | sendQuote       | JPN     | "Premium editing"    |
            | skipWc | startJob        | JPN     | "Premium editing"    |
            | skipWc | sendQuote       | JPN     | "Scientific editing" |
            | skipWc | startJob        | JPN     | "Scientific editing" |
            | skipWc | sendQuote       | JPN     | "Standard editing"   |
            | skipWc | startJob        | JPN     | "Standard editing"   |

        @kor
        Examples:
            | loop   | wordCountOrType | partner | sl2                  |
            | wc     | "5000"          | KOR     | "Premium editing"    |
            | wc     | "5000"          | KOR     | "Scientific editing" |
            | wc     | "5000"          | KOR     | "Standard editing"   |
            | skipWc | sendQuote       | KOR     | "Premium editing"    |
            | skipWc | startJob        | KOR     | "Premium editing"    |
            | skipWc | sendQuote       | KOR     | "Scientific editing" |
            | skipWc | startJob        | KOR     | "Scientific editing" |
            | skipWc | sendQuote       | KOR     | "Standard editing"   |
            | skipWc | startJob        | KOR     | "Standard editing"   |


