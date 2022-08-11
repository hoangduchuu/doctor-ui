import 'package:doctor_meet/model/slider_model.dart';

class Mock {
  List<SliderModel> getSliders() {
    return [
      SliderModel(
          position: 1,
          content: 'Perfact Healthcare Solution',
          subContent: 'Find a specialist that you only need on a consulting application',
          image: 'https://i.imgur.com/boSpNG7.png'),
      SliderModel(
        subContent: 'Find a specialist that you only need on a consulting application',
        position: 2,
        content: 'Realtime video call with Doctor',
        image: 'https://i.imgur.com/8DoWCKl_d.webp?maxwidth=760&fidelity=grand',
      ),
      SliderModel(
        subContent: 'Find a specialist that you only need on a consulting application',
        position: 3,
        content: 'Book an appointment at home',
        image: 'https://i.imgur.com/boSpNG7.png',
      ),
    ];
  }
}
