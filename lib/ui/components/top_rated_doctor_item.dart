import 'package:doctor_meet/model/doctor_model.dart';
import 'package:flutter/material.dart';

class TopRatedDoctorItem extends StatelessWidget {
  const TopRatedDoctorItem({Key? key, required this.model}) : super(key: key);
  final DoctorModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 101.0,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F5FF),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Container(
            height: 81.0,
            width: 81.0,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                image: DecorationImage(image: NetworkImage(model.avatar), fit: BoxFit.cover)),
          ),
          const SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(model.name, style: TextStyle(color: Colors.black, fontSize: 16.0)),
              SizedBox(height: model.ratingScore),
              Text(model.specialty, style: TextStyle(color: Color(0xFF999AA4), fontSize: 14.0)),
              const SizedBox(height: 4.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.star, color: Color(0xFFF4C300), size: 20.0),
                  const SizedBox(width: 4.0),
                  const Text('4.9', style: TextStyle(color: Color(0xFF999AA4), fontSize: 14.0)),
                  const SizedBox(width: 16.0),
                  Image.asset('assets/clock.png', height: 14),
                  const SizedBox(width: 8.0),
                  const Text('10 Am-12 Pm', style: TextStyle(color: Color(0xFF999AA4), fontSize: 14.0)),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
