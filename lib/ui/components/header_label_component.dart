import 'package:flutter/material.dart';

class HeaderLabelComponent extends StatelessWidget {
  const HeaderLabelComponent({Key? key, required this.labelName, this.onSeeAllPressed, this.hideSeeAllLabel = false})
      : super(key: key);
  final String labelName;
  final VoidCallback? onSeeAllPressed;
  final bool hideSeeAllLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            labelName,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(width: 4.0),
        InkWell(
          onTap: () {
            if (onSeeAllPressed != null) {
              onSeeAllPressed!();
            }
          },
          child: Visibility(
            visible: !hideSeeAllLabel,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('See all', style: TextStyle(color: Color(0xFFA4A9B5), fontSize: 13.0)),
            ),
          ),
        ),
      ],
    );
  }
}
