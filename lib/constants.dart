import 'package:flutter/material.dart';

class BMI {
  static const String underweightSevere = 'Underweight (Severe thinness)';
  static const String underweightModerate = 'Underweight (Moderate thinness)';
  static const String underweightMild = 'Underweight (Mild thinness)';
  static const String normal = 'Normal';
  static const String overweight = 'Overweight (Pre-obese)';
  static const String obeseClassOne = 'Obese (Class I)';
  static const String obeseClassTwo = 'Obese (Class II)';
  static const String obeseClassThree = 'Obese (Class III)';
}

final Map<String, String> bmiTypeMap =
  {
    BMI.underweightSevere : '< 16',
    BMI.underweightModerate : '16.0 - 16.9',
    BMI.underweightMild : '< 17.0 - 18.4',
    BMI.normal : '< 18.5 - 24.9',
    BMI.overweight : '< 25.0 - 29.9',
    BMI.obeseClassOne : '< 30.0 - 34.9',
    BMI.obeseClassTwo : '< 35.0 - 39.9',
    BMI.obeseClassThree : '40 and above',
  };


const colorPrimary = Colors.lightBlue;

const txtLabelWhite20 = TextStyle(
  color: Colors.white70,
  fontSize: 20
);
const txtLabelWhite40 = TextStyle(
    color: Colors.white,
    fontSize: 40
);
const txtValueWhite70 = TextStyle(
    color: Colors.white,
    fontSize: 70
);
const txtUnitLabelWhite22 = TextStyle(
    color: Colors.white70,
    fontSize: 22
);
