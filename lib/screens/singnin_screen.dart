import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/singnup_screen.dart';

import '../resuable_widgets/reusable_widget.dart';
import 'contact_screen.dart';

class SingnInscreen extends StatefulWidget {
  const SingnInscreen({super.key});

  @override
  State<SingnInscreen> createState() => _SingnInscreenState();
}

class _SingnInscreenState extends State<SingnInscreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                " TOWKAR SignIn",
                style: TextStyle(
                    height: 0, fontWeight: FontWeight.bold, fontSize: 50),
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
              signInSignUpButton(context, true, () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ContactListScreen(),
                  ),
                );
              }),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text(
                  "Don't have an account? SignUp",
                  style: TextStyle(fontSize: 25),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        )),
      ),
    );
  }
}
