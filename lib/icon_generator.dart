import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'dart:math' show pi;

class YinYangPainter extends CustomPainter {
  final Color backgroundColor;
  final Color foregroundColor;

  YinYangPainter({
    this.backgroundColor = Colors.white,
    this.foregroundColor = Colors.black,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;
    
    // Background circle
    final paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;
    
    canvas.drawCircle(center, radius, paint);

    // Draw the main yin yang shape
    final yinYangPath = Path()
      ..addArc(
        Rect.fromCircle(center: center, radius: radius),
        -pi / 2,
        pi,
      );

    // Add the curved line
    final controlPoint1 = Offset(
      center.dx + radius / 2,
      center.dy,
    );
    final controlPoint2 = Offset(
      center.dx - radius / 2,
      center.dy,
    );
    
    yinYangPath
      ..cubicTo(
        controlPoint1.dx,
        controlPoint1.dy + radius / 2,
        controlPoint2.dx,
        controlPoint2.dy + radius / 2,
        center.dx - radius,
        center.dy,
      )
      ..close();

    paint.color = foregroundColor;
    canvas.drawPath(yinYangPath, paint);

    // Draw the small circles
    final smallRadius = radius / 6;
    paint.color = backgroundColor;
    canvas.drawCircle(
      Offset(center.dx, center.dy - radius / 2),
      smallRadius,
      paint,
    );

    paint.color = foregroundColor;
    canvas.drawCircle(
      Offset(center.dx, center.dy + radius / 2),
      smallRadius,
      paint,
    );

    // Draw outline
    paint
      ..color = foregroundColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = radius / 16;
    canvas.drawCircle(center, radius - paint.strokeWidth / 2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

Future<void> saveYinYangIcon() async {
  const size = 512.0;
  final recorder = ui.PictureRecorder();
  final canvas = Canvas(recorder);
  final painter = YinYangPainter(
    backgroundColor: Colors.white,
    foregroundColor: Colors.blue,
  );
  
  painter.paint(canvas, const Size(size, size));
  final picture = recorder.endRecording();
  final image = await picture.toImage(size.toInt(), size.toInt());
  final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
  
  if (byteData != null) {
    // Save the image data to a file
    // Implementation depends on platform-specific file I/O
  }
} 