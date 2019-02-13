# frozen_string_literal: true

# wait_for_element(id: @contato,:timeout => 5)
def wait_for_element(atributos)
  begin
  wait = Selenium::WebDriver::Wait.new
  wait.until { find_element(atributos).displayed? }
  rescue Selenium::WebDriver::Error::TimeOutError => e
    raise "Não encontrou resultado da busca \n #{e.message}"
end
end

# wait_for_click(:id 'xpto')
def wait_for_click(atributos)
  begin
    wait = Selenium::WebDriver::Wait.new
    wait { find_element(atributos).click }
  rescue Selenium::WebDriver::Error::TimeOutError => e
    raise "Não consegui efetuar a ação \n #{e.message}"
  end
end

def reinstall_apps
  @driver.reset
end

# element_exist(id: @contato,:timeout => 5)
def element_exist(attribute)
  begin
  wait = Selenium::WebDriver::Wait.new
  wait.until { find_element(attribute).displayed? }
  rescue 
  return false
  end
end

def comparar_imagens
imagem1 = File.read 'imagens/arquivo.png'
imagem2 = File.read 'screenshot/arquivo.png'
  
get_images_result = @driver.get_images_similarity first_image: imagem1, second_image: imagem2, visualize: true
print "score "  +  get_images_result['score'].to_s

 File.binwrite 'fail_image/find_result_visual.png', Base64.decode64(get_images_result['visualization'])


if get_images_result['score'] >= 0.99
    true
  else
    false
end
end

def remove_screenshot
  Dir.foreach('screenshot') do |arquivos|
    arquivo = File.join('screenshot', arquivos)
    if (arquivos != '.' && arquivos != '..')
      File.delete(arquivo)
    end
  end
end