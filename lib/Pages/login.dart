import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
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
                      image: AssetImage("lib/img/loginimg.png"),
                      fit: BoxFit.cover)),
            ),
            Container(
              width: width,
              margin: const EdgeInsets.only(left: 25, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Sign into your account",
                    style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  text_input_Field(),
                  SizedBox(
                    height: 20,
                  ),
                  text_input_Field(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      Text(
                        "Sign into your account",
                        style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: width * 0.05,
            ),
            Container(
              width: width * 0.5,
              height: height * 0.08,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage("lib/img/loginbtn.png"),
                      fit: BoxFit.cover)),
              child: Center(
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: width * 0.04,
            ),
            RichText(
              text: TextSpan(
                  text: "Don\'t have an account? ",
                  style: TextStyle(color: Colors.grey[500], fontSize: 20),
                  children: [
                    TextSpan(
                        text: "Create",
                        style: TextStyle(
                            color: Colors.black26,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ]),
            )
          ],
        ),
      )),
    );
  }

  Container text_input_Field() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 7,
                offset: Offset(1, 1),
                color: Colors.grey.withOpacity(0.2))
          ]),
      child: TextField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.white, width: 1.0)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.white, width: 1.0)),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
