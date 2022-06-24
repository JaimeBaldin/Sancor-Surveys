import 'package:flutter/material.dart';

import 'package:hackathon/models/models.dart';

class DetalhesListaPesquisas extends StatelessWidget {

  final Pesquisas pesquisas;
  final Pesquisas descricao;

  const DetalhesListaPesquisas(this.descricao,this.pesquisas,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(pesquisas.title),
        centerTitle: true,
        ),
      body: Column(
       children: [
         SizedBox(width: 40,),
         Text(descricao.description),
       ],
      ),
    );
  }
}
