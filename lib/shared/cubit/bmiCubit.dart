import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_p_i_calculator/shared/cubit/bmiStates.dart';

class myBMICubit extends Cubit<myBMIStates> {
  myBMICubit() : super(bmiInitState());
  static myBMICubit get(context) => BlocProvider.of(context);
  bool gender = true;
  String genderType = "Male";
  int Age = 20;
  double Hight = 180.0;
  int Weight = 60;
  double result = 0;
  String status = "";
  void changeGender({required gender}) {
    if (gender == true) {
      this.gender = true;
      this.genderType = "Male";
    } else {
      this.gender = false;
      this.genderType = "Female";
    }
    emit(bmiChangeGenderState());
  }

  void changeHight({required Hight}) {
    this.Hight = Hight;
    emit(bmiChangeHightState());
  }

  void ageMinus() {
    Age--;
    emit(bmiAgeMinusState());
  }

  void agePlus() {
    Age++;
    emit(bmiAgeMinusState());
  }

  void WeightMinus() {
    Weight--;
    emit(bmiWeightMinusState());
  }

  void WeightPlus() {
    Weight++;
    emit(bmiWeightMinusState());
  }

  void Result() {
    result = Weight / pow(Hight / 100, 2);
    print("result");
    switch (result) {
      case > 40:
        status = "Excessive obesity";
        print("result1");
        break;
      case > 35:
        status = "Second degree obesity";
        print("result2");
        break;
      case > 30:
        status = "First degree obesity";
        print("result3");
        break;
      case > 25:
        status = "Increase in weight";
        print("result4");
        break;
      case > 18:
        status = "Normal";
        print("result5");
        break;
      default:
        status = "Thinness";
        print("result6");
    }
  }
  // void resultScreen() {
  //   emit(resultState());
  // }
  // bmiStatusState
}
