import 'package:flutter/material.dart';

class SegundaTela extends StatelessWidget {
  // Dados recebidos da tela inicial
  final String nome;        // final String nome — declara uma variável que receberá o nome enviado pela primeira tela.
  final String email;

  const SegundaTela({super.key, required this.nome, required this.email});    // required this.nome — torna obrigatório informar o nome ao criar a SegundaTela.

  // Método responsável por voltar para a tela anterior
  void voltarTela(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Segunda Tela")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Mostra o nome recebido
            Text("Nome: $nome", style: const TextStyle(fontSize: 25)),

            // Mostra o e-mail recebido
            Text("Email: $email", style: const TextStyle(fontSize: 25)),

            const SizedBox(height: 20),

            // Botão para voltar à tela inicial
            ElevatedButton(
              onPressed: () {
                voltarTela(context);
              },
              child: const Text("Voltar"),
            ),
          ],
        ),
      ),
    );
  }
}
