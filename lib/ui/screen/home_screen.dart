import 'package:doctor_meet/widgets/appointment_widget.dart';
import 'package:doctor_meet/ui/components/header_home.dart';
import 'package:doctor_meet/utils/config_color.dart';
import 'package:doctor_meet/utils/logger.dart';
import 'package:doctor_meet/utils/mock.dart';
import 'package:doctor_meet/widgets/category_widget.dart';
import 'package:doctor_meet/widgets/top_rated_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConfigColor.bgColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HomeHeaderComponent(
                  avatarUrl: Mock().getAvatar(),
                  onMenuPressed: () {
                    Logger.print('Home Menu pressed');
                  },
                ),
                AppointmentWidget(
                  items: Mock().getAppointment(),
                ),
                CategoryWidget(
                  items: Mock().getCategory(),
                ),
                TopRatedDoctorWidget(
                  items: Mock().getDoctors(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
