*** Settings ***
Resource    ../../resource/login.robot
Resource    ../../resource/board.robot

*** Test Cases ***
Cadastrar Diretoria com Sucesso
    [Documentation]    
    Login e Obter Token
    Gerar Nome Diretoria
    Cadastrar Diretoria


Cadastrar Diretoria sem Bordname
    [Documentation]    
    Login e Obter Token
    Cadastrar Diretoria sem bordname
    