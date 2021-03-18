*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${Browser}    Chrome
${URL}    https://qa.myfordmobile.com/content/mfm/app/site/login.html
*** Test Cases ***
This is a sample test case
LoginTest
Open Browser   ${URL}   ${Browser}
set selenium implicit wait    5
input text        id:inputEmailAddress        mfmprimaryqa@gmail.com
input text        id:inputPassword            password
click element     xpath://*[@id="LoginForm"]/fieldset/div[2]/button/span
close browser