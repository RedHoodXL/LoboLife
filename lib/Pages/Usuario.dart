import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lobolife/Widgets/HeaderHome.dart';
import 'package:lobolife/Pages/Login.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.only(top: 0),
      physics: BouncingScrollPhysics(),
      children: [
        Stack(
          children: [
            HeaderHome(color: Color(0xff002a4c)),
            Positioned(
                top: 50,
                left: 10,
                child: IconButton(
                    icon: Icon(Icons.arrow_back_ios_new,
                        color: Colors.white, size: 30),
                    onPressed: () => Navigator.pop(context))),
            Positioned(
                top: 50,
                right: 20,
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/perfil.png'),
                    maxRadius: 18)),
            _TarjetaAzulHeader(),
          ],
        ),
        SizedBox(height: 20),
        _QuickActions(),
        SizedBox(height: 20),
        _ContainerActions(
            color: Color(0xff002a4c),
            texto: ' Correo y contraseña',
            icono: IconButton(onPressed: null, icon: Icon(Icons.lock_open))),
        _ContainerActions(
            color: Color(0xff002a4c),
            texto: ' Cerrar Sesion',
            icono: IconButton(
                onPressed: () => Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (_) => LoginPage())),
                icon: Icon(Icons.exit_to_app))),
      ],
    ));
  }
}

class _ContainerActions extends StatelessWidget {
  final IconButton icono;
  final Color color;
  final String texto;

  const _ContainerActions(
      {required this.icono, required this.color, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 35, bottom: 18),
      padding: EdgeInsets.only(right: 30),
      height: 60,
      width: 150,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50), bottomRight: Radius.circular(50))),
      child: Row(
        children: [
          SizedBox(width: 25),
          IconButton(
            icon: icono,
            color: Colors.white,
            onPressed: () {},
          ),
          Text(texto, style: TextStyle(fontSize: 12, color: Colors.white)),
        ],
      ),
    );
  }
}

class _QuickActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Text('Acciones Rapidas',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)));
  }
}

class _TarjetaAzulHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 110,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 240,
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Container(
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Informacion del Alumno',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff004481),
                            fontWeight: FontWeight.bold)),
                    Text('BUAP',
                        style: TextStyle(
                            fontSize: 11,
                            color: Color(0xff9CAFC1),
                            fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(height: 20),
                Text('Jose Enrique Guerra Ruiz',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Text('Matricula: 201937610',
                    style: TextStyle(fontSize: 11, color: Colors.black)),
                SizedBox(height: 5),
                Text('Estatus: Vigente',
                    style: TextStyle(fontSize: 11, color: Colors.black)),
                SizedBox(height: 20),
                Text('Promedio General: 8',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Text('  Porcentaje : 38% ',
                    style: TextStyle(fontSize: 12, color: Colors.black)),
                SizedBox(height: 5),
                Text('Licenciatura en ciencias de la computacion',
                    style: TextStyle(fontSize: 11, color: Colors.black)),
                SizedBox(height: 5),
                Text('Facultad de ciencias de la computacion',
                    style: TextStyle(fontSize: 11, color: Colors.black)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
