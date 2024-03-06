import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "onboarding",
      home: OnboardingPageView(),
    );
  }
}

class OnboardingPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(),
          children: [
            Image.asset(
              'images/bg kopi.png',
              height: 450,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 0, // Sesuaikan dengan kebutuhan Anda
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Coffee so good,\nyour taste buds\n      will love it.',
                style: TextStyle(
                    fontFamily: 'sora',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 15, // Sesuaikan dengan kebutuhan Anda
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                'The best grain, the finest roast, the\n                      powerful flavor.',
                style: TextStyle(
                    fontFamily: 'sora',
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                    color: Color.fromRGBO(169, 169, 169, 1)),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Home()
                ));
              },
              style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(198, 124, 78, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18))),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
              ),
          ],
        ),
      ),
    );
  }
}
