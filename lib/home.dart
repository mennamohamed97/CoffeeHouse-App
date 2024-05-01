import 'package:coffee_app/Login.dart';
import 'package:coffee_app/signup.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final registerButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        width: 150,
        height: 40,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>const SingupPage()));
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            padding: const EdgeInsets.all(12),
            backgroundColor: Colors.brown,
          ),
          child: const Text(
            'Register',
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
        ),
      ),

    );
    final loginbutton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        width: 150,
        height: 40,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>const LoginPage()));
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            padding: const EdgeInsets.all(12),
            backgroundColor: Colors.white,
          ),
          child: const Text(
            'Login',
            style: TextStyle(color: Colors.brown, fontSize: 12.0),
          ),
        ),
      ),

    );
    final googlebutton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        height: 40,
        width: 10,
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.blue),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
          ),
          child: const Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(Icons.mail, color: Colors.blue),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Connect with Google",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
        ),
      ),
    );
    final facebookbutton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        height: 40,
        width: 10,
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.blue),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
            backgroundColor: Colors.blue,
          ),
          child: const Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(Icons.facebook, color: Colors.white),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Connect with Facebook",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );


    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 2.3,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/car.png'),
                          fit: BoxFit.scaleDown),
                    ),
                  ),
                  ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                    children: <Widget>[
            const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Get the best coffee in Alex!',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.brown, fontSize: 40.0),
                  textAlign: TextAlign.center,
                )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[loginbutton, registerButton],
                      ),
                      googlebutton,
                      facebookbutton
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}