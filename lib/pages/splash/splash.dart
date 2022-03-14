import 'package:flutter/material.dart';
import 'package:login_example/pages/login/login.dart';
import 'package:login_example/utilities/widgets/button.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF591FF8),
            Colors.white,
          ],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.api,
                  size: 30,
                  color: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'SPLASH',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: CarouselSlider(
                items: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 10,
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.white.withOpacity(0.15),
                          style: BorderStyle.solid),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          //  Colors.white.withOpacity(0.03),
                          const Color(0xFF591FF8).withOpacity(0.25),
                          const Color(0xFF591FF8).withOpacity(0.15),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        'Welcome to Login Example!',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 10,
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          //  Colors.white.withOpacity(0.03),
                          const Color(0xFF591FF8).withOpacity(0.25),
                          const Color(0xFF591FF8).withOpacity(0.15),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Colors.white.withOpacity(0.15),
                          style: BorderStyle.solid),
                    ),
                    child: const Center(
                      child: Text(
                        'Ac placerat vestibulum lectus mauris ultrices eros.',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 10,
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          //  Colors.white.withOpacity(0.03),
                          const Color(0xFF591FF8).withOpacity(0.25),
                          const Color(0xFF591FF8).withOpacity(0.15),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Colors.white.withOpacity(0.15),
                          style: BorderStyle.solid),
                    ),
                    child: const Center(
                      child: Text(
                        'Elit scelerisque in dictum non consectetur a erat nam.',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  autoPlay: true,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Button(
              buttonText: 'SKIP',
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                      builder: (BuildContext context) => const Login())),
            ),
          ],
        ),
      ),
    );
  }
}
