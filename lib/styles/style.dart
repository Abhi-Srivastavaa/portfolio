import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

BoxDecoration kHeaderDecoration = const BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(100)),
  gradient: LinearGradient(
    colors: [
      Colors.transparent,
      CustomColor.bgLight1,
    ],
  ),
);
