import'package:flutter/material.dart';
import 'package:hackathon/models/models.dart';
import 'package:hackathon/ui/pages/pesquisas_sem_responder/widgets/detalhes_sem_resposta.dart';
import 'package:hackathon/ui/pages/todas_pequisas/widgets/detalhes_lista_todas_pesquisas_page.dart';

class ListaSemResponder extends StatelessWidget {

  final List<PesquisasSemResponder> listaDados;

  const ListaSemResponder(this.listaDados,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      scrollDirection: Axis.vertical,
      itemCount: listaDados.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(
                children: [
                  const SizedBox(width: 8,),
                  Text(
                    listaDados[index].title,
                    style: const TextStyle(fontSize: 36),
                  ),
                ],
              ),
            ),
          ),
          onTap: (){_abrirDetalhes(context, listaDados[index]);},
        );
      },
    );
  }

  void _abrirDetalhes(BuildContext context, PesquisasSemResponder pesquisas) {
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => DetalhesListaSemResponder(pesquisas)));
  }

}
