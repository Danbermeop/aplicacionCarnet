class UserModel {
  final String firstName;
  final String lastName;
  final String email;
  final String dateOfBirth;
  final String pictureUrl;
  final String career;
  final String cycle;

  UserModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.dateOfBirth,
    required this.pictureUrl,
    required this.career,
    required this.cycle,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      firstName: json['name']['first'],
      lastName: json['name']['last'],
      email: json['email'],
      dateOfBirth: json['dob']['date'],
      pictureUrl: json['picture']['large'],
      career: '', // Se asignará posteriormente
      cycle: '',  // Se asignará posteriormente
    );
  }

  String get fullName => '$firstName $lastName';
}