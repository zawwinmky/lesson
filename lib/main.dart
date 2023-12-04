import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  FocusNode nameFocus = FocusNode();
  FocusNode pwdFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Icon(
              Icons.arrow_back_rounded,
              size: 35,
              color: Colors.white,
            ),
          ),
          leadingWidth: 30,
          title: Image.asset(
            "assets/nflogo.png",
            width: 130,
          ),
        ),
        backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(54, 54, 54, 1.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  cursorColor: Colors.white,
                  onTapOutside: (input) {
                    nameFocus.unfocus();
                  },
                  focusNode: nameFocus,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Phone or Email",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(175, 175, 175, 1.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(54, 54, 54, 1.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  focusNode: pwdFocus,
                  cursorColor: Colors.white,
                  onTapOutside: (input) {
                    pwdFocus.unfocus();
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(175, 175, 175, 1.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 2,
                    color: Colors.white70,
                  ),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(250, 250, 250, 1.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Forgot Password?",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromRGBO(175, 175, 175, 1.0)),
              ),
              SizedBox(
                height: 35,
              ),
              Text("New to Neflix? Sign up now.",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color.fromRGBO(175, 175, 175, 1.0))),
              SizedBox(
                height: 35,
              ),
              Text(
                "Sign in is protected by Google reCAPTCHA to ensuere you're not a bot.",
                style: TextStyle(
                    fontSize: 11, color: Color.fromRGBO(95, 95, 95, 1.0)),
              ),
              Text(
                "Learn more.",
                style: TextStyle(
                    fontSize: 12, color: Color.fromRGBO(95, 95, 95, 1.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
