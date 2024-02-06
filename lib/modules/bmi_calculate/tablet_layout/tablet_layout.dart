import 'package:flutter/material.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/widgets/gander_widget.dart';
import 'package:m_p_i_calculator/shared/components/components.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/widgets/age_widget.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/widgets/calculate_button.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/widgets/hight_widget.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/widgets/weight_widget.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/widgets/bmi_image_widget.dart';

class TabletLayout extends StatelessWidget {
  final int height;
  const TabletLayout({super.key, required this.height});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
                  sizeBoxW(20),
          Expanded(child: BMIImageWidget(width: height)),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 20.0,
                left: 20.0,
                bottom: 10.0,
                top: 20,
              ),
              child: GanderWidget(height: height),
            ),
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
              child: Row(
                children: [
                  Expanded(
                    child: HightWidget(),
                  ),           
                  sizeBoxW(20),
                  AgeWidget(),
                  sizeBoxW(20),
                  WeightWidget(),     
                ],
              ),
            ),
          ),
          CalculateButton()
        ],
      ),
    );
  }
}
