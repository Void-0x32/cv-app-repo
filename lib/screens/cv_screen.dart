import 'package:flutter/material.dart';
import 'package:cv_app/constants/cv_fields.dart';
import 'edit_cv.dart';
import 'package:cv_app/constants/text_strings.dart';

class CVScreen extends StatefulWidget {
  const CVScreen({super.key});

  // final String cvUpdate;

  @override
  CVScreenState createState() => CVScreenState();
}

class CVScreenState extends State<CVScreen> {
  late TextEditingController _addressController;
  late TextEditingController _nameController;
  late TextEditingController _roleController;
  late TextEditingController _educationController;
  late TextEditingController _phoneController;
  late TextEditingController _emailController;
  late TextEditingController _slackIdController;
  late TextEditingController _gitHubIdController;
  late TextEditingController _bioController;
  late TextEditingController _experiencesController;
  late TextEditingController _skillsInterestsController;

  // fields for personal and professional details
  late CVFields cvFields;
  AllStrings allStrings = AllStrings();
  late String name = allStrings.name,
      address = allStrings.address,
      email = allStrings.email,
      phone = allStrings.phone,
      bio = allStrings.bio,
      slackId = allStrings.slackId,
      githubId = allStrings.githubId,
      education = allStrings.education,
      role = allStrings.role,
      skillsInterests = allStrings.skillsInterests,
      experience = allStrings.experiences;
  @override
  void initState() {
    super.initState();
    cvFields = CVFields(
      name: name,
      role: role,
      phone: phone,
      email: email,
      address: address,
      education: education,
      bio: bio,
      slackId: slackId,
      githubId: githubId,
      experience: experience,
      skillsInterests: skillsInterests,
    );
    _addressController = TextEditingController(text: allStrings.address);
    _nameController = TextEditingController(text: allStrings.name);
    _roleController = TextEditingController(text: allStrings.role);
    _phoneController = TextEditingController(text: allStrings.phone);
    _experiencesController = TextEditingController(text: allStrings.experiences);
    _educationController = TextEditingController(text: allStrings.education);
    _slackIdController = TextEditingController(text: allStrings.slackId);
    _gitHubIdController = TextEditingController(text: allStrings.githubId);
    _bioController = TextEditingController(text: allStrings.bio);
    _emailController = TextEditingController(text: allStrings.email);
    _skillsInterestsController =
        TextEditingController(text: allStrings.skillsInterests);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    _roleController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _educationController.dispose();
    _slackIdController.dispose();
    _gitHubIdController.dispose();
    _bioController.dispose();
    _experiencesController.dispose();
    _skillsInterestsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 200,
                color: const Color(0xffe2eafc),
                child: Column(
                  children: [
                     TextView(
                      text: allStrings.name,
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    ),
                     TextView(
                      text: allStrings.role,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                     TextView(
                      text: allStrings.phone,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                    Container(
                      width: 180,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 2.5,
                          style: BorderStyle.solid,
                          color: const Color(0xffb8c0ff),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                             Row(
                              children: [
                                const Icon(
                                  Icons.gps_fixed_outlined,
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                TextView(
                                    text: allStrings.addressLabel,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w900),
                              ],
                            ),
                             TextView(
                              text: allStrings.address,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                             Row(
                              children: [
                                const Icon(
                                  Icons.mail_outlined,
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                TextView(
                                  text: allStrings.emailLabel,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                ),
                              ],
                            ),
                             TextView(
                              text: allStrings.email,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'images/github.png',
                                  scale: 20,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                 TextView(
                                  text: allStrings.githubIdLabel,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                ),
                              ],
                            ),
                             TextView(
                              text: allStrings.githubId,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'images/slack_logo.png',
                                  scale: 17,
                                  fit: BoxFit.cover,
                                ),
                                 TextView(
                                  text: allStrings.slackIdLabel,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                ),
                              ],
                            ),
                             TextView(
                              text: allStrings.slackId,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      color: Color(0xff9381ff),
                      thickness: .5,
                    ),
                     TextView(
                      text: allStrings.educationLabel,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                     TextView(
                      text: allStrings.education,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                     TextView(
                      text: allStrings.bioLabel,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                    const Divider(
                      color: Color(0xff7209b7),
                      thickness: .50,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: const Color(0xffb8c0ff))),
                      child:  TextView(
                        text:
                            allStrings.bio,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      child:  TextView(
                        text: allStrings.experiencesLabel,
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const Divider(
                      height: 20,
                      color: Color(0xff9381ff),
                      thickness: .50,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: const Color(0xffb8c0ff))),
                      child:  TextView(
                        text: allStrings.experiences,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Divider(
                      height: .50,
                      color: Color(0xff9381ff),
                      thickness: .15,
                    ),
                    Container(
                      child:  TextView(
                        text: allStrings.skillsInterestsLabel,
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: const Color(0xffb8c0ff))),
                      child:  TextView(
                        text: allStrings.skillsInterests,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(150, 51)),
                        maximumSize:
                            MaterialStateProperty.all(const Size(150, 51)),
                        elevation: const MaterialStatePropertyAll(20),
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xffabc4ff),
                        ),
                      ),
                      onPressed: () {
                        cvFields = CVFields(
                          name: _nameController.text,
                          address: _addressController.text,
                          email: _emailController.text,
                          phone: _phoneController.text,
                          bio: _bioController.text,
                          slackId: _slackIdController.text,
                          githubId: _gitHubIdController.text,
                          education: _educationController.text,
                          experience: _experiencesController.text,
                          skillsInterests: _skillsInterestsController.text,
                          role: _roleController.text,
                        );
                        getCVdata(cvFields);
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Edit CV",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w700),
                          ),
                          Icon(
                            Icons.edit_outlined,
                            color: Colors.black,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
    void getCVdata(CVFields cvFields) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) => EditCvPage(
              cvFields: cvFields,
              onUpdateCallback: (updatedCv) {
                setState(() {
                  _nameController.text = updatedCv.name;
                  _addressController.text = updatedCv.address;
                  _emailController.text = updatedCv.email;
                  _phoneController.text = updatedCv.phone;
                  _bioController.text = updatedCv.bio;
                  _slackIdController.text = updatedCv.slackId;
                  _gitHubIdController.text = updatedCv.githubId;
                  _educationController.text = updatedCv.education;
                  _experiencesController.text = updatedCv.experience;
                  _skillsInterestsController.text = updatedCv.skillsInterests;
                  _roleController.text = updatedCv.role;
                });
              })),
    );
  }
}
class TextView extends StatelessWidget {
  const TextView(
      {super.key,
      required this.fontSize,
      required this.fontWeight,
      required this.text});

  final double fontSize;
  final FontWeight fontWeight;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text(
        text,
        softWrap: true,
        textAlign: TextAlign.center,
        overflow: TextOverflow.visible,
        style: TextStyle(
          color: const Color(0xff001f54),
          textBaseline: TextBaseline.alphabetic,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
      ),
    );
  }
}

