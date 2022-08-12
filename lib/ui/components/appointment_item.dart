import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor_meet/model/appointment_model.dart';
import 'package:doctor_meet/utils/date_utils.dart';
import 'package:flutter/material.dart';

class AppointmentItem extends StatelessWidget {
  const AppointmentItem({Key? key, required this.model}) : super(key: key);
  final AppointmentModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14.0),
      decoration: BoxDecoration(
        color: const Color(0xFF363CC0),
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Center(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                    model.doctor.avatar,
                  ),
                  radius: 20.0,
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(model.doctor.name, style: const TextStyle(color: Colors.white, fontSize: 16.0)),
                      const SizedBox(height: 4.0),
                      Row(
                        children: [
                          Text(model.specialty, style: const TextStyle(color: Color(0xFFCFD2FF), fontSize: 14.0)),
                          const SizedBox(width: 6.0),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: Transform.rotate(
                      angle: pi / 2, child: const Icon(Icons.keyboard_control_outlined, size: 24, color: Colors.white)),
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 11.0, horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF474DCE),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/calendar.png'),
                      const SizedBox(width: 6.0),
                      Text(DateConverter.printMonthDayYear(model.dateStart),
                          style: const TextStyle(color: Colors.white, fontSize: 14.0)),
                    ],
                  ),
                ),
                const SizedBox(width: 10.0),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 11.0, horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF474DCE),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/time.png'),
                      const SizedBox(width: 6.0),
                      Text('${DateConverter.printTime(model.dateStart)} - ${DateConverter.printTime(model.dateEnd)}',
                          style: const TextStyle(color: Colors.white, fontSize: 14.0)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
