*** Settings ***
Library    RequestsLibrary
Library    Collections
Resource   variables.robot

*** Keywords ***
Login e Obter Token
    [Documentation]    Faz login e armazena o token para uso em outros testes  
    ${headers}=    Create Dictionary    accept=application/json    Content-Type=application/json
    Create Session    supernatural    ${BASE_URL}    headers=${headers}    verify=${False}
    ${body}=    Create Dictionary    mail=${ADMIN_EMAIL}    password=${ADMIN_PASSWORD}
    ${response}=    POST On Session    supernatural    /api/login/    json=${body}
    Should Be Equal As Integers    ${response.status_code}    200
    ${json}=    Set Variable    ${response.json()}
    ${token}=    Set Variable    ${json['token']}
    Set Suite Variable    ${TOKEN}    ${token}
