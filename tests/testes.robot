*** Settings ***
Resource         ../resources/recursos.resource


*** Test Cases ***
Cenário de teste : Edição de usuário
	Passo - Acessar a página de login do Academy
	Passo - Digitar o email
	Passo - Digitar a senha
	Passo - Clicar no botão Entrar
	Passo - Acessar cadastros
	Passo - Acessar Usuarios
	Passo - Clicar botão Edição
	Passo - Editar cadastro do usuário
	Passo - Clicar no botão Logout

Cenário de teste : Edição de empresa
	Passo - Acessar a página de login do Academy
	Passo - Digitar o email administrador
	Passo - Digitar a senha administrador
	Passo - Clicar no botão Entrar
	Passo - Acessar cadastros
	Passo - Acessar Empresa
	Passo - Clicar botão Edição de empresa
	Passo - Editar cadastro da empresa
	Passo - Clicar no botão Logout