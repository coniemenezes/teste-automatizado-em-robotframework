*** Settings ***
Library           RequestsLibrary
Resource          ../resources/conie.resource

*** Test Cases ***
CT001 Criando um novo Book
    [Tags]    Book
    Add um novo livro
