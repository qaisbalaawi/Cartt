import 'package:flutter/material.dart';
import 'package:simple_cart/TextField.dart';
import 'productScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernamecontroller = TextEditingController();

  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Alpha Market',
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 40),
              TextFieldWidget(
                  controller: usernamecontroller,
                  obscuerText: false,
                  hintText: 'Enter the Email'),
              SizedBox(height: 20),
              TextFieldWidget(
                  controller: passwordcontroller,
                  obscuerText: true,
                  hintText: 'Enter the password'),
              SizedBox(height: 20),
              Material(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.lightBlueAccent,
                child: MaterialButton(
                  onPressed: () {
                    //product Screen
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => productScreen()));
                  },
                  minWidth: 250,
                  height: 42.0,
                  child: Text('Log in'),
                  textColor: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
