

class UserModel {
  final String id;
  final String username;
  final String name;
  final String email;
  final List<String> roles;
  final bool hasTrainerProfile;

  const UserModel({
    required this.id,
    required this.username,
    required this.name,
    required this.email,
    required this.roles,
    required this.hasTrainerProfile,
  });
  // Create a UserModel from a Map structure
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      username: map['username'] ?? '',
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      roles: List<String>.from(map['roles'] ?? const []),
      hasTrainerProfile: map['has_trainer_profile'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'name': name,
      'email': email,
      'roles': roles,
      'has_trainer_profile': hasTrainerProfile,
    };
  }
}
