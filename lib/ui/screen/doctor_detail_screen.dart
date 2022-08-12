import 'package:doctor_meet/model/doctor_model.dart';
import 'package:doctor_meet/utils/config_color.dart';
import 'package:flutter/material.dart';

class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({Key? key, required this.doctor}) : super(key: key);
  final DoctorModel doctor;

  final double rightBottomRadius = 80.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          getTopBanner(),
        ],
      ),
    );
  }

  Widget getTopBanner() {
    return Container(
      padding: const EdgeInsets.only(left: 24),
      decoration: BoxDecoration(
        color: ConfigColor.secondary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            top: true,
            bottom: false,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      color: ConfigColor.secondary,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12.0), bottomRight: Radius.circular(40.0)),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEDF0FA).withOpacity(0.12),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: const Icon(Icons.arrow_back, size: 24, color: Colors.white),
                    ),
                  ),
                ),
                const Center(child: Text('Details', style: TextStyle(color: Colors.white, fontSize: 24.0))),
              ],
            ),
          ),
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16.0),
                  const Text('Dr. Jenny wilson',
                      style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 12.0),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFFEDF0FA).withOpacity(0.12),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: const Icon(Icons.perm_identity_sharp, color: Colors.white),
                      ),
                      const SizedBox(width: 12.0),
                      const Text('Dentist', style: TextStyle(color: Color(0xFFCFD2FF), fontSize: 18.0)),
                      const SizedBox(width: 4.0),
                      const Icon(Icons.star, color: Color(0xFFF4C300), size: 20.0),
                      const SizedBox(width: 4.0),
                      const Text('4.9', style: TextStyle(color: Color(0xFFCFD2FF), fontSize: 18.0)),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  const Text('Visiting hour', style: TextStyle(color: Color(0xFFCFD2FF), fontSize: 14.0)),
                  const SizedBox(height: 2.0),
                  const Text('11 AM-12 PM', style: TextStyle(color: Colors.white, fontSize: 18.0)),
                  const SizedBox(height: 20.0),
                  const Text('Total patient', style: TextStyle(color: Color(0xFFCFD2FF), fontSize: 14.0)),
                  const SizedBox(height: 2.0),
                  const Text('1200+', style: TextStyle(color: Colors.white, fontSize: 18.0)),
                  const SizedBox(height: 20.0),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
