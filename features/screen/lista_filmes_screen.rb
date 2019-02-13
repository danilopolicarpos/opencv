class Lista_filmeScreen
  def initialize
    @layout_name = 'home_omdb'
    @titulo = 'search_title'
    @busca = 'search'
    @busca_titulo = 'title'
    @btn_favorito = 'favorite'
  end


  def realizar_busca
    find_element(id: @titulo).send_key 'Batman Forever'
    find_element(id: @busca).click
  end

  def take_screenshot
    # el = find_element(id: @busca )
    screenshot('screenshot/arquivo.png')
  end

  def resultado_busca_titulo
    find_element(id: @busca_titulo)
  end

 
end
 
