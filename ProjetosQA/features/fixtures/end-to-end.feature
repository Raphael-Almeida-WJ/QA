#language:pt 
Funcionalidade: Fluxo E2E
    Para que o usuario possa efetuar com sucesso a compra de um produto 

    Contexto: 
        Dado que o usuario acesse a pagina inicial
        E busca por um produto desejado
        
    
    @E2ESucesso
    Cenario: E2ESucesso

        Dado que o usuario adiciona o produto no seu carrinho
        Quando passar por todos os passos da página finalizar sua compra
        E se autenticar no sistema
        Entao sera possivel finalizar sua compra
        E gerar seu pedido
    

