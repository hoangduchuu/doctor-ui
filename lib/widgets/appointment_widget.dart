import 'package:doctor_meet/model/appointment_model.dart';
import 'package:doctor_meet/ui/components/appointment_item.dart';
import 'package:doctor_meet/ui/components/custom_button.dart';
import 'package:doctor_meet/ui/components/header_label_component.dart';
import 'package:doctor_meet/ui/forked/flutter_tindercard.dart';
import 'package:doctor_meet/utils/logger.dart';
import 'package:flutter/material.dart';

class AppointmentWidget extends StatelessWidget {
  AppointmentWidget({Key? key, required this.items}) : super(key: key);
  final List<AppointmentModel> items;
  final CardController controller = CardController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 24,
        ),
        HeaderLabelComponent(
          labelName: 'UpComming Appoinment',
          onSeeAllPressed: () {
            Logger.print("UpComming Appoinment onSeeAllPressed");
          },
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 50,
              right: 50,
              child: CustomButton(
                text: 'Re-fresh',
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 180,
              child: TinderSwapCard(
                swipeUp: true,
                swipeDown: true,
                orientation: AmassOrientation.bottom,
                totalNum: items.length,
                stackNum: 3,
                cardController: controller,
                swipeEdge: 4.0,
                maxWidth: MediaQuery.of(context).size.width * 0.95,
                maxHeight: 180 * 0.9,
                minWidth: MediaQuery.of(context).size.width * 0.85,
                minHeight: 180 * 0.8,
                cardBuilder: (context, index) {
                  return AppointmentItem(model: items[index]);
                },
                swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
                  /// Get swiping card's alignment
                  if (align.x < 0) {
                    //Card is LEFT swiping
                  } else if (align.x > 0) {
                    //Card is RIGHT swiping
                  }
                },
                swipeCompleteCallback: (CardSwipeOrientation orientation, int index) {
                  /// Get orientation & index of swiped card!
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
