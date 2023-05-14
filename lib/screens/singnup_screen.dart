import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/singnin_screen.dart';

import '../resuable_widgets/reusable_widget.dart';
import 'contact_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _UserTextController = TextEditingController();
  TextEditingController _PhoneTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("TOWKAR"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 255, 227, 143)),
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.1, 20, 0),
          child: Column(
            children: <Widget>[
              logoWidget("assets/oo.png"),
              Text(
                "SignUp",
                style: TextStyle(
                    height: 0, fontWeight: FontWeight.bold, fontSize: 100),
              ),
              SizedBox(
                height: 30,
              ),
              reusableTextField("Enter UserName", Icons.person_outline, false,
                  _emailTextController),
              SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Password", Icons.lock_outline, true,
                  _passwordTextController),
              SizedBox(
                height: 20,
              ),
              reusableTextField("Enter UserName", Icons.verified_user_outlined,
                  false, _UserTextController),
              SizedBox(
                height: 20,
              ),
              reusableTextField("Enter PhoneNUmber", Icons.phone_android, false,
                  _PhoneTextController),
              SizedBox(
                height: 20,
              ),
              signInSignUpButton(context, true, () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ContactListScreen(),
                  ),
                );
              })
            ],
          ),
        )),
      ),
    );
  }
}
