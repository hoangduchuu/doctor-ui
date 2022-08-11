import 'dart:math';

import 'package:doctor_meet/utils/config_color.dart';
import 'package:flutter/material.dart';

class AppointmentWidget extends StatelessWidget {
  const AppointmentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Expanded(
              child: Text(
                'UpComming Appointment',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(width: 4.0),
            Text('See all', style: TextStyle(color: Color(0xFFA4A9B5), fontSize: 13.0)),
          ],
        ),
        const SizedBox(height: 24.0),
        Container(
          width: 1000,
          height: 200,
          color: ConfigColor.primaryColor,
        )
      ],
    );
  }
}
