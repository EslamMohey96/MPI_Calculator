import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_p_i_calculator/shared/components/components.dart';
import 'package:m_p_i_calculator/shared/cubit/bmi_cubit.dart';
import 'package:m_p_i_calculator/shared/cubit/bmi_states.dart';

class BMIResultScreen extends StatelessWidget {
  const BMIResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MyBMICubit cubit = MyBMICubit.get(context);
    return BlocConsumer<MyBMICubit, MyBMIStates>(
      listener: (BuildContext context, MyBMIStates state) {},
      builder: (BuildContext context, MyBMIStates state) {
        Color? color = cubit.result.round() > 40
            ? Colors.red
            : cubit.result.round() > 35
                ? Colors.deepOrange
                : cubit.result.round() > 30
                    ? Colors.orange
                    : cubit.result.round() > 25
                        ? Colors.yellow
                        : cubit.result.round() > 18
                            ? Colors.green
                            : Colors.lightBlue;
        return Scaffold(
          appBar: AppBar(
            backgroundColor: color,
            title: const Text("BMI Result"),
          ),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(
                  flex: 2,
                ),
                Expanded(
                  child: FittedBox(
                    child: Text(
                      "Gender  : ${cubit.genderType}",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: FittedBox(
                    child: Text(
                      "Hight  : ${cubit.hight.round()}",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: FittedBox(
                    child: Text(
                      "Age  : ${cubit.age}",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: FittedBox(
                    child: Text(
                      "Weight  : ${cubit.weight}",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                sizeBoxH(20),
                Expanded(
                  child: FittedBox(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: color,
                      ),
                      child: Text(
                        "Result  : ${cubit.result.round()}",
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                sizeBoxH(20),
                Expanded(
                  child: FittedBox(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: color,
                      ),
                      child: Text(
                        "your body mass idex is ${cubit.status}",
                        style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
