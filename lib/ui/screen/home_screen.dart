import 'package:doctor_meet/ui/components/header_home.dart';
import 'package:doctor_meet/utils/config_color.dart';
import 'package:doctor_meet/utils/logger.dart';
import 'package:doctor_meet/utils/mock.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConfigColor.bgColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: HomeHeaderComponent(
                avatarUrl: Mock().getAvatar(),
                onMenuPressed: () {
                  Logger.print('Home Menu pressed');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
