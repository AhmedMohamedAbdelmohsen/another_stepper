import 'package:flutter/material.dart';

class VerticalLine extends StatelessWidget {
  final double height;
  final Color color;
  final double thickness;
  final bool isDashed;

  VerticalLine({
    this.height = 100.0,
    this.color = Colors.black,
    this.thickness = 1.0,
    this.isDashed = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: CustomPaint(
        painter: _LinePainter(
          color: color,
          thickness: thickness,
          isDashed: isDashed,
        ),
      ),
    );
  }
}

class _LinePainter extends CustomPainter {
  final Color color;
  final double thickness;
  final bool isDashed;

  _LinePainter({
    required this.color,
    required this.thickness,
    required this.isDashed,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = thickness;

    if (isDashed) {
      double dashSpace = 10;
      double dashWidth = 5;
      double startY = 0;
      while (startY < size.height) {
        canvas.drawLine(
          Offset(0, startY),
          Offset(0, startY + dashWidth),
          paint,
        );
        startY += dashSpace;
      }
    } else {
      canvas.drawLine(
        Offset(0, 0),
        Offset(0, size.height),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(_LinePainter oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.thickness != thickness ||
        oldDelegate.isDashed != isDashed;
  }
}
