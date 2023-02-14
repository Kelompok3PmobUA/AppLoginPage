import 'package:flutter/material.dart';

void main() {
  runApp(stlpage());
}

class stlpage extends StatelessWidget {
  stlpage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loginPage(),
    );
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
    return Scaffold(body: loginUI());
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
            style: TextStyle(fontSize: 44.0, fontWeight: FontWeight.bold),
          ),
          const Text(
            "Lets Schedule and Share Your Activities!",
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
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
                  color: Colors.blueAccent,
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
                  color: Colors.blueAccent,
                )),
          ),
          Container(
            width: 88.0,
            child: RawMaterialButton(
              fillColor: Colors.amber,
              onPressed: () {},
              child: Text("Login"),
            ),
          )
        ],
      ),
    );
  }
}
