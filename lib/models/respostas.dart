

import 'package:hackathon/helpers/extensions.dart';

class Respostas {
  int survey_id;
  int client_id;
  int value;

  Respostas({
    required this.survey_id,
    required this.client_id,
    required this.value,
  });

  factory Respostas.fromMap(Map<String, dynamic> mapa) {
    return Respostas(
      survey_id: mapa['survey_id'].toString().toInt(),
      client_id: mapa['client_id'].toString().toInt(),
      value: mapa['value'].toString().toInt(),
    );
  }
}