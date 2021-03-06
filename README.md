# OpenCV + Appium e Cucumber

# Configuração
- Clone o repo https://github.com/danilopolicarpos/opencv.git
- Instalar dependencias
```
bundle install
```
# Execução 
 ```
Appium&
```
```
bundle exec cucumber
```
# Arquitetura do Projeto

OPENCV

├── Build                    - Local onde fica o APK
├── fail_image               - Diferença entre as comparações das imagens
├── Feature
├── ├── screen               - Retira screenshots por elementos ou tela
│   ├── step_definitions     - Snippets para implementar os testes   
│   ├── lista_filme.feature  - Feature escrita para os testes
│   ├── android_screen_base  - métodos utilizado para comparar imagens
│── imagens                  - Matriz com a imagem padrão 
├── screenshot               - imagem comparada com a padrão
├── Gemfile                  - Dependências usada no projeto
├── Gemfile.lock             - Versões das gens instaladas
└──  README.md   

## Arquitetura do Projeto

HTTParty-Contrato

├── features
│   ├── schemas              - Schemas usados para os testes de contrato
│   │   └── schema.json
│   ├── step_definitions     - Snippets para implementar os testes
│   │   └── get.rb
│   └── support              - Requisição das gens e configuração da pasta Schema
│   │   └── env.rb
│   ├── get.feature          - Feature escrita para os testes
│
│── .gitignore
├── Gemfile                  - Dependencias usada no projeto
├── Gemfile.lock             - Versões das gens instaladas
├── README.md   
└── info.json                - Arquivo usado pelo Json-server
