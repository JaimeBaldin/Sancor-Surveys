import 'package:hackathon/constantes.dart';
import 'package:hackathon/http/http.dart';
import 'package:hackathon/models/models.dart';

class PesquisasRemote{
  final _clienteHttp = ClienteHttp();

  Future<List<Pesquisas>> get() async {
    final listaDados = await _clienteHttp.getJson(link: linkApiPesquisa);
    return _todasPesquisas(listaDados);
  }

  List<Pesquisas> _todasPesquisas(List<dynamic> listaDados) {
    List<Pesquisas> listaRetorno = [];
    for (var i = 0; i < listaDados.length; i++) {
      listaRetorno.add(Pesquisas.fromMap(listaDados[i]));
    }
    return listaRetorno;
  }

}