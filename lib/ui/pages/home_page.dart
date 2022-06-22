
import 'package:flutter/material.dart';
import 'package:hackathon/enums/botao_enum.dart';
import 'package:hackathon/ui/components/botao.dart';
import 'package:hackathon/ui/pages/pages.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: const Color(0xFF202024),
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
            Botao(tipo: BotaoEnum.quadrado,
                clique: _abrirListaEmpresa,
                texto: "Empresas Cadastradas")
          ],
        ),
      ),
    );
  }

  void _abrirListaEmpresa() async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) => const ListaEmpresa()));
  }

}

