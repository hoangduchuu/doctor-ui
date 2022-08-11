import 'package:doctor_meet/model/category_model.dart';
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

  String getAvatar() =>
      'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1061&q=80';

  List<CategoryModel> getCategory() {
    return [
      CategoryModel(icon: 'assets/tooth.png', name: 'Dentist'),
      CategoryModel(icon: 'assets/heartbeat.png', name: 'Heart surgeon'),
      CategoryModel(icon: 'assets/bone.png', name: 'Bone Specialist'),
    ];
  }
}
