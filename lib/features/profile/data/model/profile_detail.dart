class ProfileDetails {
  final String name;
  final String designation;
  ProfileDetails({
    required this.name,
    required this.designation,
  });
  static toMap({String? name,String? designation}) {
    return {
      'name': name,
      'designation': designation,
    };
  }
}
