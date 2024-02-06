import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/widgets/man_image_widget.dart';
import 'package:m_p_i_calculator/modules/bmi_calculate/widgets/woman_image_widget.dart';
import 'package:m_p_i_calculator/shared/components/components.dart';
import 'package:m_p_i_calculator/shared/cubit/bmi_cubit.dart';
import 'package:m_p_i_calculator/shared/cubit/bmi_states.dart';

class GanderWidget extends StatelessWidget {
  final int height;
  const GanderWidget({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyBMICubit, MyBMIStates>(
      listener: (BuildContext context, MyBMIStates state) {},
      builder: (BuildContext context, MyBMIStates state) {
        MyBMICubit cubit = MyBMICubit.get(context);
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            GestureDetector(
              onTap: () {
                cubit.changeGender(gender: true);
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: cubit.gender ?  Colors.tealAccent:Colors.white, 
                ),
                child: Icon(Icons.male),
              ),
            ),
            sizeBoxW(20),
            cubit.gender
                ? Expanded(
                    child: ManImageWidget(
                    height: height,
                  ))
                : Expanded(
                    child: WomanImageWidget(
                    height: height,
                  )),
            sizeBoxW(20),
            GestureDetector(
              onTap: () {
                cubit.changeGender(gender: false);
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: cubit.gender ?  Colors.white:Colors.tealAccent ,
                ),
                child: Icon(Icons.female),
              ),
            ),
            Spacer(),
          ],
        );
      },
    );
  }
}
