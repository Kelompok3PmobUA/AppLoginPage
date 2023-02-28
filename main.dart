import 'package:flutter/material.dart';
import 'gradientscaffold.dart';

void main() {
  runApp(stlpage());
}

class stlpage extends StatelessWidget {
  stlpage();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GradientScaffold(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(143, 102, 103, 161),
                Color.fromARGB(255, 149, 149, 149)
              ]),
          scaffold: Scaffold(
            body: loginUI(),
            backgroundColor: Colors.transparent,
          ),
        ));
  }
}

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loginUI(),
    );
  }
}

class loginUI extends StatefulWidget {
  const loginUI({super.key});

  @override
  State<loginUI> createState() => _loginUIState();
}

class _loginUIState extends State<loginUI> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Welcome",
            style: TextStyle(
                fontSize: 44.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(137, 43, 38, 38)),
          ),
          const Text(
            "Lets Schedule and Share Your Activities!",
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(137, 43, 38, 38)),
          ),
          const SizedBox(
            height: 44.0,
          ),
          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(
                  Icons.mail_lock_sharp,
                  color: Colors.black54,
                )),
          ),
          const SizedBox(
            height: 44.0,
          ),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(
                  Icons.password_sharp,
                  color: Colors.black54,
                )),
          ),
          Container(
            height: 20,
          ),
          Container(
            width: 10000.0,
            alignment: Alignment.center,
            child: RawMaterialButton(
              constraints:
                  const BoxConstraints.expand(width: 400.0, height: 40.0),
              autofocus: true,
              fillColor: Color.fromARGB(223, 202, 118, 187),
              onPressed: () {},
              child: Text("Login"),
            ),
          ),
          Container(
            height: 40,
          ),
          const Text(
            "Dont Have Account Yet",
            style: TextStyle(fontSize: 13),
            textAlign: TextAlign.center,
          ),
          Container(
            width: 140.0,
            alignment: Alignment.bottomLeft,
            child: RawMaterialButton(
              constraints: BoxConstraints.expand(width: 175.0, height: 40.0),
              fillColor: Color.fromARGB(223, 202, 118, 187),
              onPressed: () {},
              child: Text("Sign Up"),
            ),
          )
        ],
      ),
    );
  }
}
