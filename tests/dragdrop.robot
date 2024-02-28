*** Settings ***

Resource    ../resources/base.resource
Library     ../resources/libs/extend.py

*** Test Cases ***
Deve arrastar o Skywalker e soltar no topo da lista

    Start session
    Get Started

    Navigate to    Star Wars
    Go to item     Lista    Luke Skywalker

    Wait Until Page Contains    Luke Skywalker

    ${origin}    Set Variable    //android.widget.TextView[@text="@skywalker"]/../../..//*[contains(@resource-id, "drag_handle")]
    ${target}    Set Variable    //android.widget.TextView[@text="@mando"]/../../..//*[contains(@resource-id, "drag_handle")]

    My Drag and Drop    ${origin}    ${target}

    

    Sleep    2

    Close session