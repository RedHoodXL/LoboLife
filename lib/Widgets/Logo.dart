import 'package:flutter/material.dart';

class LogoHeader extends StatelessWidget {
  const LogoHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 60,
      left: MediaQuery.of(context).size.width * 0.30,
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(90),
          boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black26)],
        ),
        child: Align(
            alignment: Alignment.center,
            child: Image.asset("assets/Logo_Icon.png", height: 140)),
      ),
    );
  }
}

class LogoHeaderInf extends StatelessWidget {
  const LogoHeaderInf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 60,
      left: MediaQuery.of(context).size.width * 0.30,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(90),
          boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black26)],
        ),
        child: Align(
            alignment: Alignment.center,
            child: Image.asset("assets/Logo_Icon.png", height: 70)),
      ),
    );
  }
}
