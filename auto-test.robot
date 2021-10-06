*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${URL}              https://test-cicd123.herokuapp.com/
${BROWSER}          chrome


*** Test Cases ***
MyFirstTest
    Evaluate    chromedriver_binary.add_chromedriver_to_path()  modules=chromedriver_binary
    Open Browser    ${URL}      ${BROWSER}     options=add_experimental_option("excludeSwitches", ["enable-logging"])
    Maximize Browser Window
    Wait Until Page Contains            Express
    Close Browser