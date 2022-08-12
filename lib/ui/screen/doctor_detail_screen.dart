import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor_meet/model/doctor_model.dart';
import 'package:doctor_meet/ui/components/header_label_component.dart';
import 'package:doctor_meet/utils/config_color.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({Key? key, required this.doctor}) : super(key: key);
  final DoctorModel doctor;

  final double rightBottomRadius = 80.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [DoctorHeaderWidget(doctor: doctor), DescriptionWidget(doctor: doctor)],
      ),
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  final DoctorModel doctor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          const HeaderLabelComponent(
            labelName: 'Description',
            hideSeeAllLabel: true,
          ),
          const SizedBox(
            height: 8,
          ),
          ReadMoreText(
            doctor.description,
            trimLines: 2,
            style: TextStyle(color: ConfigColor.textBlack, fontSize: 16),
            colorClickableText: ConfigColor.secondary,
            trimMode: TrimMode.Line,
            delimiter: '',
            trimCollapsedText: '...Read more',
            trimExpandedText: ' Less',
          )
        ],
      ),
    );
  }
}

class DoctorHeaderWidget extends StatelessWidget {
  const DoctorHeaderWidget({Key? key, required this.doctor}) : super(key: key);
  final DoctorModel doctor;

  @override
  Widget build(BuildContext context) {
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
                  child: InkWell(
                    onTap: () {
                      if (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      }
                    },
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
                  Text('Dr. ${doctor.name}',
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
                      Text(doctor.specialty, style: TextStyle(color: Color(0xFFCFD2FF), fontSize: 18.0)),
                      const SizedBox(width: 4.0),
                      const Icon(Icons.star, color: Color(0xFFF4C300), size: 20.0),
                      const SizedBox(width: 4.0),
                      Text('${doctor.ratingScore}', style: TextStyle(color: Color(0xFFCFD2FF), fontSize: 18.0)),
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
              Positioned(
                right: 0,
                bottom: 0,
                // child: Image.asset('assets/doctor.png', height: 210.0),
                child: Hero(
                  tag: doctor.id,
                  child: CachedNetworkImage(
                    imageUrl: doctor.avatar,
                    fit: BoxFit.fitHeight,
                    imageBuilder: (context, imageProvider) => Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
