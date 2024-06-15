import 'package:flutter/material.dart';
import 'package:isagha/core/utils/app_colors.dart';
import 'package:isagha/core/utils/app_functions.dart';
import 'package:isagha/core/utils/font_styles.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType inputType;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      cursorColor: AppColors.blue,
      style: FontStyles.medium(
        fontColor: AppColors.black,
        fontSize: 16,
      ),
      validator: (value) => AppFunctions.handleTextFieldValidator(
        validators: [
          TextFieldValidator(
            condition: value!.trim().isEmpty,
            message: "ca't be empty",
          ),
        ],
      ),
      decoration: InputDecoration(hintText: hintText),
    );
  }
}
