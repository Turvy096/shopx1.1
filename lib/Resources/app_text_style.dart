import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:api/Resources/app_colors.dart';

class AppTextStyle {
  static final TextStyle heading = GoogleFonts.robotoCondensed(
    fontSize: 30,
    color: AppColors.primaryColor,
    fontWeight: FontWeight.bold
  );
  static final TextStyle title = GoogleFonts.robotoCondensed(
    fontSize: 24,
    color: AppColors.secondaryColor,
    fontWeight: FontWeight.bold
  );
  static final TextStyle subTitle = GoogleFonts.robotoCondensed(
    fontSize: 12,
    color: AppColors.subTitleColor,
    fontWeight: FontWeight.normal
  );
  static final TextStyle input = GoogleFonts.robotoCondensed(
    fontSize: 15,
    color: AppColors.inputColor,
    fontWeight: FontWeight.w500
  );
  static final TextStyle hintText = GoogleFonts.inriaSans(
    fontSize: 15,
    color: AppColors.inputColor,
    fontWeight: FontWeight.w500
  );
  static final TextStyle buttonText = GoogleFonts.robotoCondensed(
    fontSize: 15,
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w400
  );
  static final TextStyle clickableWords = GoogleFonts.robotoCondensed(
    fontSize: 15,
    color: AppColors.gradeintMid,
    fontWeight: FontWeight.w400
  );
  static final TextStyle appText = GoogleFonts.robotoCondensed(
    fontSize: 15,
    color: AppColors.secondaryColor,
    fontWeight: FontWeight.normal
  );
}