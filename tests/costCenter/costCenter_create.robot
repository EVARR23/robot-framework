*** Settings ***
Resource    ../../resource/login.robot
Resource    ../../resource/costCenter.robot
Resource    ../../resource/board.robot
Test Setup    Login e Obter Token


*** Test Cases ***
 Cadastrar Centro de Custo com Sucesso
    [Documentation]    
    Cadastrar Centro de Custo


Cadastrar centro de custo constCentername não informado
    [Documentation]    
    Cadastrar centro de custo constCentername não informado
    
   
