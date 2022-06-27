import 'package:hackathon/constantes.dart';
import 'package:hackathon/http/http.dart';
import 'package:hackathon/models/models.dart';


class PesquisasSemResponderRemote{
  final _clienteHttp = ClienteHttp();

  Future<List<PesquisasSemResponder>> get() async {
    final listaDados = await _clienteHttp.getJson(link: linkApiSemResposta);
    return _todasPesquisasSem(listaDados);
  }

  List<PesquisasSemResponder> _todasPesquisasSem(List<dynamic> listaDados) {
    List<PesquisasSemResponder> listaRetorno = [];
    for (var i = 0; i < listaDados.length; i++) {
      listaRetorno.add(PesquisasSemResponder.fromMap(listaDados[i]));
    }
    return listaRetorno;
  }

}