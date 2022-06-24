import 'package:flutter/material.dart';
import 'package:hackathon/datasources/remote/pesquisas_remote.dart';
import 'package:hackathon/models/pesquisas.dart';
import 'package:hackathon/ui/components/circulo_espera.dart';
import 'package:hackathon/ui/pages/todas_pequisas/widgets/lista_todas_pesquisas.dart';

class TodasPesquisasPage extends StatefulWidget {
  const TodasPesquisasPage({Key? key}) : super(key: key);

  @override
  State<TodasPesquisasPage> createState() => _TodasPesquisasPageState();
}

class _TodasPesquisasPageState extends State<TodasPesquisasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todas as Pesquisas"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: PesquisasRemote().get(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                  case ConnectionState.none:
                    return const CirculoEspera();
                  default:
                    if (snapshot.hasError) {
                      return Text("Erro ao exibir a listagem (${snapshot.error.toString()})");
                    }
                    else {
                      return ListaTodasPesquias(snapshot.data as List<Pesquisas>);
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
