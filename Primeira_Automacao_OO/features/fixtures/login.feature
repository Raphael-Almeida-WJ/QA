#language:pt 
Funcionalidade: Login
    Para que o usuario possa ter acesso a todas as funcionalidades do sistema
    Devera ser efetuado o login

    Contexto: 
        Dado que o usuario acesse a pagina principal
        Quando o usuario acessar a pagina de login
    
    @logincomsucesso
    Cenario: Usuario deve ser autorizado
        Quando o usuario preencher campos de login e senha
        Então deve ser redirecionado a pagina de my account

    @loginsenhaerrada
    Cenario: Senha errada
        Quando o usuario preencher campos com a senha errada
        Então deve ver uma mensagem de erro dizendo que a autenticacao falhou

    @loginusuarionaoexiste
    Cenario: Usuário não existe
        Quando o usuario preencher campos com um login nao cadastrado
        Então deve ver uma mensagem de erro dizendo que a autenticacao falhou

    @loginemailinvalido
    Cenario: Email incorreto
        Quando o usuario preencher campos com um email invalido
        Então deve ver uma mensagem de erro dizendo que o email e invalido
