import'package:hackathon/constantes.dart';
import'package:hackathon/http/http.dart';
import'package:hackathon/models/models.dart';
import 'package:hackathon/models/respostas.dart';


class RespostaRemote{

  final _clienteHttp = ClienteHttp();

  Future<Respostas> post() async {
    final resposta = await _clienteHttp.postJson(link: linkApiResposta, body: {
      'survey_id': '',
      'client_id': '',
      'value': '',
    });
    return Respostas.fromMap(resposta);
  }
}
