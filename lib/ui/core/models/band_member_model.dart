class BandMember {
  String name;
  String uuid;
  String role;

  BandMember({required this.name, required this.uuid, required this.role});

  factory BandMember.fromJson(Map<String, dynamic> json) {
    return BandMember(
      name: json['name'],
      uuid: json['uuid'],
      role: json['role'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'uuid': uuid,
      'role': role,
    };
  }
}