import 'package:flutter/material.dart';

class TrianglePage extends StatelessWidget {
  const TrianglePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: TrianglePainter(),
      child: Container(),
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;

    Path path = Path();

    path.moveTo(size.width / 2, size.height / 3);
    path.lineTo(10.0, size.height * 0.66);
    path.lineTo(size.width - 10.0, size.height * 0.66);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
