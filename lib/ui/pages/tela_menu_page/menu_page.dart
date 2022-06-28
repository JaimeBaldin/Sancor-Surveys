import 'package:flutter/material.dart';
import 'package:hackathon/datasources/datasources.dart';
import 'package:hackathon/ui/components/botao.dart';
import 'package:hackathon/ui/pages/pesquisas_respondidas/pesquisas_respondidas_page.dart';
import 'package:hackathon/ui/pages/pesquisas_sem_responder/sem_respostas_page.dart';
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
              height: 40,
            ),
            Botao(
                clique: _abirtListaPesquisasSemResposta,
                texto: "Pesquisas sem Responder",
            ),
            const SizedBox(
              height: 40,
            ),
            Botao(clique: _abrirListaPesquisasRespondidas, texto: "Pesquisas Respondidas",),
            const SizedBox(
              height: 150,
            ),
            SizedBox(
              width: 230,
              height: 230,
              child: Image.asset("assets/images/logo.png"),
            ),
          ],
        ),
      ),
    );
  }

  void _abrirListaTodasPesquisas() async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) => const TodasPesquisasPage()));
  }

  void _abirtListaPesquisasSemResposta() async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) => const TodasSemResposta()));
  }

  void _abrirListaPesquisasRespondidas() async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) => const TodasRespondidas()));
  }

}
