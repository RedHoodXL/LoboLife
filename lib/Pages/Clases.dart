import 'package:flutter/material.dart';
import 'package:lobolife/Widgets/HeaderHome.dart';

class InicioClases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff002a4c),
        body: ListView(
          padding: EdgeInsets.only(top: 0),
          physics: BouncingScrollPhysics(),
          children: [
            Stack(
              children: [
                HeaderHomeClass(color: Color(0xff002a4c)),
                Positioned(
                  top: 40,
                  left: 10,
                  child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      iconSize: 30),
                ),
                _AppBarCustomHome(
                    widget: Text('Horarios de clase',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    size: MediaQuery.of(context).size.width * 0.330),
                Positioned(
                    top: 50,
                    right: 20,
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/perfil.png'),
                        maxRadius: 18)),
              ],
            ),
            _HorarioClass()
          ],
        ));
  }
}

class _HorarioClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 680,
      width: double.infinity,
      color: Color(0xff002a4c),
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _TarjetaBlancaHeader(),
            ],
          ),
        ],
      ),
    );
  }
}

class _TarjetaBlancaHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 110,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          height: 650,
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
                    Text('TODAS TUS CLASES',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff004481),
                            fontWeight: FontWeight.bold)),
                    Text('Viernes',
                        style: TextStyle(
                            fontSize: 11,
                            color: Color(0xff9CAFC1),
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 20),
                _CuentaHeader(
                    texto: 'Prog. dispositivos moviles',
                    subtexto: '2 hrs',
                    hora: '9:00 AM'),
                SizedBox(height: 10),
                Divider(),
                SizedBox(height: 10),
                _CuentaHeader(
                    texto: 'Ingieneria de software',
                    subtexto: '2 hrs',
                    hora: '11:00 AM'),
                SizedBox(height: 10),
                Divider(),
                SizedBox(height: 10),
                _CuentaHeader(
                    texto: 'Base de datos',
                    subtexto: '2 hrs',
                    hora: '01:00 PM'),
                SizedBox(height: 10),
                Divider(),
                SizedBox(height: 10),
                _CuentaHeader(
                    texto: 'Estrcuturas discretas',
                    subtexto: '2 hrs',
                    hora: '03:00 PM'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CuentaHeader extends StatelessWidget {
  final String texto;
  final String subtexto;
  final String hora;

  const _CuentaHeader(
      {required this.texto, required this.subtexto, required this.hora});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(texto,
                style: TextStyle(fontSize: 12, color: Color(0xff1873b9))),
            SizedBox(height: 3),
            Text(subtexto,
                style: TextStyle(fontSize: 9, color: Color(0xff9CAFC1))),
          ],
        ),
        SizedBox(width: 20),
        Text(hora,
            style: TextStyle(
                fontSize: 10,
                color: Color(0xff1873b9),
                fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class _AppBarCustomHome extends StatelessWidget {
  final Widget widget;
  final double size;

  const _AppBarCustomHome({
    required this.widget,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(top: 50, left: size, child: widget);
  }
}
