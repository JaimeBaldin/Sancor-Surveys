import 'package:flutter/material.dart';
import 'package:hackathon/ui/components/botao.dart';
import 'package:hackathon/ui/pages/todas_pequisas/todas_pesquisas_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),

      body: Container(
        color: Colors.black87,
        padding: const EdgeInsets.only(
          top: 50,
          left: 50,
          right: 50,
        ),
        child: ListView(
          children: [
            Botao(clique: _abrirListaTodasPesquisas, texto: "Pesquisas Pendentes"),
            const SizedBox(
              height: 80,
            ),
            SizedBox(
              width: 150,
              height: 150,
              child: Image.asset("assets/images/logo.png"),
            ),
            const SizedBox(
              height: 80,
            ),
            Botao(clique: (){}, texto: "Pesquisas Respondidas",)
          ],
        ),
      ),
    );
  }

  void _abrirListaTodasPesquisas() async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) => const TodasPesquisasPage()));
  }


}
