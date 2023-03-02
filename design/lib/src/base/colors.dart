import 'package:flutter/material.dart';

// Sportif Colors
class SColors {
  SColors._();

  /// Main Colors ///
  ///Primary
  //Normal
  static const Color sPrimary = Color(0xFF1064BC);
  static const Color sPrimaryLighter = Color(0xFFCFE0F2);

  /// Grey ///
  static const Color sGrey100 = Color(0xFFF9FAFB);
  static const Color sGrey200 = Color(0xFFF4F6F8);
  static const Color sGrey300 = Color(0xFFDFE3E8);
  static const Color sGrey400 = Color(0xFFC4CDD5);
  static const Color sGrey500 = Color(0xFF919EAB);
  static const Color sGrey600 = Color(0xFF637381);
  static const Color sGrey700 = Color(0xFF454F5B);
  static const Color sGrey800 = Color(0xFF212B36);
  static const Color sGrey900 = Color(0xFF161C24);

  ///Main Grey & Opacity Variants
  static const Color sGrey = sGrey500;
  static const Color sGrey8 = Color(0x14919EAB);
  static const Color sGrey12 = Color(0x1F919EAB);
  static const Color sGrey16 = Color(0x29919EAB);
  static const Color sGrey24 = Color(0x3D919EAB);
  static const Color sGrey32 = Color(0x52919EAB);
  static const Color sGrey48 = Color(0x7A919EAB);
  static const Color sGrey80 = Color(0xCC919EAB);

  /// Text ///
  //On Light
  static const Color sTextLightPrimary = sGrey800;
  static const Color sTextLightSecondary = sGrey600;
  static const Color sTextLightDisabled = sGrey;

  //On Dark
  static const Color sTextDarkPrimary = sWhite;
  static const Color sTextDarkSecondary = sGrey;
  static const Color sTextDarkDisabled = sGrey600;

  static const Color sWhite = Colors.white;
}
