import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lobolife/Pages/Home.dart';
import 'package:lobolife/Widgets/Header.dart';
import 'package:lobolife/Widgets/Logo.dart';
import 'package:lobolife/Widgets/TextFieldCustom.dart';
import 'package:lobolife/pages/Sing.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 0),
        physics: BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              HeaderLogin(),
              LogoHeader(),
            ],
          ),
          _Titulo(),
          SizedBox(height: 40),
          _EmailAndPassword(),
          SizedBox(height: 40),
          _Botton(),
        ],
      ),
    );
  }
}

class _Botton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: Color(0xff004481), borderRadius: BorderRadius.circular(50)),
      child: TextButton(
          child: Text('Iniciar Sesion',
              style: TextStyle(color: Colors.white, fontSize: 18)),
          onPressed: () => Navigator.of(context)
              .push(CupertinoPageRoute(builder: (_) => Inicio()))),
    );
  }
}

class _EmailAndPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          TextFieldCustom(
              icono: Icons.mail_outline,
              type: TextInputType.emailAddress,
              texto: 'Matricula'),
          SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.visibility_off,
              type: TextInputType.text,
              pass: true,
              texto: 'Contraseña'),
        ],
      ),
    );
  }
}

class _Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: [
          Text('Iniciar Sesión',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          Text(' / ', style: TextStyle(fontSize: 17, color: Colors.grey)),
          TextButton(
              onPressed: () => Navigator.of(context)
                  .push(CupertinoPageRoute(builder: (_) => SignPage())),
              child: Text('Registrate',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)))
        ],
      ),
    );
  }
}
