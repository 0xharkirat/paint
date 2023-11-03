import 'package:flutter/material.dart';

class CirclePage extends StatelessWidget {
  const CirclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CirclePainter(),
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.strokeWidth = 3.0;
    paint.style = PaintingStyle.stroke;

    Offset c = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(c, size.width / 2 - 10.0, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
