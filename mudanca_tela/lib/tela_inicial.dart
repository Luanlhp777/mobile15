import 'package:flutter/material.dart';
import 'segunda_tela.dart';

// StatelessWidget — usamos porque essa tela não precisa controlar informações que mudam
class TelaInicial extends StatelessWidget {
  TelaInicial({super.key});

  final nome = TextEditingController();
  final email = TextEditingController();

  // Método responsável por abrir a segunda tela
  void abrirSegundaTela(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SegundaTela(nome: nome.text, email: email.text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tela Inicial")),
      body: Padding(                            // Padding: cria um espaçamento de 20 pixels ao redor do conteúdo.
        padding: const EdgeInsets.all(20),
        child: Column(                          // Column: organiza os componentes verticalmente.
          children: [
            TextField(
              controller: nome,
              decoration: const InputDecoration(labelText: "Digite seu nome"),
            ),

            TextField(
              controller: email,
              decoration: const InputDecoration(labelText: "Digite seu email"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                abrirSegundaTela(context);
              },
              child: const Text("Enviar"),
            ),
          ],
        ),
      ),
    );
  }
}
