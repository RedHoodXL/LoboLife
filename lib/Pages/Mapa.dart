import 'package:flutter/material.dart';
import 'package:lobolife/Widgets/HeaderHome.dart';
import 'package:url_launcher/url_launcher.dart';

class Movilidad extends StatelessWidget {
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
                  HeaderHomeMov(color: Color(0xff002a4c)),
                  Positioned(
                    top: 44,
                    left: 10,
                    child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.white,
                        iconSize: 30),
                  ),
                  _AppBarCustomHome(
                      widget: Text('Movilidad',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      size: MediaQuery.of(context).size.width * 0.360),
                  Positioned(
                      top: 50,
                      right: 20,
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/perfil.png'),
                          maxRadius: 18)),
                ],
              ),
              Expanded(child: _InicioMov())
            ]));
  }
}

class _InicioMov extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 660,
      width: double.infinity,
      color: Colors.white,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _ListViewIconos(),
            ],
          ),
        ],
      ),
    );
  }
}

class _ListViewIconos extends StatelessWidget {
  openURLC() async {
    // ignore: deprecated_member_use
    if (await canLaunch(
        "https://www.buap.mx/sites/default/files/rutas_stu/Horarios_STU_2017.5.pdf")) {
      await launch(
          "https://www.buap.mx/sites/default/files/rutas_stu/Horarios_STU_2017.5.pdf");
    } else {
      throw "No se puede abrir el link";
    }
  }

  openURLH() async {
    // ignore: deprecated_member_use
    if (await canLaunch(
        "https://www.buap.mx/sites/default/files/rutas_stu/Horarios_STU_2017.4.pdf")) {
      await launch(
          "https://www.buap.mx/sites/default/files/rutas_stu/Horarios_STU_2017.4.pdf");
    } else {
      throw "No se puede abrir el link";
    }
  }

  openURLCCU() async {
    // ignore: deprecated_member_use
    if (await canLaunch(
        "https://www.buap.mx/sites/default/files/rutas_stu/Horarios_STU_2017.7.pdf")) {
      await launch(
          "https://www.buap.mx/sites/default/files/rutas_stu/Horarios_STU_2017.7.pdf");
    } else {
      throw "No se puede abrir el link";
    }
  }

  openURLEA() async {
    // ignore: deprecated_member_use
    if (await canLaunch(
        "https://www.buap.mx/sites/default/files/rutas_stu/Horarios_STU_2017.8.pdf")) {
      await launch(
          "https://www.buap.mx/sites/default/files/rutas_stu/Horarios_STU_2017.8.pdf");
    } else {
      throw "No se puede abrir el link";
    }
  }

  openURLSR() async {
    // ignore: deprecated_member_use
    if (await canLaunch(
        "https://www.buap.mx/sites/default/files/rutas_stu/Horarios_STU_2017.3.pdf")) {
      await launch(
          "https://www.buap.mx/sites/default/files/rutas_stu/Horarios_STU_2017.3.pdf");
    } else {
      throw "No se puede abrir el link";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
      height: 760,
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
                  texto: 'CAPU',
                  icono: IconButton(
                    onPressed: () {
                      openURLC();
                    },
                    icon: Icon(Icons.bus_alert),
                    iconSize: 60,
                  ),
                  color: Color(0xff002a4c)),
              _OpcionsListViewI(
                  texto: 'Heroes',
                  icono: IconButton(
                    onPressed: () {
                      openURLH();
                    },
                    icon: Icon(Icons.bus_alert),
                    iconSize: 60,
                  ),
                  color: Color(0xff002a4c)),
              _OpcionsListViewI(
                  texto: 'Entronque',
                  icono: IconButton(
                    onPressed: () {
                      openURLEA();
                    },
                    icon: Icon(Icons.bus_alert),
                    iconSize: 60,
                  ),
                  color: Color(0xff002a4c)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _OpcionsListViewD(
                  texto: 'CCU - CU',
                  icono: IconButton(
                    onPressed: () {
                      openURLCCU();
                    },
                    icon: Icon(Icons.bus_alert),
                    iconSize: 60,
                  ),
                  color: Color(0xff002a4c)),
              _OpcionsListViewD(
                  texto: 'San Ramon',
                  icono: IconButton(
                    onPressed: () {
                      openURLSR();
                    },
                    icon: Icon(Icons.bus_alert),
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
          height: 155,
          width: 155,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: color),
          child: IconButton(
            icon: icono,
            iconSize: 24.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ),
        SizedBox(height: 5),
        Text(texto, style: TextStyle(fontSize: 15)),
        SizedBox(height: 5),
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
          height: 155,
          width: 155,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: color),
          child: IconButton(
            icon: icono,
            color: Colors.white,
            onPressed: () {},
          ),
        ),
        SizedBox(height: 5),
        Text(texto, style: TextStyle(fontSize: 15)),
        SizedBox(height: 5),
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
