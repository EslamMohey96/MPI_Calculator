import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_p_i_calculator/shared/cubit/bmi_states.dart';

class MyBMICubit extends Cubit<MyBMIStates> {
  MyBMICubit() : super(BMIInitState());
  static MyBMICubit get(context) => BlocProvider.of(context);
  bool gender = true;
  String genderType = "Male";
  int age = 25;
  double hight = 180.0;
  int weight = 60;
  double result = 0;
  String status = "";
  void changeGender({required gender}) {
    if (gender == true) {
      this.gender = true;
      genderType = "Male";
    } else {
      this.gender = false;
      genderType = "Female";
    }
    emit(BMIChangeGenderState());
  }

  void changeHight({required hight}) {
    this.hight = hight;
    emit(BMIChangeHightState());
  }

  void changeAge(value) {
    age=value;
    emit(BMIAgeChanged());
  } 
  
  void changeWeight(value) {
    weight=value;
    emit(BMIWeightChanged());
  }


  void bmiResult() {
    result = weight / pow(hight / 100, 2);
    debugPrint("result");
    switch (result) {
      case > 40:
        status = "Excessive obesity";
        debugPrint("result1");
        break;
      case > 35:
        status = "Second degree obesity";
        debugPrint("result2");
        break;
      case > 30:
        status = "First degree obesity";
        debugPrint("result3");
        break;
      case > 25:
        status = "Increase in weight";
        debugPrint("result4");
        break;
      case > 18:
        status = "Normal";
        debugPrint("result5");
        break;
      default:
        status = "Thinness";
        debugPrint("result6");
    }
  }
  // void resultScreen() {
  //   emit(resultState());
  // }
  // BMIStatusState
}
