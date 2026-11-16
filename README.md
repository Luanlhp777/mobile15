# 📱 Mobile15 — Navegação entre Telas com Flutter

Projeto desenvolvido durante as aulas de **Desenvolvimento Mobile com Flutter**, na **ETEC Albert Einstein**, com orientação do professor **Alex Sander**.

O objetivo da atividade é compreender como realizar a navegação entre diferentes telas de um aplicativo Flutter e como transmitir informações de uma tela para outra.

## 🎯 Objetivos

- Implementar navegação entre telas utilizando `Navigator.push()`.
- Retornar à tela anterior utilizando `Navigator.pop()`.
- Utilizar `MaterialPageRoute` para definir a tela de destino.
- Capturar informações digitadas com `TextEditingController`.
- Enviar dados entre widgets por meio de construtores.
- Exibir os dados recebidos na segunda tela.

## 🛠️ Tecnologias utilizadas

- **Flutter** — Framework para desenvolvimento de aplicativos.
- **Dart** — Linguagem de programação.
- **Material Design** — Componentes visuais do Flutter.
- **Visual Studio Code** — Ambiente de desenvolvimento.
- **Git e GitHub** — Versionamento e armazenamento do projeto.

## 📂 Estrutura do projeto

```text
mudanca_tela/
├── lib/
│   ├── main.dart
│   ├── tela_inicial.dart
│   └── segunda_tela.dart
├── pubspec.yaml
└── README.md
```

### `main.dart`

Arquivo responsável por iniciar o aplicativo com `runApp()` e definir `TelaInicial()` como a primeira tela do `MaterialApp`.

### `tela_inicial.dart`

Contém a interface principal, responsável por:

- Receber o nome do usuário.
- Receber o e-mail do usuário.
- Capturar os valores com `TextEditingController`.
- Enviar os dados para a segunda tela.
- Realizar a navegação com `Navigator.push()`.

### `segunda_tela.dart`

Responsável por:

- Receber nome e e-mail pelo construtor.
- Exibir as informações recebidas.
- Permitir retornar à tela anterior utilizando `Navigator.pop()`.

## 📚 Desenvolvimento da atividade

### Exemplo 01 — Navegação simples

Inicialmente, foram criadas duas telas.

Na primeira, um botão permite abrir a segunda tela utilizando:

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => const SegundaTela(),
  ),
);
```

Na segunda tela, o retorno é realizado com:

```dart
Navigator.pop(context);
```

**Resultado:** navegação entre as duas telas funcionando corretamente.

### Exemplo 02 — Envio de dados entre telas

Na segunda etapa, adicionamos dois campos de texto à tela inicial, utilizando `TextField` e `TextEditingController`.

```dart
final nome = TextEditingController();
final email = TextEditingController();
```

Os valores digitados são enviados durante a navegação:

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => SegundaTela(
      nome: nome.text,
      email: email.text,
    ),
  ),
);
```

A segunda tela recebe os valores por meio de seu construtor:

```dart
final String nome;
final String email;

const SegundaTela({
  super.key,
  required this.nome,
  required this.email,
});
```

Os dados são apresentados utilizando interpolação de strings:

```dart
Text("Nome: $nome");
Text("Email: $email");
```

**Resultado:** os dados digitados na primeira tela são apresentados corretamente na segunda.

## 🔄 Fluxo do aplicativo

```text
        TELA INICIAL
              |
      Digitar nome e e-mail
              |
        Botão "Enviar"
              |
       Navigator.push()
              |
              v
         SEGUNDA TELA
              |
       Exibir nome e e-mail
              |
         Botão "Voltar"
              |
       Navigator.pop()
              |
              v
         TELA INICIAL
```

## 🧪 Testes realizados

- [x] Inicialização do aplicativo.
- [x] Navegação da primeira para a segunda tela.
- [x] Retorno para a tela inicial.
- [x] Exibição dos campos de nome e e-mail.
- [x] Captura dos valores digitados.
- [x] Envio de dados entre as telas.
- [x] Exibição das informações recebidas na segunda tela.

## ▶️ Como executar

É necessário ter o Flutter SDK instalado e configurado.

Clone o repositório:

```bash
git clone https://github.com/Luanlhp777/mobile15.git
```

Acesse a pasta do projeto:

```bash
cd mobile15/mudanca_tela
```

Instale as dependências:

```bash
flutter pub get
```

Execute o aplicativo:

```bash
flutter run
```

## 💡 Conceitos aprendidos

Durante o desenvolvimento, foram praticados os seguintes conceitos:

- Organização do código em diferentes arquivos Dart.
- Criação de widgets com `StatelessWidget`.
- Navegação utilizando o `Navigator`.
- Utilização do `BuildContext`.
- Captura de dados com `TextEditingController`.
- Passagem de parâmetros por construtores.
- Utilização de `required` para parâmetros obrigatórios.
- Interpolação de strings para apresentar informações.

## 📖 Referência

Material didático: **18 — Flutter — Mudança de Tela**

Professor: **Alex Sander**

Repositório de referência disponibilizado no material:

https://github.com/profalexresende/flutter_mudanca_tela

## 👨‍💻 Autor

**Luan Araujo**

Estudante do curso Técnico em Desenvolvimento de Sistemas — ETEC Albert Einstein.

GitHub: https://github.com/Luanlhp777