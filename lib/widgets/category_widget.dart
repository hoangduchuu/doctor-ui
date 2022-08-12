import 'package:doctor_meet/model/category_model.dart';
import 'package:doctor_meet/ui/components/cateogry_item.dart';
import 'package:doctor_meet/ui/components/header_label_component.dart';
import 'package:doctor_meet/utils/config_color.dart';
import 'package:doctor_meet/utils/logger.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key, required this.items}) : super(key: key);
  final List<CategoryModel> items;

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
        const SizedBox(height: 16.0),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          color: ConfigColor.white,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return CategoryItem(
                  model: items[index],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 8, width: 16)),
        )
      ],
    );
  }
}
