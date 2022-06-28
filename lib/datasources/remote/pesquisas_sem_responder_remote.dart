import 'package:hackathon/constantes.dart';
import 'package:hackathon/http/http.dart';
import 'package:hackathon/models/models.dart';


class PesquisasSemResponderRemote{
  final _clienteHttp = ClienteHttp();

  Future<List<PesquisasSemResponder>> get() async {
    final listaSem = await _clienteHttp.getJson(link: linkApiSemResposta);
    return _todasPesquisasSem(listaSem);
  }

  List<PesquisasSemResponder> _todasPesquisasSem(List<dynamic> listaSem) {
    List<PesquisasSemResponder> listaRetorno = [];
    for (var i = 0; i < listaSem.length; i++) {
      listaRetorno.add(PesquisasSemResponder.fromMap(listaSem[i]));
    }
    return listaRetorno;
  }

}