import 'package:m_p_i_calculator/modules/bmi_calculate/landScape_layout/landScape_layout.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/mobile_layout/mobile_layout.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/tablet_layout/tablet_layout.dart';
import 'package:flutter/material.dart';

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("BMI Calculator"),
      ),
      body: LayoutBuilder(builder: (context, constraint) {
        debugPrint(constraint.maxWidth.toString());
        debugPrint(constraint.maxHeight.toString());
        if (constraint.maxHeight > 350) {
          if (constraint.maxWidth <= 430) {
            return MobileLayout(width: constraint.maxWidth.round());
          } else {
            return TabletLayout(
                height:
                    constraint.maxWidth.round() >= constraint.maxHeight.round()
                        ? constraint.maxHeight.round()
                        : constraint.maxWidth.round());
          }
        } else {
          return LandScapeLayout(width: 
              

                  constraint.maxWidth.round() >= constraint.maxHeight.round()
                      ? constraint.maxHeight.round()
                      : constraint.maxWidth.round()
                      );
        }
      }),
    );
  }
}
