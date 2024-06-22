import 'package:flutter/material.dart';
import 'package:potato_timer/features/timer/presentation/pages/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _navigateHome() async {
    await Future.delayed(const Duration(seconds: 3)).then((value){
      if (mounted) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (ctx) => const HomeScreen()));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _navigateHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Icon.png'),
            const SizedBox(height: 20),
            const Text(
              'iPotato Timer',
              style: TextStyle(
                  fontSize: 57,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff216C2E),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
