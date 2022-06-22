import 'package:flutter/material.dart';
import 'package:hackathon/datasources/remote/funcionarios_remote.dart';
import 'package:hackathon/models/funcionarios.dart';
import 'package:hackathon/ui/components/circulo_espera.dart';
import 'package:hackathon/ui/pages/funcionarios_page/widgets/lista_funcionarios.dart';

class FuncionariosPage extends StatefulWidget {
  const FuncionariosPage({Key? key}) : super(key: key);

  @override
  State<FuncionariosPage> createState() => _FuncionariosPageState();
}

class _FuncionariosPageState extends State<FuncionariosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Funcionários"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: FuncionariosRemote().get(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                  case ConnectionState.none:
                    return const CirculoEspera();
                  default:
                    if (snapshot.hasError) {
                      return Text("Erro ao exigir a listagem (${snapshot.error.toString()})");
                    }
                    else {
                      return ListaFuncionarios(snapshot.data as List<Funcionarios>);
                    }
                }
              },
            )
          )
        ],
      ),
    );
  }
}
