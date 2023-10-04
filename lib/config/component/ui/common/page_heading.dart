import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageHeading extends StatelessWidget {
  final String title;
  const PageHeading({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 25),
      child: Text(
        title,
        style: GoogleFonts.poppins(
            color: Colors.blueAccent,
            fontSize: 35,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
