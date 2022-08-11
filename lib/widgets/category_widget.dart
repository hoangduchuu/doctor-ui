import 'package:doctor_meet/ui/components/header_label_component.dart';
import 'package:doctor_meet/utils/config_color.dart';
import 'package:doctor_meet/utils/logger.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24.0),
        HeaderLabelComponent(
          labelName: 'Category',
          onSeeAllPressed: () {
            Logger.print("Category onSeeAllPressed");
          },
        ),
        const SizedBox(height: 24.0),
        Container(
          width: 1000,
          height: 50,
          color: ConfigColor.primaryColor,
        )
      ],
    );
  }
}
