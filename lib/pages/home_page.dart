import 'package:flutter/material.dart';
import 'package:phone_auth_firebase_tutorial/controllers/auth_service.dart';
import 'package:phone_auth_firebase_tutorial/pages/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Great you are now logged in."),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(
              onPressed: () {
                AuthService.logout();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: const Text("Logout"))
        ],
      )),
    );
  }
}
