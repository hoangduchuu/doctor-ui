import 'package:doctor_meet/model/doctor_model.dart';

class AppointmentModel {
  DoctorModel doctor;
  String dateStart;
  String dateEnd;
  String specialty;

  AppointmentModel({required this.doctor, required this.dateStart,required this.dateEnd, required this.specialty});
}
