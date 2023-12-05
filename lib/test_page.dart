import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  FocusNode pwdFocus = FocusNode();
  TextEditingController pwdTEC = TextEditingController();
  bool xPwd = false;
  bool xShowpwd = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
        title: Image.asset(
          "assets/nflogo.png",
          width: 140,
        ),
      ),
      body: Container(
        color: Color.fromRGBO(45, 45, 45, 1.0),
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: TextField(
            controller: pwdTEC,
            onTapOutside: (input) {
              pwdFocus.unfocus();
            },
            onChanged: (input) {
              checkPwd();
            },
            obscureText: xShowpwd ? true : false,
            focusNode: pwdFocus,
            decoration: InputDecoration(
              suffixIcon: xPwd
                  ? GestureDetector(
                      onTap: () {
                        showPwd();
                      },
                      child: xShowpwd ? Icon(Icons.visibility_off_rounded) :Icon(Icons.visibility_rounded) ,)
                  : null,
              fillColor: Colors.cyan,
              filled: true,
              hintText: "Password",
              hintStyle: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }

  void checkPwd() {
    if (pwdTEC.text.isNotEmpty) {
      setState(() {
        xPwd = true;
      });
    } else {
      setState(() {
        xPwd = false;
      });
    }
  }

  void showPwd() {
    setState(() {
      xShowpwd = !xShowpwd;
    });
  }
}
