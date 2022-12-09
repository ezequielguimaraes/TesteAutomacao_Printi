#C001
Dado('Que estou na tela inicial do Google') do
    
    @app.google_page.load
    expect(page.title).to have_content 'google'

end
Quando('Pesquiso por Printi no campo de busca') do
    
    @app.google_page.pesquisar_google
    .send_keys(:enter)

end

Entao('Clico no primeiro link não patrocionado para acessar o site') do
    @app.google_page.entrar_sitePrinti
end

#C002
Dado('Que estou na tela inicial do site da Printi') do
    visit 'https://www.printi.com.br/'
    expect(page.title).to eql  'Printi. | Mais que uma Gráfica Online'
    
end

Quando('Pesquiso por um produto no campo de busca') do 
    
    @app.printi_page.buscar_produto

end

E('Clico no botão Buscar') do 
    @app.printi_page.clicar_botaoBuscar

end

Entao('Devo visualizar na tela o resultado da pesquisa com produtos relacionados') do
    @app.printi_page.resultado_pesquisa
    expect(page).to have_xpath("//ul[@class='Headerstyles__ProductList-sc-tei7fw-17 otGuN']//a[@data-insights-position='1']")
    expect(page).to have_xpath("//ul[@class='Headerstyles__ProductList-sc-tei7fw-17 otGuN']//a[@data-insights-position='2']")
    expect(page).to have_xpath("//ul[@class='Headerstyles__ProductList-sc-tei7fw-17 otGuN']//a[@data-insights-position='3']")


end


