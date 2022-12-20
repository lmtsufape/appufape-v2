///This file should contain all the constants style used in the app
///like texts, fonts, colors, etc.
///you should use the standard naming convention for constants like the following:

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// FONT CONFIGURATION*/
final kDefaultFontFamily = GoogleFonts.ubuntu().fontFamily;

/// COLORS */

const Color kPrimaryColor = Colors.white;
const Color kBackgroundColor = Color(0xFF1b2d4f);
const Color kSecondaryColor = Colors.white;
const Color kDetailColor = Color(0xFF1b2d4f);
const Color kOnSurfaceColor = Colors.white;
const Color kOnBackgroundColor = Color(0xFF1b2d4f);
const Color kTextButtonColor = Color.fromARGB(255, 206, 201, 201);
const Color kTextSign = Colors.blue;
const Color kButtom = Colors.green;
const Color kText = Colors.black;
const Color kButtom2 = Colors.red;
const Color kTextFirst = Colors.blueGrey;
const Color kColorBottom = Color.fromARGB(255, 228, 255, 198);

/// ========>TEXT STYLES<=========== */

const TextStyle kBody1 = TextStyle(color: kPrimaryColor, fontSize: 18);
const TextStyle kcaption1 =
    TextStyle(color: kPrimaryColor, fontSize: 16, fontWeight: FontWeight.bold);
const TextStyle kcaption2 = TextStyle(
    color: kOnBackgroundColor, fontSize: 16, fontWeight: FontWeight.bold);

const TextStyle kTitle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.w900,
  color: kText,
);

const TextStyle kTitle2 = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w900,
  color: kText,
);

const TextStyle kTitle1 = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: kOnBackgroundColor,
);

const TextStyle kBody2 = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w900,
);
const TextStyle kBody3 = TextStyle(
  fontSize: 18,
);
const TextStyle kBody4 = TextStyle(
  fontSize: 16,
);
const TextStyle kCaption1 = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w900,
);
const TextStyle kCaption2 = TextStyle(
  fontSize: 14,
);
/**========>TEXT STYLES<=========== */

