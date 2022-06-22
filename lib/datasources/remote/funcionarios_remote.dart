import 'package:hackathon/constantes.dart';
import 'package:hackathon/http/http.dart';
import 'package:hackathon/models/funcionarios.dart';

class FuncionariosRemote {
  final _link = "${linkApiCliente}";
  final _clienteHttp = ClienteHttp();

  Future<List<Funcionarios>> get() async {
    final listaDados = await _clienteHttp.getJson(link: _link);
    return _todosFuncionarios(listaDados);
  }

  List<Funcionarios> _todosFuncionarios(List<dynamic> listaDados) {
    List<Funcionarios> listaRetorno = [];
    for (var i = 0; i < listaDados.length; i++) {
      listaRetorno.add(Funcionarios.fromMap(listaDados[i]));
    }
    return listaRetorno;
  }


}