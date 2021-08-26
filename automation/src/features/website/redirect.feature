Feature: Redirect

    @sanity
    Scenario Outline: I expect that redirection rules are working
        When I open the website <source>
        Then I expect the url to contain <destination>

        @eng
        Examples:
            | source                                | destination                                |
            | "/new/book-editing-services"          | "/services/other/book-editing"             |
            | "/how-editage-helps-researchers.html" | "/info/how-editage-helps-researchers.html" |
        @chn
        Examples:
            | source             | destination                 |
            | "/english-editing" | "/services/english-editing" |

        @jpn
        Examples:
            | source                                           | destination                 |
            | "/payment/registration.html"                     | "/payments"                 |
            | "/getquote/?partner=alc"                         | "/order/ncf"                |
            | "/editing_serv/coe.php?coetabs=0&newwindow=true" | "/services/english-editing" |
            | "/medicine_editing(.*)$"                         | "/subject"                  |