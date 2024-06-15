import 'package:isagha/core/shared_widgets/text_form_field.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isagha/core/utils/app_colors.dart';
import 'package:isagha/core/utils/font_styles.dart';

class TextFieldWithTitle extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String hint;
  final TextInputType inputType;

  const TextFieldWithTitle({
    super.key,
    required this.controller,
    required this.title,
    required this.hint,
    required this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(bottom: 3.h, start: 4.w),
          child: Text(
            title,
            style: FontStyles.semiBold(
              fontColor: AppColors.white,
              fontSize: 16,
              height: 1.5,
            ),
          ),
        ),
        CustomTextField(
          hintText: hint,
          controller: controller,
          inputType: inputType,
        ),
      ],
    );
  }
}
