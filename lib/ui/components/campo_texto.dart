import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final TextEditingController controller;
  final String texto;
  final TextInputType? teclado;
  final IconData? icone;

  const CampoTexto({
    required this.controller,
    required this.texto,
    this.teclado,
    this.icone,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        controller: controller,
        keyboardType: teclado ?? TextInputType.text,
        decoration:  InputDecoration(
          filled: true,
            fillColor: Colors.black12,
            focusedBorder:const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white24,
                width: 2,
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF41356c),
                width: 3,
              )
            ),
            labelText: texto,
            labelStyle: const TextStyle(
              color: Colors.white,
            ),
            border: const OutlineInputBorder()
        ),
      ),
    );
  }
}
