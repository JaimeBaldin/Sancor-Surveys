import 'package:flutter/material.dart';

ThemeData meuTema() {
  const primaryColor = Color(0xFF41356c);


  const appBar = AppBarTheme(
    color: primaryColor,
    centerTitle: true,
  );

  final elevatedButton = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
    ),
  );

return ThemeData(
  appBarTheme: appBar,
  elevatedButtonTheme: elevatedButton,
);



}
