import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex("#ed9728");
  static Color darkGray = HexColor.fromHex("#525252");
  static Color gray = HexColor.fromHex("#737477");
  static Color lightGray = HexColor.fromHex("#9e9e9e");
  static Color primaryOpacity70 = HexColor.fromHex("#b3ed9728");

  static Color darkPrimary = HexColor.fromHex("#ed9728");
  static Color gray1 = HexColor.fromHex("#525252");
  static Color gray2 = HexColor.fromHex("#737477");
  static Color white = HexColor.fromHex("#9e9e9e");
  static Color error = HexColor.fromHex("#b3ed9728");


}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
      // hexColorString = "FF" + hexColorString; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
