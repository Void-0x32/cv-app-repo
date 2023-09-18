import 'package:flutter/material.dart';
import 'cv_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    getCv();
  }

  void getCv() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const CVScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcaf0f8),
      body: SafeArea(
        child: GradientBackground(
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              colors: [Color(0xffEDF2FB), Color(0xffabc4ff)]),
          child: const Center(
            child: Text(
              'Welcome, this is my CV...',
              style: TextStyle(
                  color: Color(0xff03045E),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Sono',
                  height: 15),
            ),
          ),
        ),
      ),
    );
  }
}

class GradientBackground extends StatelessWidget {
  GradientBackground({required this.gradient, required this.child});
  final Gradient gradient;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: gradient,
          ),
        ),
        child,
      ],
    );
  }
}
