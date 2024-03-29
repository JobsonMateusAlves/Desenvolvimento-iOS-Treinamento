# Desenvolvimento-iOS-Treinamento

## Plano de Ensino

### Conteúdo

#### Introdução ao Desenvolvimento Mobile
- Metodologia Offline First
- Padrões da Plataforma Apple
- AppStoreConnect e Apple Developer

#### Linguagem de Programação Swift
- Apresentação do Playground
- Variáveis, Constantes e Tuplas
- Optionals
- Estrutura de decisão
- Estrutura de repetição
- Dicionários 
- Funções e Closures
- Classes, Structs e Enums
- Extensions

#### Introdução Git
- Funcionamento
- Branches, Merges e Rebase
- Comandos básicos

#### Apresentação do Ambiente de Desenvolvimento
- Xcode
- Simulador
- Cocoapods
- Postman

#### Arquitetura de uma aplicação
- Organização de pacotes
- Gerenciamento de dependências com Cocoapods
- Realm Mobile Database
- Alamofire e Object Mapper
- Programação Orientada a Protocolo

#### SDK iOS 
- Ciclo de vida da Aplicação
- Ciclo de vida de uma Controller
- Componentes de Layout
- TableView
## Instalações
- Instalar Command Line Tools: 
```shell
$ xcode-select --install
```
- Instalar o homebrew: 
```shell
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
- Instalar o cocoapods: 
```shell
$ sudo gem install cocoapods
```

## Git Básico

- Inicializar o versionamento do git: `git init`

- Adicionar um repositório remoto: `git remote add origin <URL DO REPOSITORIO>`

- Enviar atualizações para um novo repositório sem branches: `git push -u origin master`

- Cria uma copia de trabalho em um repositório local: `git clone <URL DO REPOSITORIO>`

- Adicionar todos os arquivos para serem commitados: `git add .`

- Pegar as informações do repositório remoto para atualizar o repositório local: `git pull`

- Commitar alterações: `git commit -m "comentários das alterações"` 

- Enviar as alterações commitadas para o repositório do git: `git push`


- Listar todas as branches: `git branch -a`

- Mudar de branch: `git checkout`

- Fazer o merge: `git merge <BRANCH>`

- Atualizar branch atual com as alterações de outra branch: `git pull origin <BRANCH>`

## Script SwiftGem
```
"$PODS_ROOT"/SwiftGen/bin/swiftgen strings -t structured-swift4 "$PROJECT_DIR/$PROJECT_NAME/Application/Supporting Files/Generators/Localizable.strings" --output "$PROJECT_DIR/$PROJECT_NAME/Application/Supporting Files/Generated/Localizable.swift"

"$PODS_ROOT"/SwiftGen/bin/swiftgen xcassets -t swift4 "$PROJECT_DIR/$PROJECT_NAME/Application/Supporting Files/Generators/Assets.xcassets" --output "$PROJECT_DIR/$PROJECT_NAME/Application/Supporting Files/Generated/Assets.swift"

"$PODS_ROOT"/SwiftGen/bin/swiftgen colors -t swift4 "$PROJECT_DIR/$PROJECT_NAME/Application/Supporting Files/Generators/Colors.json" --output "$PROJECT_DIR/$PROJECT_NAME/Application/Supporting Files/Generated/Colors.swift"

"$PODS_ROOT"/SwiftGen/bin/swiftgen storyboards -t swift4 "$PROJECT_DIR/$PROJECT_NAME" --output "$PROJECT_DIR/$PROJECT_NAME/Application/Supporting Files/Generated/Storyboards.swift"
```

## Documentos
- Linguagem Swift (Playground)
    - Dois arquivos playground com o básico da linguagem swift na pasta "Swift/"
- Cocoapods
    - Template arquivo Podfile na pasta CocoaPods.
- Template de um projeto
    - Template de um projeto com a configuração do Swiftgem.

## Links 
### API's:
- Treinamento:
    - Postman: https://www.getpostman.com/collections/3824a7d4507b0ecc3d27
    - Repositório: https://github.com/neymoura/rails-api-agenda-telefonica
- Projeto Final:
    - Postman: https://www.getpostman.com/collections/8b39a866f6ecb127c104
    - BaseURL:
        http://200.19.188.7:3010

#### Apple
- https://appstoreconnect.apple.com/
- https://developer.apple.com/
- https://developer.apple.com/design/human-interface-guidelines/

#### Ferramentas:
- Xcode: https://itunes.apple.com/br/app/xcode/id497799835?mt=12
- Cocoapods: https://cocoapods.org
- Postman: https://www.getpostman.com 
- Realm Studio: https://realm.io/products/realm-studio
  
#### Bibliotecas 
- Realm: https://realm.io/docs/swift/latest
- Alamofire: https://github.com/Alamofire/Alamofire
- ObjectMapper: https://github.com/Hearst-DD/ObjectMapper
- AlamofireObjectMapper: https://github.com/tristanhimmelman/AlamofireObjectMapper
- SwiftGen: https://github.com/SwiftGen/SwiftGen
- Reusable: https://github.com/AliSoftware/Reusable
- Kingfisher: https://github.com/onevcat/Kingfisher
