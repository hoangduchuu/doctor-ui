class DoctorModel {
  String id;
  String name;
  String specialty;
  double ratingScore;
  String avatar;

  DoctorModel({required this.id, required this.name, required this.specialty, required this.ratingScore,required this.avatar});

  @override
  String toString() {
    return 'DoctorModel{id: $id, name: $name, specialty: $specialty, ratingScore: $ratingScore, avatar: $avatar}';
  }
}
