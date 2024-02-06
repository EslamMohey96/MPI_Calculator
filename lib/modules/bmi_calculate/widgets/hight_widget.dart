import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_p_i_calculator/shared/cubit/bmi_cubit.dart';
import 'package:m_p_i_calculator/shared/cubit/bmi_states.dart';

class HightWidget extends StatelessWidget {
  const HightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyBMICubit, MyBMIStates>(
      listener: (BuildContext context, MyBMIStates state) {},
      builder: (BuildContext context, MyBMIStates state) {
        MyBMICubit cubit = MyBMICubit.get(context);
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.tealAccent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      FittedBox(
                        child: Text(
                          "Hight:",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          "${cubit.hight.round()}",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      FittedBox(
                        child: const Text(
                          "cm",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Slider(
                  value: cubit.hight,
                  max: 220,
                  min: 80,
                  onChanged: (value) {
                    cubit.changeHight(hight: value);
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
