Dado('que estou na lista de filmes') do
  @lista = Lista_filmeScreen.new
end

Quando('realizar uma busca por titulo') do
  @lista.realizar_busca
end

Então('vejo o resultado da busca') do
  #@lista.resultado_busca_titulo
  #@lista.take_screenshot
  fail "Imagens Diferentes" unless comparar_imagens


end


