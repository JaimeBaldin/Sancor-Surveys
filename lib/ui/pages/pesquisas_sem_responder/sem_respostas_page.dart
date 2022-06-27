import 'package:flutter/material.dart';
import 'package:hackathon/datasources/remote/pesquisas_sem_responder_remote.dart';
import 'package:hackathon/models/models.dart';
import 'package:hackathon/ui/components/circulo_espera.dart';
import 'package:hackathon/ui/pages/pesquisas_sem_responder/widgets/lista_sem_resposta_page.dart';

class TodasSemResposta extends StatefulWidget {
  const TodasSemResposta({Key? key}) : super(key: key);

  @override
  State<TodasSemResposta> createState() => _TodasSemRespostaState();
}

class _TodasSemRespostaState extends State<TodasSemResposta> {
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
              future: PesquisasSemResponderRemote().get(),
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
                      return ListaSemResponder(snapshot.data as List<PesquisasSemResponder>);
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
