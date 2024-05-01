import 'package:coffee_app/Login.dart';
import 'package:coffee_app/menu.dart';
import 'package:flutter/material.dart';

class SingupPage extends StatefulWidget {
  const SingupPage({super.key});

  @override
  SingupPageState createState() => SingupPageState();
}

class SingupPageState extends State<SingupPage>{

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    Color bg = const Color(0xFFB98068);

    const solgan = Padding(
        padding: EdgeInsets.all(15.0),
        child: Text(
          'create your account',
          style: TextStyle(
              fontWeight: FontWeight.w400, color: Color(0xFFB98068), fontSize: 35.0),
          textAlign: TextAlign.start,
        ));
    final username = TextField(
      keyboardType: TextInputType.name,
      autofocus: false,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.person,
            color: bg,
          ),
          labelText: 'name'),
    );
    final email = TextField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.mail_outline,
            color: bg,
          ),
          labelText: 'E-mail'),
    );

    final pasword = TextField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      autofocus: false,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: bg,
          ),
          labelText: 'Password'),
    );
    final confirmpasword = TextField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      autofocus: false,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: bg,
          ),
          labelText: 'confirm pasword'),
    );
    final signupbutton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>const HomeScreen()));
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(12.0),
          backgroundColor: bg,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
        child: const Text(
          'Sing up',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
    final accountlabel = TextButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Already have an account? ',
            style: TextStyle(color: Colors.black54, fontSize: 15.0, fontWeight: FontWeight.w400),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
            },
            child: Text(
              'Log in',
              style: TextStyle(color: bg, fontSize: 15.0, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios),
                        color: bg,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(
                        width: 220,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Sign up',
                                style: TextStyle(
                                    color: bg,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w400),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                solgan,
                const SizedBox(
                  height: 25.0,
                ),
                username,
                const SizedBox(
                  height: 25.0,
                ),
                email,
                const SizedBox(
                  height: 25.0,
                ),
                pasword,
                const SizedBox(
                  height: 25.0,
                ),
                confirmpasword,
                const SizedBox(
                  height: 25.0,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                signupbutton,
                accountlabel
              ]),
        ));
  }
}