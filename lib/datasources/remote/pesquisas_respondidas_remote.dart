

import 'package:hackathon/constantes.dart';
import 'package:hackathon/http/http.dart';
import 'package:hackathon/models/models.dart';

class PesquisasRespondidasRemote{
  final _clienteHttp = ClienteHttp();

  Future<List<PesquisasRespondidas>> get() async {
    final listaRespondidas = await _clienteHttp.getJson(link: linkApiRespondidas);
    return _todasPesquisasRespondidas(listaRespondidas);
  }

  List<PesquisasRespondidas> _todasPesquisasRespondidas(List<dynamic> listaRespondidas) {
    List<PesquisasRespondidas> listaRetorno = [];
    for (var i = 0; i < listaRespondidas.length; i++) {
      listaRetorno.add(PesquisasRespondidas.fromMap(listaRespondidas[i]));
    }
    return listaRetorno;
  }

}