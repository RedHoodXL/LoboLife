import 'package:flutter/material.dart';
import 'package:lobolife/Pages/Clases.dart';
import 'package:lobolife/Pages/Foro.dart';
import 'package:lobolife/Pages/Home.dart';
import 'package:lobolife/Pages/Mapa.dart';
import 'package:lobolife/pages/Login.dart';
import 'package:lobolife/pages/Sing.dart';

import 'Pages/Details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LoboLife',
      initialRoute: 'Login',
      routes: {
        'Login': (_) => LoginPage(),
        'Singin': (_) => SignPage(),
        'Home': (_) => Inicio(),
        'Mapa': (_) => Movilidad(),
        'Foro': (_) => LoboSnapTime(),
        'Clases': (_) => InicioClases(),
        'Datails': (_) => HelpPage(),
      },
      home: Scaffold(),
    );
  }
}
