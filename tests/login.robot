*** Settings ***

Library    AppiumLibrary

Resource    ../resources/base.resource


*** Test Cases ***
Deve logar com sucesso

    Start session
    Get started
    Navigate to       Formulários
    Go to item        Login    Olá Padawan, vamos testar o login?

    Input Text        com.qaxperience.yodapp:id/etEmail      yoda@qax.com
    Input Text        com.qaxperience.yodapp:id/etPassword   jedi

    Click Element     com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains    Boas vindas, logado você está.

Não deve logar com senha incorreta

    Start session
    Get started
    Navigate to       Formulários
    Go to item        Login    Olá Padawan, vamos testar o login?

    Input Text        com.qaxperience.yodapp:id/etEmail      yoda@qax.com
    Input Text        com.qaxperience.yodapp:id/etPassword   sith

    Click Element     com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains    Oops! Credenciais incorretas.