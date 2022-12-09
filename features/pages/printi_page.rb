class Printi < SitePrism::Page
    
  set_url '/'
  element :busca_printi, 'input[id="input-search-page"]'
  element :button_buscaPrinti, 'button[class="styles__ButtonStyle-sc-18xfwxu-0 lgyCrm Headerstyles__SearchButton-sc-tei7fw-20 fFKMXq"]'
  element :resultado_pesquisa, :xpath, "//ul[@class='Headerstyles__ProductList-sc-tei7fw-17 otGuN']"
 

  def buscar_produto 
 
    busca_printi.visible?
    busca_printi.set 'Flyer'

  end
  def clicar_botaoBuscar
    
    button_buscaPrinti.visible?
    button_buscaPrinti.click

  end
  def validar_resultadoPesquisa
    
    resultado_pesquisa.visible?  
    # resultado_pesquisa.each do |item|
    #   expect(item.text).include 'Flyer'
  

  end
end

