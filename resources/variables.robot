*** Settings ***
Library    FakerLibrary
Library    String

*** Keywords ***
Gerar variáveis Faker
    ${NOMECORPORACAO}=   FakerLibrary.Company
    ${CNPJ}=             FakerLibrary.random_number    digits=14       fix_len=True
    ${MAIL}=             FakerLibrary.Email
    ${MATRIZ}=           FakerLibrary.Company
    ${RESPONSAVEL}=      FakerLibrary.Name
    ${FONE}=             FakerLibrary.random_number    digits=14       fix_len=True
    ${RAMOATIVIDADE}=    FakerLibrary.Job
    ${CEP}=              Generate Random String    8      [NUMBERS]
    ${CIDADE}=           FakerLibrary.City
    ${ESTADO}=           FakerLibrary.State Abbr
    ${ENDERECO}=         FakerLibrary.Street Suffix
    ${BAIRRO}=           FakerLibrary.City
    ${NUMERO}=           Generate Random String    10     [NUMBERS]
    ${COMPLEMENTO}       FakerLibrary.First Name
    ${PAIS}=             FakerLibrary.Country

    Set Suite Variable    ${NOMECORPORACAO}      ${NOMECORPORACAO}
    Set Suite Variable    ${CNPJ}                ${CNPJ}            
    Set Suite Variable    ${MAIL}                ${MAIL}
    Set Suite Variable    ${MATRIZ}              ${MATRIZ}
    Set Suite Variable    ${RESPONSAVEL}         ${RESPONSAVEL}
    Set Suite Variable    ${FONE}                ${FONE}
    Set Suite Variable    ${RAMOATIVIDADE}       ${RAMOATIVIDADE}
    Set Suite Variable    ${CEP}                 ${CEP}
    Set Suite Variable    ${CIDADE}              ${CIDADE}
    Set Suite Variable    ${ESTADO}              ${ESTADO}
    Set Suite Variable    ${ENDERECO}            ${ENDERECO}
    Set Suite Variable    ${BAIRRO}              ${BAIRRO}
    Set Suite Variable    ${NUMERO}              ${NUMERO}
    Set Suite Variable    ${COMPLEMENTO}         ${COMPLEMENTO}  
    Set Suite Variable    ${PAIS}                ${PAIS}
