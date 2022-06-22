import 'package:hackathon/constantes.dart';
import 'package:hackathon/helpers/extensions.dart';
import '';

class Funcionarios {
  int id;
  String name;

  Funcionarios({
    required this.id,
    required this.name,
  });

  factory Funcionarios.fromMap(Map<String, dynamic> mapa) {
    return Funcionarios(
      id: mapa['id'].toString().toInt(),
      name: (mapa['name'] ?? '').replaceAll('~/', linkApiCliente),
    );
  }
}