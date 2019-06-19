*** Settings ***
Documentation    Test sklepu internetowego RedHat
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
#Resource          resource.txt
Library   SeleniumLibrary

*** Variables ***
${browser}    Firefox
${user_email}   tester@test.pl
${user_password_incorrect}    12345
${user_password}    12345678
${expected_alert_text}   Authentication failed
${expected_tshirt_text}   HUMMINGBIRD PRINTED T-SHIRT
${expected_price_text}    PLN23.52
${url_login}     https://autodemo.testoneo.com/en/login?back=my-account
${url_product}     https://autodemo.testoneo.com/en/men/1-1-hummingbird-printed-t-shirt.html
${xpath_header}    //*[@id="main"]/header
${xpath_alert}    //*[@class="alert alert-danger"]
${xpath_zalogowany}     //*[@id="main"]/header/h1
${xpath_name_product}    //*[@id="main"]/div[1]/div[2]/h1
${xpath_price}      //*[@class="current-price"]/span
${login_name}        email
${password_name}      password
${button_sign_in_id}     submit-login
*** Test Cases ***
#sprawdzenie czy nagłówek ‘Log in to your account’ występuje na stronie logowania
test_login_header
    Open browser and go to website
    Sleep   3
    Header_check
    #Page screenshot
    Sleep   1
    #Close browser
#bledne logowanie
test_incorrect_login
    Login_input
    Password_input_incorrect
    Button sign in click
    Sleep   1
    #Page screenshot
    Alert check
    #Close All Browsers

#sprawdzenie czy możliwe jest zalogowanie się na stronie
test_correct_login
    Open browser and go to website
    Login_input
    Password_input
    Sleep   1
    Button sign in click
    Sleep   1
    #Page screenshot
    Log in check
    #Close All Browsers
#sprawdzenie czy produkt posiada poprawną nazwę HUMMINGBIRD PRINTED T-SHIRT
test_name_product
    Go to product site
    Page screenshot
    Product name check
#sprawdzenie czy produkt posiada aktualną cenę PLN23.52
test_price_product
    Go to product site
    #Page screenshot
    Product price check
    Close All Browsers

*** Keywords ***
Open browser and go to website
    Open browser    ${url_login}     ${browser}
Header_check
    Page Should Contain      Log in to your account
Page screenshot
    Capture Page Screenshot
Close browser
    Close All Browsers
Login_input
    Input Text    ${login_name}     ${user_email}
Password_input_incorrect
    Input Text     ${password_name}     ${user_password_incorrect}
Button sign in click
    Click Element     ${button_sign_in_id}
Alert check
    Element Should Contain     ${xpath_alert}     Authentication failed.
Password_input
    Input Text     ${password_name}     ${user_password}
Log in check
    Page Should Contain     Your account
Go to product site
    Go to    ${url_product}
Product name check
     Element Should Contain     ${xpath_name_product}     HUMMINGBIRD PRINTED T-SHIRT
Product price check
     Element Should Contain     ${xpath_price}     PLN23.52