import 'package:flutter/material.dart';
import 'package:hackathon/helpers/extensions.dart';
import 'package:hackathon/models/models.dart';


class DetalhesRespondidas extends StatelessWidget {

  final PesquisasRespondidas pesquisas;

  const DetalhesRespondidas(this.pesquisas,{Key? key}) : super(key: key);

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
                  Text(
                    pesquisas.value.toInt().toString(),
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          )
        ]
      )
    );
  }
}




