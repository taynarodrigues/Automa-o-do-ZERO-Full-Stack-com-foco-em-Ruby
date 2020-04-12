#language: pt

@temp
Funcionalidade: Cardápio
    Para que eu possa decidir o que pretendo comer
    Sendo um usuário que escolheu um restaurante
    Posso acessar o cardápio 

    Contexto: Restaurantes
        Dados que acesso a lista de restaurantes

    @cardapio
    Cenário: Produto

        Quando eu escolho o restaurante "Burger House"
        Então vejo os seguintes intens disponíveis no cardápio:
            | produto        | descricao                       | preco|
            | Classic Burg   | O clássico. Não tem como errar. | R$ 18,50|
            | Batatas Fritas | Batatas fritas crocantes        | R$ 5,50 |
            | Refrigerante   | O refri mais gelado da cidade.  | R$ 4,50 |

 
    Cenário: Carrinho vazio

        Quando eu escolho o restaurante "Burger House"
        Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"
            