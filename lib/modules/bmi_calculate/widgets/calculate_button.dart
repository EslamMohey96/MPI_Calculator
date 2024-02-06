import 'package:flutter/material.dart';
import 'package:m_p_i_calculator/modules/bmi_result/bmi_result_screen.dart';
import 'package:m_p_i_calculator/shared/cubit/bmi_cubit.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      width: double.infinity,
      child: MaterialButton(
        height: 50,
        onPressed: () {
          MyBMICubit.get(context).bmiResult();
          debugPrint("b result1");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BMIResultScreen(),
            ),
          );
        },
        child: const Text(
          "Calculate",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
