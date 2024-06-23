import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContinueWithGoogleButton extends StatelessWidget {
  final String text;
  final Color color;
  final String? image;
  final VoidCallback onPressed;

  const ContinueWithGoogleButton({
    Key? key,
    required this.text,
    required this.color,
    this.image,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 300,
        height: 43,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (image != null)
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Image.asset(
                  image!,
                  height: 40,
                  width: 40,
                ),
              ),
            Text(
              text,
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
