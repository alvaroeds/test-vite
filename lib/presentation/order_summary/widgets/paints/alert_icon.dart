import 'package:flutter/rendering.dart';

//Add this CustomPaint widget to the Widget Tree
/* CustomPaint(
    size = const Size(25, 25*3.12), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
    painter = RPSCustomPainter(),
    
)
 */
class AlertIconCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path_0 = Path()
      ..moveTo(size.width * 0.02713308, size.height * 0.1766936)
      ..cubicTo(
          size.width * 0.03573456,
          size.height * 0.2052885,
          size.width * 0.05371960,
          size.height * 0.2336269,
          size.width * 0.06857640,
          size.height * 0.2622218)
      ..cubicTo(
          size.width * 0.1303504,
          size.height * 0.3794359,
          size.width * 0.1929068,
          size.height * 0.4966513,
          size.width * 0.2554628,
          size.height * 0.6138654)
      ..cubicTo(
          size.width * 0.2781392,
          size.height * 0.6563718,
          size.width * 0.3782288,
          size.height * 0.6836795,
          size.width * 0.5072520,
          size.height * 0.6836795)
      ..cubicTo(
          size.width * 0.6362720,
          size.height * 0.6836795,
          size.width * 0.7363640,
          size.height * 0.6566295,
          size.width * 0.7590400,
          size.height * 0.6138654)
      ..cubicTo(
          size.width * 0.8348880,
          size.height * 0.4724346,
          size.width * 0.9107360,
          size.height * 0.3307474,
          size.width * 0.9850240,
          size.height * 0.1890590)
      ..cubicTo(
          size.width * 1.023340,
          size.height * 0.1153813,
          size.width * 0.8872800,
          size.height * 0.04041538,
          size.width * 0.6722440,
          size.height * 0.01594205)
      ..cubicTo(
          size.width * 0.6362720,
          size.height * 0.01182017,
          size.width * 0.5979560,
          size.height * 0.009501628,
          size.width * 0.5604240,
          size.height * 0.006410256)
      ..cubicTo(
          size.width * 0.5252360,
          size.height * 0.006410256,
          size.width * 0.4900480,
          size.height * 0.006410256,
          size.width * 0.4548600,
          size.height * 0.006410256)
      ..cubicTo(
          size.width * 0.4470400,
          size.height * 0.006925487,
          size.width * 0.4400040,
          size.height * 0.007955949,
          size.width * 0.4321840,
          size.height * 0.008213564)
      ..cubicTo(
          size.width * 0.1882148,
          size.height * 0.01929103,
          size.width * 0.002892632,
          size.height * 0.09528731,
          size.width * 0.02713308,
          size.height * 0.1766936)
      ..close();

    final paint0Fill = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xff00AC69).withOpacity(1);
    canvas.drawPath(path_0, paint0Fill);

    final path_1 = Path()
      ..moveTo(size.width * 0.5095520, size.height * 0.7506526)
      ..cubicTo(
          size.width * 0.3062444,
          size.height * 0.7503949,
          size.width * 0.1381248,
          size.height * 0.8047513,
          size.width * 0.1381248,
          size.height * 0.8709577)
      ..cubicTo(
          size.width * 0.1381248,
          size.height * 0.9410295,
          size.width * 0.2976428,
          size.height * 0.9938397,
          size.width * 0.5087680,
          size.height * 0.9938397)
      ..cubicTo(
          size.width * 0.7191160,
          size.height * 0.9935821,
          size.width * 0.8778520,
          size.height * 0.9410295,
          size.width * 0.8778520,
          size.height * 0.8712154)
      ..cubicTo(
          size.width * 0.8778520,
          size.height * 0.8052667,
          size.width * 0.7112960,
          size.height * 0.7509090,
          size.width * 0.5095520,
          size.height * 0.7506526)
      ..close();

    final paint1Fill = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xff00AC69).withOpacity(1);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
