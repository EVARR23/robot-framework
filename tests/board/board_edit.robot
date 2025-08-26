*** Settings ***
Resource    ../../resource/login.robot
Resource    ../../resource/board.robot

*** Test Cases ***
Editar Diretoria com sucesso 
    [Documentation]    Faz login, cadastra uma diretoria e edita com sucesso
    Login e Obter Token
    Gerar Nome Diretoria
    Cadastrar Diretoria
    Gerar Nome Diretoria
    Editar Diretoria

Editar Diretoria Com ID Inexistente
    [Documentation]    Faz login, cadastra uma diretoria e tenta editar com um ID inexistente
    Login e Obter Token
    Gerar Nome Diretoria
    Editar Diretoria Com ID Inexistente
    
Editar diretoria com campo boardName vazio
    [Documentation]    Faz login, cadastra uma diretoria e tenta editar com o campo boardName vazio
    Login e Obter Token
    Gerar Nome Diretoria
    Cadastrar Diretoria
    Editar Diretoria Com Campo Vazio