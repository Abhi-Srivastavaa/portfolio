import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String? hintText;
  final int maxLines;
  CustomTextField(
      {super.key,
      this.textEditingController,
      this.hintText,
      this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      maxLines: maxLines,
      style: const TextStyle(color: CustomColor.scaffoldBg),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        filled: true,
        fillColor: CustomColor.whitePrimary,
        focusedBorder: getInputBorder,
        enabledBorder: getInputBorder,
        border: getInputBorder,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: CustomColor.hintDark,
        ),
      ),
    );
  }

  OutlineInputBorder get getInputBorder {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      borderSide: BorderSide.none,
    );
  }
}
