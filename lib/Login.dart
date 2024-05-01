import 'package:coffee_app/menu.dart';
import 'package:coffee_app/signup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color bg = const Color(0xFFB98068);
    List<TextEditingController> controllers = List.generate(4, (index) => TextEditingController());
    const solgan = Padding(
        padding: EdgeInsets.all(15.0),
        child: Text(
          'Welcome Back!',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Color(0xFFB98068),
              fontSize: 40.0),
          textAlign: TextAlign.start,
        ));

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

    final loginbutton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const HomeScreen()));
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(12.0),
          backgroundColor: bg,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
        child: const Text(
          'Log In',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
    final resethbutton =Center(
      child:
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const HomeScreen()));
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 90.0),
          backgroundColor: bg,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
        child: const Text(
          'Reset password',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    ));
    final digitsbutton = Center(
    child:Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return SingleChildScrollView(
                child: Container(
                  width: 500.0,
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Reset password',
                        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20.0),
                      const Text(
                        'Set the new password for your account so you can login and access all the features.',
                        style: TextStyle(fontSize: 18.0,color: Colors.black54),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        'Password',
                        style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                      ),
                      const TextField(
                        obscureText: true,
                        autofocus: false,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color(0xFFB98068),
                          ),
                          labelText: 'Password',
                        ),
                      ),
                      const SizedBox(height: 30,),
                      const Text(
                        'Confirm password',
                        style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                      ),
                      const TextField(
                        obscureText: true,
                        autofocus: false,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color(0xFFB98068),
                          ),
                          labelText: 'Confirm Password',
                        ),
                      ),
                      const SizedBox(height: 30,),
                      resethbutton,

                    ],
                  ),
                ),
              );
            },
          );

        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 120.0),
          backgroundColor: bg,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
        child: const Text(
          'Continue',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    ));
    final continuebutton =Center(
    child:Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0,),
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 500.0,
                width: 500.0,
                padding: const EdgeInsets.all(30.0),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Enter 4 Digits Code',
                      style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'Enter the 4 digits code that you received on your mail.',
                      style: TextStyle(fontSize: 18.0,color: Colors.black54),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                   Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) => SizedBox(
                width: 60.0,
                child: TextField(
                  controller: controllers[index],
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20.0),
                  decoration: const InputDecoration(
                    counter: Offstage(),
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(),
                  ),
                ),
              )),
              ),
                    const SizedBox(
                      height: 30,
                    ),
                    digitsbutton,
                  ],
                ),

              );

            },
          );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 120.0),
          backgroundColor: bg,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
        child: const Text(
          'Continue',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    ));

    final forgotlabel = TextButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 800.0,
              width: 500.0,
              padding: const EdgeInsets.all(30.0),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Forgot password',
                    style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'Enter your email for verification process, \nwe will send 4 digits code to your email',
                    style: TextStyle(fontSize: 18.0,color: Colors.black54),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Email',
                    style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                  ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail_outline,
                      color: Color(0xFFB98068),
                    ),
                    labelText: 'E-mail'),
              ),
                  const SizedBox(
                    height: 10,
                  ),
              continuebutton,
                ],
              ),

            );

          },
        );
      },
      child: Text(
        'Forgot Password?',
        style:
            TextStyle(color: bg, fontSize: 15.0, fontWeight: FontWeight.w400),
      ),
    );

    final accountlabel = TextButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Don\'t have an account? ',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 15.0,
                fontWeight: FontWeight.w400),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SingupPage()));
            },
            child: Text(
              'Register',
              style: TextStyle(
                  color: bg, fontSize: 15.0, fontWeight: FontWeight.w400),
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
                                'Login',
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
                email,
                const SizedBox(
                  height: 25.0,
                ),
                pasword,
                const SizedBox(
                  height: 25.0,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: forgotlabel,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                loginbutton,
                accountlabel,
              ]),
        ));
  }
}
