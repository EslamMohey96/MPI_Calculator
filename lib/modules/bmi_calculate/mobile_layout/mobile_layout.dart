import 'package:flutter/material.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/widgets/bmi_image_widget.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/widgets/gander_widget.dart';
import 'package:m_p_i_calculator/shared/components/components.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/widgets/age_widget.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/widgets/calculate_button.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/widgets/hight_widget.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/widgets/weight_widget.dart';

class MobileLayout extends StatelessWidget {
  final int width;
  const MobileLayout({super.key, required this.width});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Expanded(child: BMIImageWidget(width: width)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 20.0,
                left: 20.0,
                bottom: 10.0,
                top: 20,
              ),
              child: GanderWidget(height: width)            ),
          ),
          // Slider
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 20.0,
                left: 20.0,
                bottom: 20.0,
                top: 10,
              ),
              child: HightWidget(),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 20.0, left: 20.0, bottom: 5.0,),
              child: Row(
                children: [AgeWidget(), sizeBoxW(20), WeightWidget()],
              ),
            ),
          ),
          CalculateButton()
        ],
      ),
    );
  }
}
