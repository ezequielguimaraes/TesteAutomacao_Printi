class Google < SitePrism::Page
    
  set_url '/'
  element :busca_google, '[class="gLFyf"]'
  element :button_buscar, 'input[value="Pesquisa Google"]'
# element :link_pesquisa, "h3[class='LC20lb MBeuO DKV0Md']", match: :first
  element :link_pesquisa, :xpath, "//a[@href='https://www.printi.com.br/']/h3[contains(text(), 'Printi. | Mais que uma Gráfica Online')]"

  def pesquisar_google

    busca_google.visible?
    busca_google.set 'Printi'

  end
  def clicar_botaoBuscar
    
    button_buscar.visible?
    button_buscar.click

  end
  def entrar_sitePrinti

    link_pesquisa.visible?
    link_pesquisa.click

  end

end

