import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_p_i_calculator/shared/cubit/bmi_cubit.dart';
import 'package:m_p_i_calculator/shared/cubit/bmi_states.dart';
import 'package:numberpicker/numberpicker.dart';

class AgeWidget extends StatelessWidget {
  const AgeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyBMICubit, MyBMIStates>(
      listener: (BuildContext context, MyBMIStates state) {},
      builder: (BuildContext context, MyBMIStates state) {
        MyBMICubit cubit = MyBMICubit.get(context);
        print(cubit.age);
        return Expanded(
          child: Container(
            height: double.infinity,
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.tealAccent,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Age:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: NumberPicker(
                    itemHeight: 30,
                    selectedTextStyle: TextStyle(color: Colors.black),
                    textStyle: TextStyle(color: Colors.grey),
                    value: cubit.age,
                    minValue: 17,
                    maxValue: 100,
                    onChanged: (value) {
                      print(value);

                      cubit.changeAge(value);
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
