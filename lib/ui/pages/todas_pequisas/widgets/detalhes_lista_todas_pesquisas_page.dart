import 'package:flutter/material.dart';

import 'package:hackathon/models/models.dart';
import 'package:hackathon/ui/components/campo_texto.dart';

class DetalhesListaPesquisas extends StatelessWidget {

  final Pesquisas pesquisas;


  const DetalhesListaPesquisas(this.pesquisas,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pesquisas.title),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(pesquisas.description),
        ],
      ),

    );
  }
}
