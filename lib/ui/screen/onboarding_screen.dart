import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctor_meet/model/slider_model.dart';
import 'package:doctor_meet/ui/components/custom_button.dart';
import 'package:doctor_meet/ui/screen/home_screen.dart';
import 'package:doctor_meet/utils/mock.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OboardingScreen extends StatefulWidget {
  const OboardingScreen({Key? key}) : super(key: key);

  @override
  State<OboardingScreen> createState() => _OboardingScreenState();
}

class _OboardingScreenState extends State<OboardingScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  List<SliderModel> sliders = [];

  @override
  void initState() {
    sliders = Mock().getSliders();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                  height: MediaQuery.of(context).size.height,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              items: sliders.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return buildCard(context, i);
                  },
                );
              }).toList(),
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: sliders.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () {
                    _controller.animateToPage(entry.key);
                  },
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList()),
          buildGetStartedButton()
        ],
      ),
    );
  }

  Widget buildCard(BuildContext context, SliderModel model) {
    return Stack(
      children: [
        ClipPath(
          clipper: ClippingClass(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            decoration: const BoxDecoration(
              color: Color(0xff363CC0),
            ),
            child: SafeArea(
                top: true,
                bottom: false,
                child: Image.network(
                  model.image,
                )),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 2 + 24,
            left: 16,
            right: 16,
          ),
          child: Column(
            children: [
              Text(
                model.content,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff081d3f),
                  fontSize: 30,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                model.subContent,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff8c8c8c),
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildGetStartedButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: CustomButton(
            // disabled: _current != 2 ,
            text: _current != 2 ? "Next" : 'Get Started',
            onTap: () {
              if (_current < 2) {
                _controller.animateToPage(_current + 1);
              } else
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
        ),
      ),
    );
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    var path = Path();
    path.lineTo(0, h);
    path.quadraticBezierTo(w * 0.5, h - 100, w, h);
    path.lineTo(w, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
