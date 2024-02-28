*** Settings ***

Library    AppiumLibrary

Resource    ../resources/base.resource


*** Test Cases ***
Deve escolher o nível Padawan

    Start session
    Get started
    Navigate to       Formulários
    Go to item        Cadastro    Crie sua conta.

    Sleep    5

    Select level      Padawan

    Close session

Deve escolher o nível Jedi

    Start session
    Get started
    Navigate to       Formulários
    Go to item        Cadastro    Crie sua conta.

    Sleep    5

    Select level      Jedi

    Close session

Deve escolher o nível Sith

    Start session
    Get started
    Navigate to       Formulários
    Go to item        Cadastro    Crie sua conta.

    Sleep    5

    Select level      Sith

    Close session

Deve escolher o nível Outros

    Start session
    Get started
    Navigate to       Formulários
    Go to item        Cadastro    Crie sua conta.

    Sleep    5

    Select level      Outros

    Close session

*** Keywords ***
Select level
    [Arguments]     ${level}

    Click Element                    com.qaxperience.yodapp:id/spinnerJob
    Wait Until Element Is Visible    class=android.widget.ListView    
    Click Text                        ${level}