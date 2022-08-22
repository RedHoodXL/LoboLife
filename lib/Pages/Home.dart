import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lobolife/Pages/Clases.dart';
import 'package:lobolife/Pages/Details.dart';
import 'package:lobolife/Pages/Foro.dart';
import 'package:lobolife/Pages/Mapa.dart';
import 'package:lobolife/Pages/Usuario.dart';
import 'package:lobolife/Widgets/HeaderHome.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffDCE9EF),
        body: ListView(
          padding: EdgeInsets.only(top: 0),
          physics: BouncingScrollPhysics(),
          children: [
            Stack(
              children: [
                HeaderHome(color: Color(0xff002a4c)),
                Positioned(
                  top: 35,
                  left: 10,
                  child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.exit_to_app),
                      color: Colors.white,
                      iconSize: 40),
                ),
                _AppBarCustomHome(
                    widget: Text('Hola, Enrique',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    size: MediaQuery.of(context).size.width * 0.355),
                Positioned(
                    top: 45,
                    right: 20,
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/perfil.png'),
                        maxRadius: 18)),
                _TarjetaBlancaHeader()
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: _ListViewIconos(),
            )
          ],
        ));
  }
}

class _ListViewIconos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
      height: 460,
      width: double.infinity,
      color: Colors.white,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _OpcionsListViewI(
                  texto: 'Movilidad',
                  icono: IconButton(
                    onPressed: () => Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (_) => Movilidad())),
                    icon: Icon(Icons.airport_shuttle),
                    iconSize: 60,
                  ),
                  color: Color(0xff002a4c)),
              _OpcionsListViewI(
                  texto: 'LoboTime',
                  icono: IconButton(
                    onPressed: () => Navigator.of(context).push(
                        CupertinoPageRoute(builder: (_) => LoboSnapTime())),
                    icon: Icon(Icons.camera_outlined),
                    iconSize: 60,
                  ),
                  color: Color(0xff002a4c)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _OpcionsListViewD(
                  texto: 'Perfil Academico',
                  icono: IconButton(
                    onPressed: () => Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (_) => UserPage())),
                    icon: Icon(Icons.account_circle_outlined),
                    iconSize: 60,
                  ),
                  color: Color(0xff002a4c)),
              _OpcionsListViewD(
                  texto: 'Sugerencias',
                  icono: IconButton(
                    onPressed: () => Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (_) => HelpPage())),
                    icon: Icon(Icons.help),
                    iconSize: 60,
                  ),
                  color: Color(0xff002a4c)),
            ],
          ),
        ],
      ),
    );
  }
}

class _OpcionsListViewI extends StatelessWidget {
  final IconButton icono;
  final String texto;
  final Color color;

  const _OpcionsListViewI(
      {required this.icono, required this.texto, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          height: 165,
          width: 165,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: color),
          child: IconButton(
            icon: icono,
            iconSize: 24.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ),
        Text(texto, style: TextStyle(fontSize: 15)),
      ],
    );
  }
}

class _OpcionsListViewD extends StatelessWidget {
  final IconButton icono;
  final String texto;
  final Color color;

  const _OpcionsListViewD(
      {required this.icono, required this.texto, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          height: 165,
          width: 165,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: color),
          child: IconButton(
            icon: icono,
            color: Colors.white,
            onPressed: () {},
          ),
        ),
        Text(texto, style: TextStyle(fontSize: 15)),
      ],
    );
  }
}

class _TarjetaBlancaHeader extends StatelessWidget {
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
                    Text('TUS CLASES',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff004481),
                            fontWeight: FontWeight.bold)),
                    Text('Viernes',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff9CAFC1),
                            fontWeight: FontWeight.bold)),
                    IconButton(
                        onPressed: () => Navigator.of(context).push(
                            CupertinoPageRoute(builder: (_) => InicioClases())),
                        icon: Icon(Icons.arrow_forward_ios),
                        iconSize: 15,
                        color: Color(0xff9CAFC1))
                  ],
                ),
                SizedBox(height: 20),
                _CuentaHeader(
                    texto: 'Prog. dispositivos moviles',
                    subtexto: '2 hrs',
                    monto: '9:00 AM'),
                SizedBox(height: 10),
                Divider(),
                SizedBox(height: 10),
                _CuentaHeader(
                    texto: 'Ingieneria de software',
                    subtexto: '2 hrs',
                    monto: '11:00 AM'),
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
  final String monto;

  const _CuentaHeader(
      {required this.texto, required this.subtexto, required this.monto});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(texto,
                style: TextStyle(fontSize: 13, color: Color(0xff1873b9))),
            SizedBox(height: 3),
            Text(subtexto,
                style: TextStyle(fontSize: 10, color: Color(0xff9CAFC1))),
          ],
        ),
        SizedBox(width: 20),
        Text(monto,
            style: TextStyle(
                fontSize: 13,
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
