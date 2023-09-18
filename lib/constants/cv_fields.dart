class CVFields {
  String name;
  String email;
  String phone;
  String address;
  String bio;
  String slackId;
  String githubId;
  String education;
  String experience;
  String role;
  String skillsInterests;

  CVFields({
    required this.skillsInterests,
    required this.role,
    required this.name,
    required this.address,
    required this.email,
    required this.phone,
    required this.bio,
    required this.slackId,
    required this.githubId,
    required this.education,
    required this.experience,
  });
}
