*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    String
Resource   variables.robot
Resource   ../resource/login.robot



*** Keywords ***


Cadastrar Centro de Custo
    [Documentation]    Cadastra um centro de custo com nome dinâmico
    ${body}=    Create Dictionary    costCenterName=${COSTCENTERNAME}   boardId=68ae1ba7cec232b1ccc7f6e1
    ${response}=    POST On Session   supernatural     https://api-shogun.qacoders.dev.br/api/costCenter   json=${body}   expected_status=any
    RETURN    ${response}


