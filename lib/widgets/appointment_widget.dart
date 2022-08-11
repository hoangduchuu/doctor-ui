import 'package:doctor_meet/ui/components/header_label_component.dart';
import 'package:doctor_meet/utils/config_color.dart';
import 'package:doctor_meet/utils/logger.dart';
import 'package:flutter/material.dart';

class AppointmentWidget extends StatelessWidget {
  const AppointmentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24.0),
        HeaderLabelComponent(
          labelName: 'UpComming Appoinment',
          onSeeAllPressed: () {
            Logger.print("UpComming Appoinment onSeeAllPressed");
          },
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
