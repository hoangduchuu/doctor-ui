import 'package:doctor_meet/model/slider_model.dart';

abstract class ConfigRepository {
  Future<List<SliderModel>> getSliders();
}
