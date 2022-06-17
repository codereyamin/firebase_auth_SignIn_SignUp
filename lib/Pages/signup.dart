import 'package:auth_firebase_signup_login/auth/authcontroler.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../wiget/email_input_field.dart';
import '../wiget/password_input_field.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    List images = [
      "g.png",
      "t.png",
      "f.png",
    ];

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              height: height * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/img/signup.png"),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.16,
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey[500],
                    backgroundImage: AssetImage("lib/img/profile1.png"),
                  )
                ],
              ),
            ),
            Container(
              width: width,
              margin: const EdgeInsets.only(left: 25, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text_input_Field(
                      email: "Email",
                      emailcontroler: emailController.toString()),
                  SizedBox(
                    height: 20,
                  ),
                  Password_input_Field(
                      password: "Password",
                      passwordcontroler: passwordController.toString()),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: width * 0.05,
            ),
            GestureDetector(
              onTap: () {
                AuthController.Instance.register(
                    emailController.text.trim(), passwordController.text);
              },
              child: Container(
                width: width * 0.5,
                height: height * 0.08,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage("lib/img/loginbtn.png"),
                        fit: BoxFit.cover)),
                child: Center(
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            RichText(
                text: TextSpan(
                    text: "Have an account?",
                    style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                    children: [
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = (() => Get.back()),
                      text: " Login Page",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(234, 221, 100, 100),
                          fontWeight: FontWeight.bold))
                ])),
            SizedBox(
              height: width * 0.04,
            ),
            RichText(
              text: TextSpan(
                text: "Sign up using one of the fowllowing methods",
                style: TextStyle(color: Colors.grey[500], fontSize: 16),
              ),
            ),
            Wrap(
              children: List<Widget>.generate(3, (index) {
                return Padding(
                  padding: const EdgeInsets.all(12),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[500],
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("lib/img/" + images[index]),
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      )),
    );
  }
}
