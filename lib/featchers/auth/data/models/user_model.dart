class UserModel {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String? gender;
  final int active;
  final String image;
  final String type;
  final int userableId;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
    required this.active,
    required this.image,
    required this.type,
    required this.userableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'gender': gender,
      'active': active,
      'image': image,
      'type': type,
      'userableId': userableId,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] is int
          ? map['id']
          : int.tryParse(map['id']?.toString() ?? '') ?? 0,
      name: map['name']?.toString() ?? '',
      email: map['email']?.toString() ?? '',
      phone: map['phone']?.toString() ?? '',
      gender: map['gender']?.toString(),
      active: map['active'] is int
          ? map['active']
          : int.tryParse(map['active']?.toString() ?? '') ?? 0,
      image: map['image']?.toString() ?? '',
      type: map['type']?.toString() ?? '',
      userableId: map['userable_id'] is int
          ? map['userable_id']
          : int.tryParse(map['userable_id']?.toString() ?? '') ?? 0,
    );
  }
}
