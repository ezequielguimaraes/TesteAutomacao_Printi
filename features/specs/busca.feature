#language: pt


@smoke
Funcionalidade: Buscar produtos no site
  Eu como usuário do site da Printi
  Quero Fazer uma pesquisa
  Para Pesquisar preços
    
    @C001
    Cenário: Realizar pesquisa do site da Printi no Google
        Dado Que estou na tela inicial do Google
        Quando Pesquiso por Printi no campo de busca
        Então Clico no primeiro link não patrocionado para acessar o site

    
    @C002
    Cenário: Realizar busca de produto no site
        Dado Que estou na tela inicial do site da Printi
        Quando Pesquiso por um produto no campo de busca
        E Clico no botão Buscar
        Então Devo visualizar na tela o resultado da pesquisa com produtos relacionados

