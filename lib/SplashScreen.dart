import 'package:flutter/material.dart';
import 'package:food/dashboard/dashboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
     moveNextScreen();
    super.initState();
  }
  void moveNextScreen () {
    Future.delayed(const Duration(seconds: 3), () {

Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
        const Dashboard()), (Route<dynamic> route) => false);
});
  }
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      home: Scaffold(
        body: Column (
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Image.asset('assets/images/img.png'),
            const SizedBox( height: 50,),
            const CircularProgressIndicator()
           ],
        ),
      ),
    );
  }
}