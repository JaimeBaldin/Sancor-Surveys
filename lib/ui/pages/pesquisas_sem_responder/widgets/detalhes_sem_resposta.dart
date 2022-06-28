import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hackathon/constantes.dart';
import 'package:hackathon/enums/botao_enum.dart';
import 'package:hackathon/models/models.dart';
import 'package:hackathon/models/respostas.dart';
import 'package:hackathon/ui/components/botao.dart';
import 'package:http/http.dart' as http;

class DetalhesListaSemResponder extends StatelessWidget {

  final PesquisasSemResponder pesquisas;



  const DetalhesListaSemResponder(this.pesquisas,{Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pesquisas.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Align(
            alignment: Alignment.center,
          ),
          GestureDetector(
            child: Padding(
              padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    pesquisas.description,
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Botao(clique: (){
                    //enviarResposta(Respostas(survey_id: 19 , client_id: 6, value: 02));
                  } ,texto: "Nota entre 1-2",tipo: BotaoEnum.quadrado,),
                  Botao(clique: (){
                    //enviarResposta(Respostas(survey_id: 19 , client_id: 6, value: 02));
                  } ,texto: "Nota entre 3-4",tipo: BotaoEnum.quadrado,),
                  Botao(clique: (){
                    //enviarResposta(Respostas(survey_id: 19 , client_id: 6, value: 02));
                  } ,texto: "Nota entre 5-6",tipo: BotaoEnum.quadrado,),
                  Botao(clique: (){
                    //enviarResposta(Respostas(survey_id: 19 , client_id: 6, value: 02));
                  } ,texto: "Nota entre 7-8",tipo: BotaoEnum.quadrado,),
                  Botao(clique: (){
                    //enviarResposta(Respostas(survey_id: 19 , client_id: 6, value: 02));
                  } ,texto: "Nota entre 9-10",tipo: BotaoEnum.quadrado,),
                ],
              ),
            ),
          )
        ]
      )
    );
  }



  Future<http.Response> enviarResposta(Respostas respostas) async {
    const _linkRespostas = linkApiResposta;
    return http.post(
      Uri.parse(_linkRespostas),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'id_client':'',
        'id_survey': '',
        'value': '',
      }),
    );
  }

}
