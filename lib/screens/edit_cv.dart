import 'package:flutter/material.dart';
import 'main_screen.dart';
import 'package:cv_app/constants/cv_fields.dart';
import 'package:cv_app/constants/text_strings.dart';

class EditCvPage extends StatefulWidget {
  final CVFields cvFields;
  final Function(CVFields) onUpdateCallback;
  const EditCvPage({required this.cvFields, required this.onUpdateCallback});

  @override
  EditCvPageState createState() => EditCvPageState();
}

class EditCvPageState extends State<EditCvPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _slackIdController = TextEditingController();
  final TextEditingController _gitHubIdController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();
  final TextEditingController _experiencesController = TextEditingController();
  final TextEditingController _educationController = TextEditingController();
  final TextEditingController _skillsInterestsController =
      TextEditingController();

  AllStrings allStrings = AllStrings();
  @override
  void initState() {
    super.initState();

    _nameController.text = widget.cvFields.name;
    _addressController.text = widget.cvFields.address;
    _roleController.text = widget.cvFields.role;
    _phoneController.text = widget.cvFields.phone;
    _emailController.text = widget.cvFields.email;
    _slackIdController.text = widget.cvFields.slackId;
    _gitHubIdController.text = widget.cvFields.githubId;
    _bioController.text = widget.cvFields.bio;
    _educationController.text = widget.cvFields.education;
    _experiencesController.text = widget.cvFields.experience;
    _skillsInterestsController.text = widget.cvFields.skillsInterests;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit CV',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: const Color(0xffabc4ff),
      ),
      backgroundColor: const Color(0xffEDF2FB),
      body: GradientBackground(
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            colors: [Color(0xffEDF2FB), Color(0xffabc4ff)]),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 15,
              ),
              //name
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: allStrings.nameLabel,
                  labelStyle: const TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.4)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(23),
                  ),
                ),
                style: const TextStyle(color: Colors.black87),
              ),
              const SizedBox(
                height: 15,
              ), //'address'
              TextField(
                controller: _addressController,
                decoration: InputDecoration(
                  labelText: allStrings.addressLabel,
                  labelStyle: const TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.4)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(23),
                  ),
                ),
                style: const TextStyle(color: Colors.black87),
              ),
              const SizedBox(
                height: 15,
              ),
              //role
              TextField(
                controller: _roleController,
                decoration: InputDecoration(
                  labelText: allStrings.roleLabel,
                  labelStyle: const TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.4)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(23),
                  ),
                ),
                style: const TextStyle(color: Colors.black87),
              ),
              const SizedBox(
                height: 15,
              ),
              //phone
              TextField(
                controller: _phoneController,
                decoration: InputDecoration(
                  labelText: allStrings.phoneLabel,
                  labelStyle: const TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.4)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(23),
                  ),
                ),
                style: const TextStyle(color: Colors.black87),
              ),
              const SizedBox(
                height: 15,
              ),
              //email
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: allStrings.emailLabel,
                  labelStyle: const TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.4)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(23),
                  ),
                ),
                style: const TextStyle(color: Colors.black87),
                maxLength: 100,
              ),
              const SizedBox(
                height: 15,
              ),
              //SLACK
              TextField(
                controller: _slackIdController,
                decoration: InputDecoration(
                  labelText: allStrings.slackIdLabel,
                  labelStyle: const TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.4)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(23),
                  ),
                ),
                style: const TextStyle(color: Colors.black87),
                maxLength: 25,
              ),
              const SizedBox(
                height: 15,
              ),
              //'GITHUB HANDLE:'
              TextField(
                controller: _gitHubIdController,
                decoration: InputDecoration(
                  labelText: allStrings.githubIdLabel,
                  labelStyle: const TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.4)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(23),
                  ),
                ),
                style: const TextStyle(color: Colors.black87),
                maxLength: 25,
              ),
              const SizedBox(
                height: 15,
              ),
              //experience'
              TextField(
                controller: _experiencesController,
                decoration: InputDecoration(
                  labelText: allStrings.experiencesLabel,
                  labelStyle: const TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.4)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(23),
                  ),
                ),
                style: const TextStyle(color: Colors.black87),
              ),
              const SizedBox(
                height: 15,
              ),
              //education
              TextField(
                controller: _educationController,
                decoration: InputDecoration(
                  labelText: allStrings.educationLabel,
                  labelStyle: const TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.4)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(23),
                  ),
                ),
                style: const TextStyle(color: Colors.black87),
              ),
              const SizedBox(
                height: 15,
              ),
              //bio
              TextField(
                controller: _bioController,
                decoration: InputDecoration(
                  labelText: allStrings.bioLabel,
                  labelStyle: const TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.4)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(23),
                  ),
                ),
                style: const TextStyle(color: Colors.black87),
              ),
              const SizedBox(
                height: 15,
              ),
              //skills
              TextField(
                controller: _skillsInterestsController,
                decoration: InputDecoration(
                  labelText: allStrings.skillsInterestsLabel,
                  labelStyle: const TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.4)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(23),
                  ),
                ),
                style: const TextStyle(color: Colors.black87),
              ),

              SubmitButton(
                  addressController: _addressController,
                  nameController: _nameController,
                  roleController: _roleController,
                  educationController: _educationController,
                  phoneController: _phoneController,
                  emailController: _emailController,
                  slackIdController: _slackIdController,
                  gitHubIdController: _gitHubIdController,
                  bioController: _bioController,
                  skillsInterestsController: _skillsInterestsController,
                  experiencesController: _experiencesController,
                  widget: widget),
            ],
          ),
        ),
      ),
    );
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required TextEditingController experiencesController,
    required TextEditingController nameController,
    required TextEditingController roleController,
    required TextEditingController educationController,
    required TextEditingController phoneController,
    required TextEditingController emailController,
    required TextEditingController slackIdController,
    required TextEditingController gitHubIdController,
    required TextEditingController bioController,
    required TextEditingController addressController,
    required TextEditingController skillsInterestsController,
    required this.widget,
  })  : _nameController = nameController,
        _roleController = roleController,
        _educationController = educationController,
        _phoneController = phoneController,
        _emailController = emailController,
        _slackIdController = slackIdController,
        _gitHubIdController = gitHubIdController,
        _bioController = bioController,
        _skillsInterestsController = skillsInterestsController,
        _addressController = addressController,
        _experiencesController = experiencesController;

  final TextEditingController _addressController;
  final TextEditingController _nameController;
  final TextEditingController _roleController;
  final TextEditingController _educationController;
  final TextEditingController _phoneController;
  final TextEditingController _emailController;
  final TextEditingController _slackIdController;
  final TextEditingController _gitHubIdController;
  final TextEditingController _bioController;
  final TextEditingController _experiencesController;
  final TextEditingController _skillsInterestsController;
  final EditCvPage widget;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(150, 51)),
        maximumSize: MaterialStateProperty.all(const Size(150, 51)),
        elevation: const MaterialStatePropertyAll(20),
        backgroundColor: MaterialStateProperty.all(
          const Color(0xffabc4ff),
        ),
      ),
      onPressed: () {
        final updatedcvFields = CVFields(
          name: _nameController.text,
          role: _roleController.text,
          education: _educationController.text,
          phone: _phoneController.text,
          email: _emailController.text,
          slackId: _slackIdController.text,
          githubId: _gitHubIdController.text,
          bio: _bioController.text,
          experience: _experiencesController.text,
          address: _addressController.text,
          skillsInterests: _skillsInterestsController.text,
        );
        widget.onUpdateCallback(updatedcvFields);
        print(updatedcvFields);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.green,
            content: TextfieldLabel(
              labelString: 'Updated',
            ),
            duration: const Duration(seconds: 1),
          ),
        );

        Navigator.pop(context);
      },
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Update Details",
            style: TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
