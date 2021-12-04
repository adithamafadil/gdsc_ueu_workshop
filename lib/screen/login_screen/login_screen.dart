import 'package:flutter/material.dart';
import 'package:gdsc_ueu_workshop/logic/sign_in_logic.dart';
import 'package:gdsc_ueu_workshop/screen/home_screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isTryingToSignIn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: _isTryingToSignIn
              ? const CircularProgressIndicator()
              : const Text('Login With Google'),
          onPressed: () async {
            setState(() {
              _isTryingToSignIn = true;
            });

            var user = await SignInUsecase.signInWithGoogle(context: context);

            setState(() {
              _isTryingToSignIn = false;
            });

            if (user != null) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Homescreen(user: user)),
              );
            }
          },
        ),
      ),
    );
  }
}
