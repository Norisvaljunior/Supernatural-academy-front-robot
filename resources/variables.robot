*** Settings ***
#Library    FakerLibrary
Library    String

*** Keywords ***
Gerar variáveis Faker
    ${NOMECORPORACAO}=   Set Variable    Supernatual Company
    ${CNPJ}=             Set Variable    84290543111199
    ${MAIL}=             Set Variable    supernatural@qacoders.com
    ${MATRIZ}=           Set Variable    Supernatual
    ${RESPONSAVEL}=      Set Variable    Norisval
    ${FONE}=             Generate Random String    14     [NUMBERS]
    ${RAMOATIVIDADE}=    Set Variable    Qualidade
    ${CEP}=              Generate Random String    8      [NUMBERS]
    ${CIDADE}=           Set Variable    Navegantes
    ${ESTADO}=           Set Variable    SC
    ${ENDERECO}=         Set Variable    Avenida Beira Mar
    ${BAIRRO}=           Set Variable    Gravata
    ${NUMERO}=           Generate Random String    10     [NUMBERS]
    ${COMPLEMENTO}       Set Variable    Teste edicao Supernatural
    ${PAIS}=             Set Variable    Brasil

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
