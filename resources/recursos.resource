*** Settings ***
Library      RequestsLibrary
Library      SeleniumLibrary
Library      String
Library      FakerLibrary
Resource     variables.robot

*** Variables ***
${URL}                    https://automacao.qacoders.dev.br/login   #https://automacao.qacoders-academy.com.br/login
${emailsite}              //input[contains(@id,'email')]
${senhasite}              //input[contains(@type,'password')]
${enterButton}            //button[@class='MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium css-ojf4v2'][contains(.,'Entrar')]
${EMAIL}                  sysadmin@qacoders.com
${SENHA}                  1234@Test
${cadastroElement}        //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Cadastros')]
${logoutButton}           //button[@class='css-1nvbq2d'][contains(.,'Logout')]
${usuarioElement}         //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Usuários')]
${usuarioedicaoButton}    (//button[@name='editar'][contains(.,'Editar')])[1]      
${usuariofullName}        //input[contains(@name,'fullName')]       
${usuariomail}            //input[contains(@name,'mail')]
${usuarioaccessProfile}    
${usuariocpf}             
${usuariopassword}           
${usuarioconfirmPassword}
${usuariosalvarButton}      //button[@type='submit'][contains(.,'SALVAR ALTERAÇOES')]  
${usuariocancelarButton}    //button[@type='button'][contains(.,'CANCELAR')]

${empresaElement}           //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Empresa')]
${empresaEdicaobutton}      (//button[@name='editar'][contains(.,'Editar')])[1]
${empresaNomecorporacao}    //input[contains(@name,'companyName')]            
${empresaCNPJ}              //input[contains(@name,'matriz')]
${empresaMail}              //input[contains(@name,'companyMail')]
${empresaMatriz}            //input[contains(@name,'fantasyName')]           
${empresaResponsavel}       //input[contains(@name,'fullName')]
${empresaFone}              //input[contains(@name,'telephone')]
${empresaRamoatividade}     //input[contains(@name,'serviceDescription')]
${empresaCEP}               //input[contains(@name,'zipCode')]
${empresaCidade}            //input[contains(@name,'city')]
${empresaEstado}            //input[contains(@name,'state')] 
${empresaEndereco}          //input[contains(@name,'street')]
${empresaBairro}            //input[contains(@name,'district')]
${empresaNumero}            //input[contains(@name,'number')]
${empresaComplemento}       //input[contains(@name,'complement')]  
${empresaPais}              //input[contains(@name,'country')]
${empresasalvarButton}      //button[@type='submit'][contains(.,'SALVAR ALTERAÇOES')]
${empresacancelarButton}    //button[@type='button'][contains(.,'CANCELAR')]


*** Keywords ***
Abrir o navegador
    Open Browser  browser=chrome    # usando esse comando, a janela web nao abre -> browser=headlesschrome
    Maximize Browser Window   

Fechar o navegador
    Close Browser

Passo - Acessar a página de login do Academy
    Abrir o navegador
    Go to         url=${URL}

Passo - Digitar o email
  Wait Until Element Is Visible    locator=${emailsite}
  Input Text    locator=${emailsite}    text=${EMAIL}  

Passo - Digitar a senha
  Wait Until Element Is Visible        locator=${senhasite}
  Input Text    locator=${senhasite}   text=${SENHA}

Passo - Clicar no botão Entrar
  Wait Until Element Is Visible        locator=${enterButton}
  Click Button                         locator=${enterButton}   

Passo - Acessar cadastros
  Wait Until Element Is Visible      locator=${cadastroElement}
  Click Element                      locator=${cadastroElement}   

Passo - Acessar Usuarios
  Wait Until Element Is Visible      locator=${usuarioElement}
  Click Element                      locator=${usuarioElement}  

Passo - Clicar botão Edição
  Wait Until Element Is Visible      locator=${usuarioedicaoButton}
  Click Element                      locator=${usuarioedicaoButton}  

Passo - Editar cadastro do usuário
  # Funções para gerar massa de teste
  ${palavra_randomica}    Generate Random String    length=8     chars=[LETTERS]
  ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}   
  # Nome Completo
  Wait Until Element Is Visible                   locator=${usuariofullName}  
  Input Text    locator=${usuariofullName}        text=AAASupernatural${palavra_randomica} Editando${palavra_randomica}
  # Email
  Wait Until Element Is Visible                   locator=${usuariomail}
  Input Text    locator=${usuariomail}            text=supernatural${palavra_randomica}@qacoders.com.br
  Sleep    2s
  # Salvando edição de cadastro
  Wait Until Element Is Visible        locator=${usuariosalvarButton}
  Click Button                         locator=${usuariosalvarButton}

  Capture Page Screenshot            # Comando para printar a tela e usar como evidência.
  Wait Until Element Is Visible        locator=${usuariocancelarButton}
  Click Button                         locator=${usuariocancelarButton}
Passo - Clicar no botão Logout
  Wait Until Element Is Visible      locator=${logoutButton}
  Click Element                      locator=${logoutButton}
  Fechar o navegador 

Passo - Digitar o email administrador
  Wait Until Element Is Visible    locator=${emailsite}
  Input Text    locator=${emailsite}    text=sysadmin@qacoders.com
  Sleep    2s

Passo - Digitar a senha administrador
  Wait Until Element Is Visible        locator=${senhasite}
  Input Text    locator=${senhasite}   text=1234@Test

Passo - Acessar Empresa
  Wait Until Element Is Visible      locator=${empresaElement}
  Click Element                      locator=${empresaElement}  

Passo - Clicar botão Edição de empresa
  Wait Until Element Is Visible      locator=${empresaEdicaobutton}
  Click Element                      locator=${empresaEdicaoButton}  

Passo - Editar cadastro da empresa
  Gerar variáveis Faker
  # Razão social   
  Wait Until Element Is Visible                   locator=${empresaMatriz}  
  Input Text    locator=${empresaMatriz}          text=${MATRIZ}
  # Nome fantasia
  Wait Until Element Is Visible                   locator=${empresaNomecorporacao}  
  Input Text    locator=${empresaNomecorporacao}  text=AAASupernatural${NOMECORPORACAO}
  # Email
  Wait Until Element Is Visible                   locator=${empresaMail}  
  Input Text    locator=${empresaMail}            text=${MAIL}
  # CNPJ
  Wait Until Element Is Visible                   locator=${empresaCNPJ}  
  Input Text    locator=${empresaCNPJ}            text=${CNPJ}
  # Telefone
  Wait Until Element Is Visible                   locator=${empresaFone}  
  Input Text    locator=${empresaFone}            text=${FONE}
  # Descrição de serviço
  Wait Until Element Is Visible                   locator=${empresaRamoatividade}  
  Input Text    locator=${empresaRamoatividade}   text=Supernatural ${RAMOATIVIDADE}
  # Responsavel
  Wait Until Element Is Visible                 locator=${empresaResponsavel}  
  Input Text    locator=${empresaResponsavel}   text=Supernatural ${RESPONSAVEL}
  # CEP
  Wait Until Element Is Visible                 locator=${empresaCEP}  
  Input Text    locator=${empresaCEP}           text=${CEP}
  # Pais
  Wait Until Element Is Visible                 locator=${empresaPais}  
  Input Text    locator=${empresaPais}          text=Supernatural ${PAIS}
  # Cidade
  Wait Until Element Is Visible                 locator=${empresaCidade}  
  Input Text    locator=${empresaCidade}          text=Supernatural ${CIDADE}
  # Estado
  Wait Until Element Is Visible                 locator=${empresaEstado}  
  Input Text    locator=${empresaEstado}        text=${ESTADO}
  # Bairro
  Wait Until Element Is Visible                 locator=${empresaBairro}  
  Input Text    locator=${empresaBairro}          text=Supernatural ${BAIRRO}
  # Rua
  Wait Until Element Is Visible                 locator=${empresaEndereco}  
  Input Text    locator=${empresaEndereco}          text=Supernatural ${ENDERECO}
  # Numero
  Wait Until Element Is Visible                 locator=${empresaNumero}  
  Input Text    locator=${empresaNumero}          text=${NUMERO}
  # Complemento
  Wait Until Element Is Visible                 locator=${empresaComplemento}  
  Input Text    locator=${empresaComplemento}          text=Supernatural ${COMPLEMENTO}

  # Salvando edição de cadastro
  Wait Until Element Is Visible        locator=${empresasalvarButton}
  Click Button                         locator=${empresasalvarButton}
  Sleep    1s
  Capture Page Screenshot  # Comando para printar a tela e usar como evidência.
  # Cancelando edição de cadastro pois tem bug
  Wait Until Element Is Visible        locator=${empresacancelarButton}
  Click Button                         locator=${empresacancelarButton}
