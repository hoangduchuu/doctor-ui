import 'package:doctor_meet/model/slider_model.dart';
import 'package:doctor_meet/repository/config_repository.dart';
import 'package:doctor_meet/utils/mock.dart';

class ConfigRepositoryImpl implements ConfigRepository {
  @override
  Future<List<SliderModel>> getSliders() {
    return Future.value(Mock().getSliders());
  }
}
