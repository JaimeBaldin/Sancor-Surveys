import 'package:flutter/material.dart';
import 'package:hackathon/models/pesquisas.dart';
import 'package:hackathon/ui/pages/todas_pequisas/widgets/detalhes_lista_todas_pesquisas_page.dart';

class ListaTodasPesquias extends StatelessWidget {

  final List<Pesquisas> listaDados;
  const ListaTodasPesquias(this.listaDados,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
        scrollDirection: Axis.vertical,
        itemCount: listaDados.length,
        itemBuilder: (context,index){
        return GestureDetector(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Row(
                children: [
                  const SizedBox(width: 8,),
                 Text(
                    listaDados[index].title,
                    style: const TextStyle(fontSize: 20),
                 ),
                ]
              ),
            ),
          ),
          onTap: (){ _abrirDetalhesPesquisas(context, listaDados[index]);},
        );
      },
    );
  }

  void _abrirDetalhesPesquisas(BuildContext context, Pesquisas pesquisas) {
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => DetalhesListaPesquisas(pesquisas)));
  }

}
