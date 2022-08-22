import 'package:flutter/material.dart';

class HeaderLogin extends StatelessWidget {
  const HeaderLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderLoginPanter(),
      ),
    );
  }
}

class _HeaderLoginPanter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    paint.color = Color(0xff004481);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = new Path();
    path.lineTo(0, size.height * 0.6);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.62,
        size.width * 0.6, size.height * 0.45);
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.35, size.width, size.height * 0.39);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegated) => true;
}

class HeaderSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderSignUpPainter(),
      ),
    );
  }
}

class _HeaderSignUpPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    paint.color = Color(0xff004481);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = new Path();
    path.lineTo(0, size.height * 0.6);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.62,
        size.width * 0.6, size.height * 0.45);
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.35, size.width, size.height * 0.39);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
