#language:pt

Funcionalidade: Cadastro
    Para que o usuario consiga acessar o sistema
    Devera ser realizado um cadastro 
    

Contexto:  
    Dado que o usuario acesse a pagina inicial
    Quando e acessado a pagina de autenticacao

@teste
Cenario: Email valido
    Dado que o usuario informe um email valido
    E clicar no botao create an account
    Quando preencher todos os dados do formulario
    E clicar no botao register
    Entao deve ser redirecionado para a pagina myaccount

@emailInvalido
Cenario: Email invalido
    Dado que o usuario informe um email invalido
    Quando clicar no botao create an account
    Entao deve exibir uma mensagem de erro

@DadosInvalidos
Cenario: Dados invalidos
    Dado que o usuario informe um email valido
    E clicar no botao create an account
    Quando não preencher todos os dados do formulario
    E clicar no botao register
    Entao deve ser exibida uma mensagem de erro