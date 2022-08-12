import 'package:flutter/material.dart';

class DateItem extends StatelessWidget {
  const DateItem({Key? key, required this.isSelected, required this.dateTime}) : super(key: key);
  final bool isSelected;
  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    if (isSelected) {
      return SizedBox(
        width: 48,
        height: 48,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Color(0xed353bc0), Color(0x9e353bc0)],
                ),
              ),
              padding: const EdgeInsets.only(
                left: 11,
                right: 12,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 25,
                    height: 36,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          dateTime.weekday.toString(),
                          style: const TextStyle(
                            color: Color(0xccffffff),
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 2),
                        const Text(
                          "14",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
    return SizedBox(
      width: 48,
      height: 48,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xfff1f5ff),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 13,
              vertical: 6,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 22,
                  height: 36,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Sun",
                        style: TextStyle(
                          color: Color(0xff999aa4),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "13",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
