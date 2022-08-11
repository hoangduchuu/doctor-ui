import 'package:doctor_meet/model/category_model.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.model, this.onSelect}) : super(key: key);

  final CategoryModel model;
  final Function(CategoryModel model)? onSelect;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onSelect != null) {
          onSelect!(model);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xfff1f5ff),
        ),
        padding: const EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 24,
              height: 24,
              child: Image.asset(model.icon),
            ),
            SizedBox(width: 8),
            Text(
              model.name,
              style: TextStyle(
                color: Color(0xff081d3f),
                fontSize: 16,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
