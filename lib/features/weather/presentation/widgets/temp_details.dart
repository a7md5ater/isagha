import 'package:flutter/material.dart';
import 'package:isagha/core/utils/app_colors.dart';
import 'package:isagha/core/utils/font_styles.dart';

class TempDetails extends StatelessWidget {
  final int minTemp;
  final int maxTemp;
  final int feelsLike;
  final String date;
  const TempDetails(
      {super.key,
      required this.minTemp,
      required this.maxTemp,
      required this.feelsLike,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$maxTemp° / $minTemp° Feels Like $feelsLike°",
          style: FontStyles.regular(fontColor: AppColors.white),
        ),
        Text(
          date,
          style: FontStyles.regular(fontColor: AppColors.white),
        ),
      ],
    );
  }
}
