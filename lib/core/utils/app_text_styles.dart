import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static TextStyle sR16(context) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: 'Montsserat',

      color:
          AdaptiveTheme.of(context).mode.isLight
              ? const Color(0xFF064060)
              : const Color(0xff084F79),
    );
  }

  static TextStyle sR12(context) {
    return const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'Montsserat',

      color: Color(0xFFAAAAAA),
    );
  }

  static TextStyle sR14(context) {
    return const TextStyle(
      fontSize: 14,
      fontFamily: 'Montsserat',

      fontWeight: FontWeight.w400,
      color: Color(0xFFAAAAAA),
    );
  }

  static TextStyle sB16(context) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      fontFamily: 'Montsserat',

      color:
          AdaptiveTheme.of(context).mode.isLight
              ? const Color(0xFF4EB7F2)
              : const Color(0xff66C0F4),
    );
  }

  static TextStyle sSB20(context) {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,

      fontFamily: 'Montsserat',
      color:
          AdaptiveTheme.of(context).mode.isLight
              ? const Color(0xFF064060)
              : const Color(0xff084F79),
    );
  }

  static TextStyle sM16(context) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: 'Montsserat',

      color:
          AdaptiveTheme.of(context).mode.isLight
              ? const Color(0xFF064060)
              : const Color(0xff084F79),
    );
  }

  static TextStyle sM20(context) {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      fontFamily: 'Montsserat',

      color:
          AdaptiveTheme.of(context).mode.isLight ? Colors.white : Colors.black,
    );
  }

  static TextStyle sSB16(context) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: 'Montsserat',

      color:
          AdaptiveTheme.of(context).mode.isLight
              ? const Color(0xFF064060)
              : const Color(0xff084F79),
    );
  }

  static TextStyle sSB24(context) {
    return TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      fontFamily: 'Montsserat',

      color:
          AdaptiveTheme.of(context).mode.isLight
              ? const Color(0xFF4EB7F2)
              : const Color(0xff66C0F4),
    );
  }

  static TextStyle sSB18(context) {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      fontFamily: 'Montsserat',

      color:
          AdaptiveTheme.of(context).mode.isLight ? Colors.white : Colors.black,
    );
  }
}

// double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
//   double scaleFactor = getScaleFactor(context);
//   double responsiveFontSize = scaleFactor * fontSize;
//   double upperLimit = fontSize * 1;
//   double lowerLimit = fontSize * 0.8;
//   return responsiveFontSize.clamp(lowerLimit, upperLimit);
// }

// double getScaleFactor(BuildContext context) {
//   double width = MediaQuery.sizeOf(context).width;
//   if (width < 600) {
//     return width / 550;
//   } else if (width < 900) {
//     return width / 1000;
//   } else {
//     return width / 1920;
//   }
// }
