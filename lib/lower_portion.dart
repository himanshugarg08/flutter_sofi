import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LowerPortion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
            child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              "\$13,120",
              style: GoogleFonts.notoSans(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "-\$70.64",
                  style: GoogleFonts.notoSans(
                    color: Color(0xffec5b54),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffec5b54),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 1.0),
                    child: Text(
                      "Fees",
                      style: GoogleFonts.notoSans(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 54,
            ),
            Container(
              height: 72,
              width: 350,
              decoration: BoxDecoration(
                  color: Color(0xff1e91ff),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "Send Money",
                  style: GoogleFonts.notoSans(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "See transaction details",
              style: GoogleFonts.notoSans(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        )));
  }
}
