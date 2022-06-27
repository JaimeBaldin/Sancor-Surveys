import 'package:hackathon/constantes.dart';
import 'package:hackathon/helpers/extensions.dart';

class PesquisasSemResponder {
  int id;
  String title;
  String description;

  PesquisasSemResponder({
    required this.id,
    required this.title,
    required this.description,
  });

  factory PesquisasSemResponder.fromMap(Map<String, dynamic> mapa) {
    return PesquisasSemResponder(
      id: mapa['id'].toString().toInt(),
      title: (mapa['title'] ?? '').replaceAll('~/', linkApiSemResposta),
      description:(mapa['description'] ?? '').replaceAll('~/', linkApiSemResposta) ,
    );
  }

}