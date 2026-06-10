


class TrainerInfo {
  final String bio;
  final String expertise;
  final int experienceYears;
  TrainerInfo({
    required this.bio,
    required this.expertise,
    required this.experienceYears,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bio': bio,
      'expertise': expertise,
      'experience_years': experienceYears,
    };
  }

  factory TrainerInfo.fromMap(Map<String, dynamic> map) {
    return TrainerInfo(
      bio: map['bio'],
      expertise: map['expertise'],
      experienceYears: map['experience_years'] ,
    );
  }


}
