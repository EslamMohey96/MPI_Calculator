import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_p_i_calculator/modules//bmi_calculate/bmiCalculator.dart';
import 'package:flutter/material.dart';
import 'package:m_p_i_calculator/shared/components/blocObserver.dart';
import 'package:m_p_i_calculator/shared/cubit/bmiCubit.dart';
import 'package:m_p_i_calculator/shared/cubit/bmiStates.dart';

void main() {
  Bloc.observer = blocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => myBMICubit(),
      child: BlocConsumer<myBMICubit, myBMIStates>(
          listener: (BuildContext context, myBMIStates state) {},
          builder: (BuildContext context, myBMIStates state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: bmiCalculator(),
            );
          }),
    );
  }
}
