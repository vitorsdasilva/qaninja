            #language: pt

            Funcionalidade: Cadastro de produtos
            Para que eu possa disponibilizar produtos no catalogo
            Sendo um administrador do catalogo
            Posso cadastrar um novo produto

            Cenario: Novo produto
           
            Dado que tenho o seguinte produto:
                | nome        | categoria      | preco | produtores | descricao               |
                | Donkey Kong | Super Nintendo | 49.99 | Konami     | Um jogo muito divertido |
            Quando eu faço o cadastro desse item
            Entao devo ver este item na lista de produtos
