import 'package:doctor_meet/utils/config_color.dart';
import 'package:flutter/material.dart';

class HomeHeaderComponent extends StatelessWidget {
  const HomeHeaderComponent({Key? key, required this.avatarUrl, this.onMenuPressed}) : super(key: key);
  final String avatarUrl;
  final VoidCallback? onMenuPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(avatarUrl),
        ),
        const SizedBox(width: 12.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome back', style: TextStyle(color: ConfigColor.textGrey, fontSize: 14.0)),
              const SizedBox(height: 4.0),
              Row(
                children: [
                  const Text('Nazmul',
                      style: TextStyle(color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.bold)),
                  const SizedBox(width: 6.0),
                  Image.asset('assets/waving-hand.png')
                ],
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            if (onMenuPressed != null) {
              onMenuPressed!();
            }
          },
          child: Container(
            padding: const EdgeInsets.all(10.0),
            height: 44,
            decoration: BoxDecoration(
              color: const Color(0xFFEDF2FF),
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Image.asset('assets/list.png'),
          ),
        ),
      ],
    );
  }
}
