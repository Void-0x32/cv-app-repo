import 'package:flutter/material.dart';

class AllStrings {
  final  String name = 'Nzegwu Shammah Sopuluchukwu';
  final  String address = " Ijegun, Lagos State";
  final  String email = 'shammahsopulu0@gmail.com';
  final  String slackId = 'shammahSopulu';
  final  String githubId = 'Void-0x32';
  final  String experiences = "Internship at HNGx";
  final  String bio =
      "Aspiring Flutter Developer with a passion for creating  mobile applications.";
  final  String education =
      "BSc Computer Science and Statistics, University of Nigeria Nsukka";
  final  String phone = "+234 91-5405-1809";
  final  String role = 'Mobile Developer & Writer';
  final  String skillsInterests =
      ' Writing, Critical Thinker, Wide Knowledge of basic Office tools, Creative Minded, Surface understanding of basic HTML and CSS, Ability to work well in a Team';

  final  String roleLabel = 'Role: ';
  final  String nameLabel = 'Name: ';
  final  String addressLabel = "Address: ";
  final  String emailLabel = 'Email Address: ';
  final  String slackIdLabel = 'Slack User: ';
  final  String githubIdLabel = 'Git-Hub: ';
  final  String bioLabel = "Personal Bio: ";
  final  String educationLabel = "Education: ";
  final  String phoneLabel = "Phone Number: ";
  final  String experiencesLabel = "Experiences: ";

  final  String skillsInterestsLabel = 'Skills & Interests: ';
}

class TextfieldLabel extends StatelessWidget {
   const TextfieldLabel({super.key, required this.labelString});

final String labelString;

  @override
  Widget build(BuildContext context) {
    return Text(
      labelString,
      style:  const TextStyle(
          color: Color(0xff0077b6), fontSize: 20, fontWeight: FontWeight.w700),
    );
  }
}
