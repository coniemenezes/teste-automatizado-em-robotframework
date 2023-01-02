*** Settings ***
Documentation       Faker API Testcase

Library             RequestsLibrary
Library             Selenium2Library
Library             Collections
Library             String
Library             JSONLibrary


*** Variables ***
${BASE_URL}         https://fakerestapi.azurewebsites.net/api/v1/
@{id}               ${1}    ${2}    ${3}    ${4}
${title}            title
${description}      description
@{pageCount}        ${100}    ${200}    ${300}    ${400}
${excerpt}          excerpt


*** Keywords ***
Add um novo livro
    #Criando o random aleatorio
    ${RANDOM_NUMBERS}    Generate random string    1    0123
    ${RANDOM_NUMBERS}    Convert To Integer    ${RANDOM_NUMBERS}
    Set Global Variable    ${random_items}    ${RANDOM_NUMBERS}
    ${BODY_REQUEST}    Load JSON From File    resources/services/body_request.json
    Set To Dictionary    ${BODY_REQUEST}    id=${id}[${random_items}]
    Set To Dictionary    ${BODY_REQUEST}    title=${title}
    Set To Dictionary    ${BODY_REQUEST}    description=${description}
    Set To Dictionary    ${BODY_REQUEST}    pageCount=${pageCount}[${random_items}]
    Set To Dictionary    ${BODY_REQUEST}    excerpt=${excerpt}
    #
    ${RESPONSE}    POST    ${BASE_URL}Books    json=${BODY_REQUEST}    expected_status=200
    Log    ${BODY_REQUEST}
