import 'package:flutter/material.dart';
import 'package:hackathon/enums/botao_enum.dart';
import 'package:hackathon/ui/components/botao.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ) ,
        color: Colors.white,
        child: ListView(
          children: [
            SizedBox(
              width: 250,
              height: 250,
              child: Image.asset("assets/images/logo.png"),
            ),
            const SizedBox(
              height: 80,

            ),
            Botao(clique:(){},texto: "Empresas",tipo: BotaoEnum.quadrado, cor: Colors.black ),

          ],
        ),
      ),
    );
  }
}
