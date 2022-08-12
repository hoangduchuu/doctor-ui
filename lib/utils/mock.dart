import 'package:doctor_meet/model/appointment_model.dart';
import 'package:doctor_meet/model/category_model.dart';
import 'package:doctor_meet/model/doctor_model.dart';
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
        image: 'https://i.imgur.com/o2PGmwF.png',
      ),
      SliderModel(
        subContent: 'Find a specialist that you only need on a consulting application',
        position: 3,
        content: 'Book an appointment at home',
        image: 'https://i.imgur.com/yeim8Hv.png',
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

  List<DoctorModel> getDoctors() {
    return [
      DoctorModel(
          id: '1',
          name: 'John doe',
          specialty: 'Dental',
          ratingScore: 4.8,
          avatar: 'https://i.imgur.com/UyE3SSy.png',
          description:
              'Specialization Degree Level I, Obstetrics & Gynaecology, University of Medicine and Pharmacy, Ho Chi Minh city, Vietnam, 2019'),
      DoctorModel(
          id: '2',
          name: 'Alex',
          specialty: 'Heart',
          ratingScore: 4.9,
          avatar: 'https://i.imgur.com/ScjjH7V.png',
          description:
              'Senior Consultant, Endocrinology, Nguyen Tri Phuong Hospital, Ho Chi Minh city, Vietnam, 2014-2019'),
      DoctorModel(
          id: '3',
          name: 'Chicharito',
          specialty: 'Heart',
          ratingScore: 4.7,
          avatar: 'https://i.imgur.com/yeim8Hv.png',
          description: '''Senior Consultant, Imaging Department, Saint Paul Hospital, Hanoi, Vietnam, 2000-2012
Head of Department, Imaging Department, Bao Son Hospital, Hanoi, Vietnam, 2012-2013
Deputy Head of Department, Imaging Department, Cardiology Hospital, Hanoi, Vietnam, 2013-2019
Senior Consultant, Imaging Department, Imaging Department, Vinmec Central Park Hospital, Ho Chi Minh city, Vietnam, 2019-2021
Senior Consultant, Imaging Department, FV Hospital, Ho Chi Minh City, Vietnam, since 2021'''),
      DoctorModel(
          id: '5',
          name: 'Ronaldo',
          specialty: 'Sport health',
          ratingScore: 4.5,
          avatar: 'https://i.imgur.com/o2PGmwF.png',
          description:
              '''Continuous Renal Replacement Therapy (CCRT), University of Medicine, Ho Chi Minh City, Vietnam, 2018 & 2019
Echocardiography and cardiovascular disease, University of Medicine, Ho Chi Minh City, Vietnam, 2019'''),
      DoctorModel(
          id: '6',
          name: 'Karim Alexi',
          specialty: 'Sport health',
          ratingScore: 6.5,
          avatar: 'https://i.imgur.com/5xLl73t.png',
          description:
              '''Continuous Renal Replacement Therapy (CCRT), University of Medicine, Ho Chi Minh City, Vietnam, 2018 & 2019
Echocardiography and cardiovascular disease, University of Medicine, Ho Chi Minh City, Vietnam, 2019'''),
      DoctorModel(
          id: '7',
          name: 'Henry Kang',
          specialty: 'Sport health',
          ratingScore: 6.5,
          avatar: 'https://i.imgur.com/DVrg0zP.png',
          description:
              '''Continuous Renal Replacement Therapy (CCRT), University of Medicine, Ho Chi Minh City, Vietnam, 2018 & 2019
Echocardiography and cardiovascular disease, University of Medicine, Ho Chi Minh City, Vietnam, 2019'''),
    ];
  }

  List<AppointmentModel> getAppointment() {
    return [
      AppointmentModel(
        specialty: '${getCategory()[0]}',
        dateStart: '2022-09-10T00:00:00.000000Z',
        dateEnd: '2022-09-10T00:30:00.000000Z',
        doctor: getDoctors()[0],
      ),
      AppointmentModel(
        specialty: getCategory()[1].name,
        dateStart: '2022-09-10T00:00:00.000000Z',
        dateEnd: '2022-09-10T00:30:00.000000Z',
        doctor: getDoctors()[1],
      ),
      AppointmentModel(
        specialty: getCategory()[2].name,
        dateStart: '2022-09-10T00:00:00.000000Z',
        dateEnd: '2022-09-10T00:30:00.000000Z',
        doctor: getDoctors()[2],
      ),
      AppointmentModel(
        specialty: getCategory()[1].name,
        dateStart: '2022-09-10T00:00:00.000000Z',
        dateEnd: '2022-09-10T00:30:00.000000Z',
        doctor: getDoctors()[3],
      ),
      AppointmentModel(
        specialty: getCategory()[0].name,
        dateStart: '2022-09-10T00:00:00.000000Z',
        dateEnd: '2022-09-10T00:30:00.000000Z',
        doctor: getDoctors()[1],
      ),
      AppointmentModel(
        specialty: getCategory()[2].name,
        dateStart: '2022-09-10T00:00:00.000000Z',
        dateEnd: '2022-09-10T00:30:00.000000Z',
        doctor: getDoctors()[3],
      ),
      AppointmentModel(
        specialty: getCategory()[0].name,
        dateStart: '2022-09-10T00:00:00.000000Z',
        dateEnd: '2022-09-10T00:30:00.000000Z',
        doctor: getDoctors()[3],
      ),
    ];
  }

  String mapCloneUrl() => 'https://i.imgur.com/HOmFB7E.png';
}
