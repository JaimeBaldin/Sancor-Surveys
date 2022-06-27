import 'package:hackathon/constantes.dart';
import 'package:hackathon/helpers/extensions.dart';

class Pesquisas {
  int id;
  String title;
  String description;

  Pesquisas({
    required this.id,
    required this.title,
    required this.description,
  });

  factory Pesquisas.fromMap(Map<String, dynamic> mapa) {
    return Pesquisas(
      id: mapa['id'].toString().toInt(),
      title: (mapa['title'] ?? '').replaceAll('~/', linkApiPesquisa),
      description:(mapa['description'] ?? '').replaceAll('~/', linkApiPesquisa) ,
    );
  }

}