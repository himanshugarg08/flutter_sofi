import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpperPortion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(64),
              bottomRight: Radius.circular(64)),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff10072c),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(64),
                        bottomRight: Radius.circular(64))),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.78,
                top: (-1) * MediaQuery.of(context).size.height * 0.04,
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.height * 0.35,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffff7462),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                left: (-1) * MediaQuery.of(context).size.width * 0.5,
                top: MediaQuery.of(context).size.height * 0.28,
                height: MediaQuery.of(context).size.height * 0.42,
                width: MediaQuery.of(context).size.height * 0.42,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff1e91ff),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Sending",
                    style:
                        GoogleFonts.notoSans(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 95,
                  ),
                  Stack(
                    children: [
                      CustomPaint(
                        painter: DashedCirclePainter(),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/user.jpg"),
                        maxRadius: 42,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Anna Franklin",
                    style:
                        GoogleFonts.notoSans(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "20 Sept 2021",
                    style:
                        GoogleFonts.notoSans(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MasterCardContainer(),
                ],
              ),
              Positioned(
                left: 28,
                top: 42,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ));
  }
}

//Noto Sans KR

class MasterCardContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            //color: Colors.white,
            height: 80,
            width: 160,
            child: Image.asset("assets/master_card.png"),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                "mastercard",
                style: GoogleFonts.notoSans(color: Colors.white, fontSize: 10),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DashedCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var x = size.width / 2;
    var y = size.height / 2;

    Paint paint = Paint()
      ..color = Color(0xffec5b54)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    Rect rect = Rect.fromCircle(center: Offset(x + 42, y + 42), radius: 56);

    double i = 0.0;
    double k = pi / 50;

    while (i < 2 * pi) {
      canvas.drawArc(rect, i, k, false, paint);
      i = i + 2 * k;
    }
  }

  @override
  bool shouldRepaint(DashedCirclePainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(DashedCirclePainter oldDelegate) => false;
}
