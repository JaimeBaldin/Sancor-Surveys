
import 'package:flutter/material.dart';
import 'package:hackathon/enums/botao_enum.dart';
import 'package:hackathon/ui/components/botao.dart';
import 'package:hackathon/ui/components/campo_texto.dart';
import 'package:hackathon/ui/pages/funcionarios_page/funcionarios_page.dart';
import 'package:hackathon/ui/pages/pages.dart';
import 'package:hackathon/ui/pages/tela_menu_page/menu_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(

      //),
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.black87,
        child: ListView(
          children: [
            SizedBox(
              width: 220,
              height: 220,
              child: Image.asset("assets/images/logo.png"),
            ),
            const SizedBox(
              height: 40,

            ),
            CampoTexto(controller:TextEditingController() , texto: "Digite seu E-mail",),
            CampoTexto(controller: TextEditingController(), texto: "Digite a sua senha"),
            Botao(tipo: BotaoEnum.quadrado,
                clique: _abrirListaEmpresa,
                texto: "Entrar"),
          ],
        ),
      ),
    );
  }

  void _abrirListaEmpresa() async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) => const MenuPage()));
  }

}

