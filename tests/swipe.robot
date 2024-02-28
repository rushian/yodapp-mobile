*** Settings ***

Library    AppiumLibrary

Resource    ../resources/base.resource


*** Test Cases ***
Deve poder remover o Darth Vader

    Start session
    Get started

    Navigate to       Star Wars
    Go to item        Lista    Darth Vader    

    ${positions}    Get Element Location    //android.widget.TextView[@text="@darthvader"]/../../..//*[contains(@resource-id, "indicator")]

    ${start_x}    Set Variable    ${positions}[x]
    ${start_y}    Set Variable    ${positions}[y]
    ${end_x}      Evaluate    ${positions}[x] - 650
    ${end_y}      Set Variable    ${positions}[y]
    

    Swipe    ${start_x}    ${start_y}    ${end_x}    ${end_y}    1000

    Click Element    com.qaxperience.yodapp:id/btnRemove

    Wait Until Page Does Not Contain    Darth Vader

    Close session