import 'package:doctor_meet/model/doctor_model.dart';
import 'package:doctor_meet/ui/components/header_label_component.dart';
import 'package:doctor_meet/ui/components/top_rated_doctor_item.dart';
import 'package:doctor_meet/ui/screen/doctor_detail_screen.dart';
import 'package:doctor_meet/utils/config_color.dart';
import 'package:doctor_meet/utils/logger.dart';
import 'package:flutter/material.dart';

class TopRatedDoctorWidget extends StatelessWidget {
  const TopRatedDoctorWidget({Key? key, required this.items}) : super(key: key);
  final List<DoctorModel> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24.0),
        HeaderLabelComponent(
          labelName: 'Top Rated Doctor',
          onSeeAllPressed: () {
            Logger.print("Top Rated Doctor onSeeAllPressed");
          },
        ),
        const SizedBox(height: 16.0),
        Container(
          width: MediaQuery.of(context).size.width,
          color: ConfigColor.white,
          child: ListView.separated(
              physics: const ClampingScrollPhysics(),
              // this line make nested Listview can scroll inside column
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return HeroMode(
                  enabled: false,
                  child: Hero(
                    tag: items[index].id,
                    child: Material(
                      type: MaterialType.transparency,
                      child: TopRatedDoctorItem(
                        model: items[index],
                        onSelect: (item) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DoctorDetailScreen(
                                        doctor: item,
                                      )));
                        },
                        onDirectMessageSelect: (item) {
                          Logger.print("onDirectMessageSelect");
                        },
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 16, width: 16)),
        )
      ],
    );
  }
}
