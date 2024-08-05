import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mejakita_project/pages/login.dart';

class RegisterSplash extends StatefulWidget {
  const RegisterSplash({super.key});

  @override
  State<RegisterSplash> createState() => _RegisterSplashState();
}

class _RegisterSplashState extends State<RegisterSplash>
    with SingleTickerProviderStateMixin {
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const LogIn(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Register Complete',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'You successfully to create your account',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 42,
            ),
            Image(
              image: AssetImage('assets/images/load.png'),
              width: 160,
              height: 160,
            )
          ],
        ),
      ),
    );
  }
}
