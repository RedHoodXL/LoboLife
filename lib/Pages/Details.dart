import 'package:flutter/material.dart';
import 'package:lobolife/Widgets/HeaderHome.dart';
import 'package:lobolife/Widgets/Logo.dart';

class HelpPage extends StatelessWidget {
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
        _TarjetaAzulHeaderINF(),
      ],
    ));
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
                    Text('Sugerencias',
                        style: TextStyle(
                            fontSize: 17,
                            color: Color(0xff004481),
                            fontWeight: FontWeight.bold)),
                    Text('BUAP',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff9CAFC1),
                            fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(height: 20),
                Text('jose.guerraru@alumno.buap.mx',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Text('Envia un correo electronico',
                    style: TextStyle(fontSize: 14, color: Colors.black)),
                SizedBox(height: 5),
                Text('Asunto: LoboLife App ',
                    style: TextStyle(fontSize: 14, color: Colors.black)),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TarjetaAzulHeaderINF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 110,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 340,
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Container(
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Informacion',
                        style: TextStyle(
                            fontSize: 17,
                            color: Color(0xff004481),
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 20),
                LogoHeaderInf(),
                SizedBox(height: 20),
                Text('LoboLife',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 30),
                Text('Version de la APP:          1.0',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    )),
                SizedBox(height: 5),
                Text('Desarrollador: Enrique Guerra Ruiz',
                    style: TextStyle(fontSize: 14, color: Colors.black)),
                SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
