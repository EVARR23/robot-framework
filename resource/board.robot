*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    String
Resource   variables.robot

*** Keywords ***

Gerar Nome Diretoria
    ${palavra_randomica}=    Generate Random String    length=9    chars=[LETTERS]
    ${palavra_randomica}=    Convert To Lower Case    B${palavra_randomica}
    Set Test Variable    ${BOARD_NAME}    ${palavra_randomica}
    Log    ${BOARD_NAME}

Cadastrar Diretoria
    [Documentation] 
    ${headers}=    Create Dictionary    Content-Type=application/json    Authorization=${TOKEN} 
    ${body}=    Create Dictionary    boardName=${BOARD_NAME}
    ${response}=    POST On Session    api   ${BASE_URL}/api/board   json=${body}    headers=${headers}
    Should Be Equal As Integers    ${response.status_code}    201
    ${json}=    Set Variable    ${response.json()}
    ${board_id}=    Set Variable    ${json['newBoard']['_id']}
    Set Suite Variable    ${BOARD_ID}    ${board_id}

Cadastrar Diretoria sem bordname
    [Documentation]    teste de cadastro de diretoria sem bordname
    ${headers}=    Create Dictionary    Content-Type=application/json    Authorization=${TOKEN} 
    ${body}=    Create Dictionary    boardName=
    ${response}=    POST On Session    api   ${BASE_URL}/api/board   json=${body}    headers=${headers}    expected_status=400
    ${json}=    To Json    ${response.content}    
    Should Be Equal As Strings     ${json['error']}    ["O campo 'diretoria' é obrigatório."]
   
   




