import 'package:flutter/material.dart';
import 'dart:math';

class DailyPosts extends StatelessWidget {
  final List<int> postsByHour;

  const DailyPosts({super.key, required this.postsByHour});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(400, 400),
      painter: _DailyPostsPainter(postsByHour),
    );
  }
}

class _DailyPostsPainter extends CustomPainter {
  final List<int> postsByHour;
  final double maxRadius = 150;

  _DailyPostsPainter(this.postsByHour);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    final fillPaint = Paint()
      ..color = Colors.green.withOpacity(0.5)
      ..style = PaintingStyle.fill;

    final textPainter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    final maxPosts = postsByHour.reduce(max);

    final path = Path();
    for (int i = 0; i < 24; i++) {
      final angle = (2 * pi / 24) * (i - 6);
      final normalizedLength = (postsByHour[i] / maxPosts) * maxRadius;

      final endPoint = Offset(
        center.dx + normalizedLength * cos(angle),
        center.dy + normalizedLength * sin(angle),
      );

      if (i == 0) {
        path.moveTo(endPoint.dx, endPoint.dy);
      } else {
        path.lineTo(endPoint.dx, endPoint.dy);
      }

      paint.color = Colors.blueAccent;
      canvas.drawLine(center, endPoint, paint);

      textPainter.text = TextSpan(
        text: postsByHour[i].toString(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 12,
        ),
      );
      textPainter.layout();
      final textOffset = Offset(
        endPoint.dx - textPainter.width / 2,
        endPoint.dy - textPainter.height / 2,
      );
      textPainter.paint(canvas, textOffset);
    }

    path.close();
    canvas.drawPath(path, fillPaint);

    for (int i = 0; i < 24; i++) {
      final angle = (2 * pi / 24) * (i - 6);
      final hourText = '${i.toString().padLeft(2, '0')}:00';
      final hourTextPainter = TextPainter(
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
        text: TextSpan(
          text: hourText,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 10,
          ),
        ),
      );
      hourTextPainter.layout();

      final hourOffset = Offset(
        center.dx + (maxRadius + 25) * cos(angle) - hourTextPainter.width / 2,
        center.dy + (maxRadius + 25) * sin(angle) - hourTextPainter.height / 2,
      );
      hourTextPainter.paint(canvas, hourOffset);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
