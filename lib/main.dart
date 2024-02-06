import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/bmi_calculator.dart';
import 'package:flutter/material.dart';
import 'package:m_p_i_calculator/shared/components/bloc_observer.dart';
import 'package:m_p_i_calculator/shared/cubit/bmi_cubit.dart';
import 'package:m_p_i_calculator/shared/cubit/bmi_states.dart';

void main() {
  Bloc.observer = BlocObserverImplement();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => MyBMICubit(),
      child: BlocConsumer<MyBMICubit, MyBMIStates>(
          listener: (BuildContext context, MyBMIStates state) {},
          builder: (BuildContext context, MyBMIStates state) {
            return const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: BMICalculator(),
            );
          }),
    );
  }
}
