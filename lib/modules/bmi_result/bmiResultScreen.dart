import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_p_i_calculator/shared/components/components.dart';
import 'package:m_p_i_calculator/shared/cubit/bmiCubit.dart';
import 'package:m_p_i_calculator/shared/cubit/bmiStates.dart';

class bmiResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    myBMICubit cubit = myBMICubit.get(context);
    return BlocConsumer<myBMICubit, myBMIStates>(
      listener: (BuildContext context, myBMIStates state) {},
      builder: (BuildContext context, myBMIStates state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text("BMI Result"),
          ),
          body: Expanded(
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Gender  : ${cubit.genderType}",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Hight  : ${cubit.Hight.round()}",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Age  : ${cubit.Age}",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Weight  : ${cubit.Weight}",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  sizeBoxH(20),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.teal,
                    ),
                    child: Text(
                      "Result  : ${cubit.result.round()}",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  sizeBoxH(20),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.teal,
                    ),
                    child: Text(
                      "your body mass idex is ${cubit.status}",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
