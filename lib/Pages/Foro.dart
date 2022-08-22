import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lobolife/Widgets/HeaderHome.dart';
import 'package:lobolife/Widgets/PostLST.dart';

class LoboSnapTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(top: 0),
        children: [
          Stack(
            children: [
              HeaderHomeSnapTime(color: Colors.white10),
              Positioned(
                  top: 45,
                  left: 10,
                  child: IconButton(
                      icon: Icon(Icons.add, color: Colors.black, size: 35),
                      onPressed: null)),
              _AppBarCustomHome(
                  widget: Text(
                    'LoboSanpTime',
                    style: GoogleFonts.pacifico(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
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
          Expanded(child: _InicioSnapTime()),
        ],
      ),
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
    return Positioned(top: 45, left: size, child: widget);
  }
}

class _InicioSnapTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 600,
      width: double.infinity,
      color: Colors.white,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Post(
                  name: ' BUAP ',
                  perfil: 'h1.png',
                  photo: 'p5.jpg',
                  time: '3h ago'),
              Post(
                  name: 'Enrique Guerra',
                  perfil: 'h2.png',
                  photo: 'p3.jpg',
                  time: '4h ago'),
              Post(
                  name: 'FCC BUAP',
                  perfil: 'h3.png',
                  photo: 'p4.jpg',
                  time: '2d ago'),
              Post(
                  name: 'BUAP ',
                  perfil: 'h1.png',
                  photo: 'p5.jpg',
                  time: '3d ago'),
            ],
          ),
        ],
      ),
    );
  }
}
