import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  const ScreenTitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.notoSerif(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }
}