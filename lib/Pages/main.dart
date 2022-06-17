import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

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
                ],
              ),
            ),
            SizedBox(
              height: width * 0.05,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome",
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54)),
                  Text("a@gmail.com",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500])),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
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
                  "Log out",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
