import 'package:flutter/material.dart';
import 'package:login_task/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _textController1 = TextEditingController();
  final _textController2 = TextEditingController();
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 47,
                      color: Color(0xff223453),
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Text(
                "Email",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              // Container(
              //   height: 50,
              //   width: MediaQuery.of(context).size.width,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
              //     color: Color(0xff303037),
              //     boxShadow: [
              //       BoxShadow(color: Color(0xff45134b), spreadRadius: 3),
              //     ],
              //   ),
              SizedBox(
                height: 10,
              ),
              TextField(
                cursorColor: Colors.black.withOpacity(0.5),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  hintText: "task@gmail.com ",
                  hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                  // filled: true,
                  // fillColor: Color(0xffe6edf3).withOpacity(0.2),
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                ),
                controller: _textController1,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Password",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  hintText: "Enter your password",
                  hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                  suffixIcon: InkWell(
                    onTap: _toggle,
                    child: Icon(
                      _obscureText ? Icons.lock : Icons.lock_open,
                      size: 17.0,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  // filled: true,
                  // fillColor: Color(0xffe6edf3).withOpacity(0.2),
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                ),
                controller: _textController2,
              ),
              SizedBox(
                height: 53,
              ),
              Align(
                alignment: Alignment.center,
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 350, height: 50),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Test()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 22),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff0165ff),
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        // side: BorderSide(color: Colors.teal, width: 2.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0165ff)),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Text(
                    "Or login with",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black.withOpacity(0.8),
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.facebook,
                          size: 40,
                          color: Color(0xff0165ff),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "New user?",
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.black.withOpacity(0.8),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Create an account",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff0165ff)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
