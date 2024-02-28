*** Settings ***

Library    AppiumLibrary

*** Test Cases ***


Deve abrir a tela principal

    Open Application	http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=uiautomator2
    ...                 app=${EXECDIR}/app/yodapp-beta.apk
    ...                 Udid=emulator-5554
    ...                 autoGrantPermissions=true
    
    Wait Until Page Contains        Yodapp    10
    Wait Until Page Contains        Mobile Training    10
    Wait Until Page Contains        by Papito    10

    Click Text    QAX

    Close Application