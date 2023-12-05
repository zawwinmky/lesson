import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  FocusNode nameFocus=FocusNode();
  FocusNode pwdFocus=FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
        leading: const Padding(
          padding: EdgeInsets.only(left: 10.0),
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
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 70,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(54, 54, 54, 1.0),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Align(
                alignment: Alignment.center,
                child: TextField(
                  focusNode: nameFocus,
                  textInputAction: TextInputAction.next,
                  cursorColor: Colors.white,
                  onTapOutside: (input) {
                    nameFocus.unfocus();
                  },
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Phone or Email",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(175, 175, 175, 1.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(54, 54, 54, 1.0),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child:  Align(
                alignment: Alignment.center,
                child: TextField(
                  focusNode: pwdFocus,
                  onTapOutside: (input){
                    pwdFocus.unfocus();
                  },
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(175, 175, 175, 1.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1.5,
                  color: Colors.white70,
                ),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
                ),
                onPressed: () {},
                child: const Text(
                  "Sign in",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(250, 250, 250, 1.0)),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Forgot Password?",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color.fromRGBO(175, 175, 175, 1.0)),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text("New to Netflix? Sign up now.",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromRGBO(175, 175, 175, 1.0))),
            const SizedBox(
              height: 35,
            ),
            const Text(
              "Sign in is protected by Google reCAPTCHA to ensure you're not a bot.",
              style: TextStyle(
                  fontSize: 11, color: Color.fromRGBO(95, 95, 95, 1.0)),
            ),
            const Text(
              "Learn more.",
              style: TextStyle(
                  fontSize: 12, color: Color.fromRGBO(95, 95, 95, 1.0)),
            ),
          ],
        ),
      ),
    );
  }
}
