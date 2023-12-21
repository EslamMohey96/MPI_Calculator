import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_p_i_calculator/modules//bmi_result/bmiResultScreen.dart';
import 'package:flutter/material.dart';
import 'package:m_p_i_calculator/shared/components/components.dart';
import 'package:m_p_i_calculator/shared/cubit/bmiCubit.dart';
import 'package:m_p_i_calculator/shared/cubit/bmiStates.dart';

class bmiCalculator extends StatelessWidget {
  bmiCalculator({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<myBMICubit, myBMIStates>(
      listener: (BuildContext context, myBMIStates state) {},
      builder: (BuildContext context, myBMIStates state) {
        myBMICubit cubit = myBMICubit.get(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text("BMI Calculator"),
          ),
          body: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 20.0,
                    left: 20.0,
                    bottom: 10.0,
                    top: 20,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            cubit.changeGender(gender: true);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: cubit.gender
                                  ? Colors.teal
                                  : Colors.tealAccent,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 100,
                                  child: Image(
                                    image: AssetImage("assets/images/male.png"),
                                  ),
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      sizeBoxW(20),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            cubit.changeGender(gender: false);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: cubit.gender
                                  ? Colors.tealAccent
                                  : Colors.teal,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 100,
                                  child: Image(
                                    image:
                                        AssetImage("assets/images/female.png"),
                                  ),
                                ),
                                Text(
                                  "female",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Slider
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 20.0,
                    left: 20.0,
                    bottom: 10.0,
                    top: 10,
                  ),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizeBoxH(20),
                        Text(
                          "Hight",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              "${cubit.Hight.round()}",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            sizeBoxW(5),
                            Text(
                              "cm",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Slider(
                          value: cubit.Hight,
                          max: 220,
                          min: 80,
                          onChanged: (value) {
                            cubit.changeHight(Hight: value);
                          },
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.tealAccent,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 20.0, left: 20.0, bottom: 20.0, top: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.tealAccent,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Age",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "${cubit.Age}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    heroTag: "Age-",
                                    onPressed: () {
                                      if (cubit.Age > 19) {
                                        cubit.ageMinus();
                                      }
                                    },
                                    child: Icon(Icons.remove),
                                    mini: true,
                                  ),
                                  sizeBoxW(10),
                                  FloatingActionButton(
                                    heroTag: "Age+",
                                    onPressed: () {
                                      if (cubit.Age < 100) {
                                        cubit.agePlus();
                                      }
                                    },
                                    child: Icon(Icons.add),
                                    mini: true,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      sizeBoxW(20),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.tealAccent,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Wieght",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "${cubit.Weight}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    heroTag: "Weight-",
                                    onPressed: () {
                                      if (cubit.Weight > 5) {
                                        cubit.WeightMinus();
                                      }
                                    },
                                    child: Icon(Icons.remove),
                                    mini: true,
                                  ),
                                  sizeBoxW(10),
                                  FloatingActionButton(
                                    heroTag: "Weight+",
                                    onPressed: () {
                                      if (cubit.Weight < 140) {
                                        cubit.WeightPlus();
                                      }
                                    },
                                    child: Icon(Icons.add),
                                    mini: true,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.teal,
                width: double.infinity,
                child: MaterialButton(
                  height: 50,
                  onPressed: () {
                    cubit.Result();
                    print("b result1");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => bmiResultScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Calculate",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
