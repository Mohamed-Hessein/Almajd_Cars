import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/resources/images_icons.dart';
import '../../data/models/populr_list_modle.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';

class PopulrList extends StatelessWidget {
   PopulrList({super.key});
  List<PopulrListModle> populrList = [
    PopulrListModle('Toyota', ImageApp.toyta),
    PopulrListModle('Nissan', ImageApp.nessan),
    PopulrListModle('Hyundai', ImageApp.hyundai),
    PopulrListModle('Ford', ImageApp.ford),
    PopulrListModle('Kia', ImageApp.kia)
  ];

  @override
  Widget build(BuildContext context) {
    return     BlocBuilder<HomeBloc, HomeCarsState>(
      builder: (BuildContext context, state) {
        return SizedBox(
          height: 80,
          child: ListView.separated(
            itemCount: populrList.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index){
              return Column(
                children: [
                  Image.asset(populrList[index].image, width: 30, height: 30,),
                  SizedBox(height: 20,),
                  Text(populrList[index].text)
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(width: 36,);
            },
          ),
        );
      },
    );

  }
}
