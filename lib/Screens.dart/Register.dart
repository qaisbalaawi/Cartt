import 'package:flutter/material.dart';
import 'package:simple_cart/TextField.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  
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
              TextFieldWidget(
                  controller: usernamecontroller,
                  obscuerText: false,
                  hintText: 'Enter the Email'),
              SizedBox(height: 40),
              TextFieldWidget(
                  controller: passwordcontroller,
                  obscuerText: true,
                  hintText: 'Enter the Password'),
              SizedBox(height: 30.0),
              Material(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.lightBlueAccent,
                child: MaterialButton(
                  onPressed: () {},
                  minWidth: 250,
                  height: 42.0,
                  child: Text('Register'),
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
