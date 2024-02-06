import 'package:m_p_i_calculator/modules/bmi_calculate/widgets/age_widget.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/widgets/bmi_image_widget.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/widgets/calculate_button.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/widgets/gander_widget.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/widgets/hight_widget.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/widgets/weight_widget.dart';
import 'package:flutter/material.dart';
import 'package:m_p_i_calculator/shared/components/components.dart';

class LandScapeLayout extends StatelessWidget {
  final int width;
  const LandScapeLayout({super.key, required this.width});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Expanded(child: BMIImageWidget(width: width)),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      children: [
                        Expanded(child: GanderWidget(height: width)),
                        sizeBoxH(20),
                        Expanded(child: const HightWidget()),
                      ],
                    ),
                  ),
                ),
                sizeBoxW(20),
                Expanded(
                  child: Padding(
                     padding: const EdgeInsets.only(right: 8.0),
                    child: Column(
                      children: [
                        const AgeWidget(),
                        sizeBoxH(20),
                        const WeightWidget()
                      ],
                    ),
                  ),
                ),
                
              ],
            ),
          ),
          sizeBoxH(10),
          const CalculateButton(),
        ],
      ),
    );
  }
}
