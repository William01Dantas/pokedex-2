# Pokedex Flutter - Um Guia Completo

## Descrição:

    Este repositório contém o código-fonte de um aplicativo Pokedex desenvolvido com Flutter, 
    versão 3.24.1. 
    O aplicativo permite pesquisar, visualizar detalhes e adicionar Pokémon aos favoritos.

### Pré-requisitos:

    Flutter SDK instalado (versão 3.24.1 ou superior)
    Dart SDK instalado (versão 3.2.0 ou superior)
    Um editor de código de sua preferência (e.g., Visual Studio Code, Android Studio)

#### Configuração:

1. Clone o repositório:
   Bash
   git clone https://github.com/seu-repositorio/pokedex-flutter.git

2. Navegue para o diretório do projeto:
   Bash
   cd pokedex-flutter

3. Obtenha as dependências:
   Bash
   flutter pub get

4. Obtenha os arquivos MOBX
   Bash
   dart run build_runner build --delete-conflicting-outputs

5. Execução:
   Conecte um dispositivo físico ou emulador:

   Para dispositivos físicos, certifique-se de que o dispositivo esteja conectado e habilitado para depuração USB.
   Para emuladores, execute o emulador desejado.

6. Execute o aplicativo:
   Bash
   flutter run

##### Testes:

1. Execute os testes unitários:
   Bash
   flutter test
