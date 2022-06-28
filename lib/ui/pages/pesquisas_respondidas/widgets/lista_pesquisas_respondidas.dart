import 'package:flutter/material.dart';
import 'package:hackathon/models/models.dart';
import 'package:hackathon/ui/pages/pesquisas_respondidas/widgets/detalhes_respondidas.dart';

class ListaRespondidas extends StatelessWidget {

  final List<PesquisasRespondidas> listaDados;

  const ListaRespondidas(this.listaDados,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      scrollDirection: Axis.vertical,
      itemCount: listaDados.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: Card(
            color: Colors.blueGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22),
              side: const BorderSide(
                color: Colors.purple,
                width: 2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Row(
                children: [
                  const SizedBox(width: 8,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        listaDados[index].title,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
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

  void _abrirDetalhes(BuildContext context, PesquisasRespondidas pesquisas) {
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => DetalhesRespondidas(pesquisas)));
  }

}
