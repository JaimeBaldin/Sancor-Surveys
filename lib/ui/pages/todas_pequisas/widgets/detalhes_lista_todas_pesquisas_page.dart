import 'package:flutter/material.dart';
import 'package:hackathon/constantes.dart';
import 'package:hackathon/enums/botao_enum.dart';
import 'package:hackathon/helpers/extensions.dart';
import 'package:hackathon/models/models.dart';
import 'package:hackathon/models/respostas.dart';
import 'package:hackathon/ui/components/botao.dart';

class DetalhesListaPesquisas extends StatelessWidget {

  final Pesquisas pesquisas;
 // final Respostas respostas;


  const DetalhesListaPesquisas(this.pesquisas, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pesquisas.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
          ),
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    pesquisas.description,
                    style: TextStyle(fontSize: 20),
                  ),
                  Botao(clique: (){}, texto: "Nota entre 1-2",tipo: BotaoEnum.quadrado,),
                ],
              ),
            ),
          )
        ]
      )
    );
  }

}
