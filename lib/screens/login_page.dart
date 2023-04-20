import 'package:flutter/material.dart';
import 'package:iih_global/screens/bottomnavigationbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isSwitched = true;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xfffefaf5),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Form(
          key: formKey,
          child: Column(children: <Widget>[
            Image.asset(
              'assets/images/Login.png',
              fit: BoxFit.cover,
              height: 300,
              width: 500,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Driver Login",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your email address";
                }
                if (validateEmail(value)) {
                  return null;
                } else {
                  return "Enter a valid email address";
                }
              },
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: "Email Address",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange, width: 2.0),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: "Password",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange, width: 2.0),
                ),
              ),
              obscureText: true,
            ),
            Row(children: [
              Switch(
                value: isSwitched,
                activeColor: Colors.orange,
                onChanged: (value) {
                  debugPrint("VALUE : $value");
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              const Text(
                'Remember me',
                style: TextStyle(color: Colors.black, fontSize: 15.0),
              ),
              const SizedBox(
                width: 75.0,
              ),
              TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 120.0, vertical: 15.0),
                  primary: Colors.orange,
                  textStyle: const TextStyle(
                    color: Colors.white,
                  )),
              child: const Text(
                'LOGIN',
                style: TextStyle(fontSize: 15.0),
              ),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyNavigationBar()),
                  );
                }
              },
            )
          ]),
        ),
      ),
    );
  }

  bool validateEmail(String value) {
    String emailValid = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = RegExp(emailValid);
    return regExp.hasMatch(value);
  }
}
