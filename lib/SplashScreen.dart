import 'dart:async';
import 'package:flutter/material.dart';
import 'HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5), () {Navigator.push(context,MaterialPageRoute(builder: (context) => Whatsapp(),));});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: SizedBox(
              height: 150,
                child: Image(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/479px-WhatsApp.svg.png'))),
          ),
          Text('WHATSAPP',style: TextStyle(fontSize: 30,decoration: TextDecoration.underline),)
        ],
      ),
    );
  }
}
