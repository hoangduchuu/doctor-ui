import 'package:doctor_meet/utils/config_color.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.disabled = false,
    this.iconRight,
  }) : super(key: key);

  final String text;
  final VoidCallback onTap;
  final bool disabled;
  final Widget? iconRight;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        onPrimary: ConfigColor.white,
        primary: ConfigColor.black,
        minimumSize: const Size(88, 48),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
      onPressed: disabled ? null : onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
              child: Center(
                  child: Text(
            text,
          ))),
          iconRight == null
              ? Container()
              : const Icon(
                  Icons.navigate_next_rounded,
                )
        ],
      ),
    );
  }
}
