import 'package:flutter/material.dart';
import 'package:hackathon/datasources/datasources.dart';
import 'package:hackathon/models/models.dart';
import 'package:hackathon/ui/components/circulo_espera.dart';
import 'package:hackathon/ui/pages/pesquisas_respondidas/widgets/lista_pesquisas_respondidas.dart';


class TodasRespondidas extends StatefulWidget {
  const TodasRespondidas({Key? key}) : super(key: key);

  @override
  State<TodasRespondidas> createState() => _TodasRespondidasState();
}

class _TodasRespondidasState extends State<TodasRespondidas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pesquisas Respondidas"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: PesquisasRespondidasRemote().get(),
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
                      return ListaRespondidas(snapshot.data as List<PesquisasRespondidas>);
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
