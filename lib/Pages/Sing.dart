import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lobolife/Widgets/Header.dart';
import 'package:lobolife/Widgets/Logo.dart';
import 'package:lobolife/Widgets/TextFieldCustom.dart';
import 'package:lobolife/Pages/Login.dart';

class SignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.only(top: 0),
      physics: BouncingScrollPhysics(),
      children: [
        Stack(
          children: [HeaderSignUp(), LogoHeader()],
        ),
        _Titulo(),
        _TextField(),
        _Botton()
      ],
    ));
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
            child: Text('Registrate',
                style: TextStyle(color: Colors.white, fontSize: 18)),
            onPressed: () => Navigator.of(context).pop()));
  }
}

class _TextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          TextFieldCustom(
              icono: Icons.person, type: TextInputType.text, texto: 'Usuario'),
          SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.mail_outline,
              type: TextInputType.emailAddress,
              texto: 'Matricula'),
          SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.phone,
              type: TextInputType.number,
              texto: 'Correo Electronico'),
          SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.visibility_off,
              type: TextInputType.text,
              pass: true,
              texto: 'Contraseña'),
          SizedBox(height: 20),
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
          TextButton(
            onPressed: () => Navigator.of(context)
                .push(CupertinoPageRoute(builder: (_) => LoginPage())),
            child: Text('Iniciar Sesión',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
          ),
          Text('/', style: TextStyle(fontSize: 18, color: Colors.grey)),
          TextButton(
              onPressed: () => Navigator.of(context)
                  .push(CupertinoPageRoute(builder: (_) => SignPage())),
              child: Text('Resgitrate',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)))
        ],
      ),
    );
  }
}
