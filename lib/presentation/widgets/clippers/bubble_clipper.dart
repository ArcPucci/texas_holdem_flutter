import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BubbleClipper extends CustomClipper<Path> {
  BubbleClipper({super.reclip, this.left = true});

  final bool left;

  @override
  Path getClip(Size size) {
    double radius = 29;
    double tailX = 80;
    double tailDepth = 50;
    double xx = left ? 0 : size.width - tailX - 80;

    Path path = Path()
      ..moveTo(radius, 0)
      ..lineTo(size.width - radius, 0)
      ..arcToPoint(Offset(size.width, radius), radius: Radius.circular(radius))
      ..lineTo(size.width, size.height - radius)
      ..arcToPoint(Offset(size.width - radius, size.height),
          radius: Radius.circular(radius))
      ..lineTo(tailX + 35 + xx, size.height)
      ..lineTo(tailX + xx, size.height + tailDepth)
      ..lineTo(tailX - 30 + xx, size.height)
      ..lineTo(radius, size.height)
      ..arcToPoint(Offset(0, size.height - radius),
          radius: Radius.circular(radius))
      ..lineTo(0, radius)
      ..arcToPoint(Offset(radius, 0), radius: Radius.circular(radius))
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class BubblePainter extends CustomPainter {
  BubblePainter({super.repaint, this.left = true});

  final bool left;

  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 6.sp;
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    Paint borderPaint = Paint()
      ..shader = LinearGradient(
        begin: left ? Alignment.topLeft : Alignment.topRight,
        end: left ? Alignment.bottomRight : Alignment.bottomLeft,
        stops: const [-0.5, -0.2, 0.5, 0.95, 1.1],
        colors: const [
          Color(0xFF00420B),
          Color(0xFF19D339),
          Color(0xFF5FFF7A),
          Color(0xFF00A31C),
          Color(0xFF002D08),
        ],
      ).createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    Paint bgPaint = Paint()
      ..color = Colors.black.withOpacity(0.8)
      ..style = PaintingStyle.fill;

    BubbleClipper clipper = BubbleClipper(left: left);
    Path borderPath = clipper.getClip(size);

    canvas.drawPath(borderPath, bgPaint);
    canvas.drawPath(borderPath, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
