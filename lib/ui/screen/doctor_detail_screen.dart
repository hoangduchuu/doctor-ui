import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor_meet/model/doctor_model.dart';
import 'package:doctor_meet/ui/components/aura_light_component.dart';
import 'package:doctor_meet/ui/components/date_item.dart';
import 'package:doctor_meet/ui/components/header_label_component.dart';
import 'package:doctor_meet/utils/config_color.dart';
import 'package:doctor_meet/utils/mock.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../components/custom_button.dart';

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
          //region content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //region header
                  DoctorHeaderWidget(doctor: doctor),
                  //endregion

                  //region bellow header
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        DescriptionWidget(doctor: doctor),
                        const SizedBox(
                          height: 24,
                        ),
                        const HeaderLabelComponent(
                          labelName: 'Schedule',
                          hideSeeAllLabel: true,
                          customRightWidget: Text(
                            "<June>",
                            style: TextStyle(
                              color: Color(0xff474cc5),
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        //List calendar
                        SizedBox(
                          height: 50,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: 30,
                              itemBuilder: (context, index) {
                                if (index == 2) {
                                  return DateItem(isSelected: true, dateTime: DateTime.now());
                                }
                                return DateItem(isSelected: false, dateTime: DateTime.now());
                              },
                              separatorBuilder: (context, index) => const SizedBox(height: 8, width: 8)),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const HeaderLabelComponent(
                          labelName: 'Location',
                          hideSeeAllLabel: true,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        CachedNetworkImage(imageUrl: Mock().mapCloneUrl()),
                        const SizedBox(
                          height: 200,
                        ),
                      ],
                    ),
                  )
                  //endregion
                ],
              ),
            ),
          ),
          //endregion

          //region fixed bottom button
          SafeArea(
            top: false,
            child: Container(
              color: Colors.transparent,
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 18, top: 4),
              width: MediaQuery.of(context).size.width,
              child: CustomButton(
                // disabled: _current != 2 ,
                text: 'Book an Appoinment',
                onTap: () {},
                iconRight: const Icon(Icons.navigate_next_sharp),
              ),
            ),
          )
          //endregion
        ],
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
    return Column(
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
          trimExpandedText: ' Collapse',
          moreStyle: TextStyle(color: ConfigColor.primaryColor, fontSize: 16, fontWeight: FontWeight.bold),
          lessStyle: TextStyle(color: ConfigColor.primaryColor, fontSize: 16, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class DoctorHeaderWidget extends StatelessWidget {
  const DoctorHeaderWidget({Key? key, required this.doctor}) : super(key: key);
  final DoctorModel doctor;
  final double rightBottomRadius = 80.0;

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
                      style: const TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
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
                      Text(doctor.specialty, style: const TextStyle(color: Color(0xFFCFD2FF), fontSize: 18.0)),
                      const SizedBox(width: 4.0),
                      const Icon(Icons.star, color: Color(0xFFF4C300), size: 20.0),
                      const SizedBox(width: 4.0),
                      Text('${doctor.ratingScore}', style: const TextStyle(color: Color(0xFFCFD2FF), fontSize: 18.0)),
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
              const Positioned(
                bottom: -20,
                right: -20,
                child: AuraLightComponent(
                  size: 210,
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                // child: Image.asset('assets/doctor.png', height: 210.0),
                child: Hero(
                  tag: doctor.id,
                  child: CachedNetworkImage(
                    imageUrl: doctor.avatar,
                    fit: BoxFit.fitWidth,
                    imageBuilder: (context, imageProvider) => Container(
                      width: 210,
                      height: 220,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: imageProvider, fit: BoxFit.fitHeight),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: SizedBox(
                  height: rightBottomRadius * 2,
                  width: rightBottomRadius * 2,
                  child: CustomPaint(
                    painter: OutlineRoundColor(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OutlineRoundColor extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(size.width, size.height / 2);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width / 2, size.height);

    Offset center = Offset(size.width / 2, size.height / 2);
    path.arcTo(Rect.fromCenter(center: center, width: size.width, height: size.height), pi / 2, -pi / 2, false);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
