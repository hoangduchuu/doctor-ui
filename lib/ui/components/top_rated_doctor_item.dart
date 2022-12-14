import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor_meet/model/doctor_model.dart';
import 'package:doctor_meet/utils/config_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TopRatedDoctorItem extends StatelessWidget {
  const TopRatedDoctorItem({Key? key, required this.model, this.onSelect, this.onDirectMessageSelect})
      : super(key: key);
  final DoctorModel model;
  final Function(DoctorModel model)? onSelect;
  final Function(DoctorModel model)? onDirectMessageSelect;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 101.0,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: const Color(0xFF363CC0),
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        Slidable(
          key: const ValueKey(0),
          endActionPane: ActionPane(
            extentRatio: 0.18,
            motion: const ScrollMotion(),
            children: [
              CustomSlidableAction(
                onPressed: (BuildContext context) {
                  if (onDirectMessageSelect != null) {
                    onDirectMessageSelect!(model);
                  }
                },
                backgroundColor: ConfigColor.primaryColor,
                child: Image.asset('assets/message.png', height: 40),
              ),
            ],
          ),
          child: InkWell(
            onTap: () {
              if (onSelect != null) {
                onSelect!(model);
              }
            },
            child: Container(
              height: 101.0,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: const Color(0xFFF1F5FF),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                children: [
                  Container(
                    height: 81.0,
                    width: 81.0,
                    decoration: BoxDecoration(
                        color: const Color(0xFFDAE2F1),
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(image: CachedNetworkImageProvider(model.avatar), fit: BoxFit.fitHeight)),
                  ),
                  const SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(model.name, style: const TextStyle(color: Colors.black, fontSize: 16.0)),
                      SizedBox(height: model.ratingScore),
                      Text(model.specialty, style: const TextStyle(color: Color(0xFF999AA4), fontSize: 14.0)),
                      const SizedBox(height: 4.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.star, color: Color(0xFFF4C300), size: 20.0),
                          const SizedBox(width: 4.0),
                          Text('${model.ratingScore}', style: const TextStyle(color: Color(0xFF999AA4), fontSize: 14.0)),
                          const SizedBox(width: 16.0),
                          Image.asset('assets/clock.png', height: 14),
                          const SizedBox(width: 8.0),
                          const Text('10 Am-12 Pm', style: TextStyle(color: Color(0xFF999AA4), fontSize: 14.0)),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
