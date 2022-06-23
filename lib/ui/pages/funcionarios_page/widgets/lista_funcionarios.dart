import 'package:flutter/material.dart';
import 'package:hackathon/models/funcionarios.dart';

class ListaFuncionarios extends StatelessWidget {

  final List<Funcionarios> listaDados;


  const ListaFuncionarios(this.listaDados,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      scrollDirection: Axis.vertical,
      itemCount: listaDados.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: Card(
            //color: C
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(
                children: [
                  const SizedBox(width: 8,),
                  Text(
                    listaDados[index].name,
                    style: const TextStyle(fontSize: 36),
                  ),
                ]
              )
            )
          ),

        );

        },
    );
  }
}
