import 'package:hackathon/constantes.dart';
import 'package:hackathon/helpers/extensions.dart';

class PesquisasRespondidas {
  int id_client;
  int id_survey;
  String title;
  String description;
  int value;

  PesquisasRespondidas({
    required this.id_client,
    required this.id_survey,
    required this.title,
    required this.description,
    required this.value,
  });

  factory PesquisasRespondidas.fromMap(Map<String, dynamic> mapa) {
    return PesquisasRespondidas(
      id_client: mapa['id_client'].toString().toInt(),
      id_survey: mapa['id_survey'].toString().toInt(),
      title: (mapa['title_survey'] ?? '').replaceAll('~/', linkApiRespondidas),
      description: (mapa['description_survey'] ?? '').replaceAll('~/', linkApiRespondidas),
      value: mapa['value'].toString().toInt(),
    );
  }

}