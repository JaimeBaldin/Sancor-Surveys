import 'package:flutter/material.dart';
import 'package:hackathon/models/pesquisas.dart';

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
            //color: C
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
        );
      },
    );
  }
}
