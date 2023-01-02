# Um Projeto de Automação de Teste de API em Robot Framework
> Projeto para ajudar os novatos a criar um portfolio 

## Versioning/Versionamento
> Esse projeto não possui um sistema de versionamento.

## History/Histórico
> Esse é o primeiro release

## License/Licença do Projeto
© [Conie Menezes](http://coniemenezes.com/)

## Getting started
> Para tornar mais fácil para você começar a usar o seu GitHub, aqui está uma lista das próximas etapas recomendadas.

## Add your files
```
cd existing_repo
git remote add origin https://github.com/coniemenezes/teste-automatizado-em-robotframework.git
git branch -M main
git push -uf origin main
```

## Já é um profissional? Basta editar este README.md e torná-lo seu. 

## Configuração do projeto
>Robot framework é construído com Python, portanto, é necessário que tenhas a última versão desta tecnologia instalada em sua máquina e pode ser encontrado através na página oficial do Python.

## A instalação do framework e suas bibliotecas auxiliares é feita através do pip, gerenciador de bibliotecas nativo do Python. Proceda com o comando abaixo:
```
$ pip install robotframework
```
>E verifique se a instalação ocorreu corretamente:
```
$ robot --version
```
## A seguir, proceda com a instalação das bibliotecas abaixo, através do pip:
```
RequestsLibrary
Robotframework-jsonlibrary
```
## Execução do projeto
>Para executar os scripts, execute o comando abaixo via terminal estando dentro do diretório raiz do projeto, e passando como argumentos o diretório onde serão inseridos os relatórios e logs da execução e o diretório onde encontram-se os scripts de teste.
```
$ robot -d ./Reports  tests/
```
## Padrões de projeto e boas práticas
>Para trabalhar em um projeto com Robot Framework é fortemente recomendado que o programador leia constantemente sua documentação, e esteja atento aos padrões de projeto do Python, tecnologia utilizada para implementação do framework.
>Lembre-se sempre que o objetivo desta abordagem é construir scripts simples e legíveis. Toda complexidade adicionada ao projeto deve possuir um motivo forte e clara para existir.