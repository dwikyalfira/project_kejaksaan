import 'package:flutter/material.dart';
import '../widget/button.login.dart';
import '../widget/buttton.register.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              './lib/assets/logo_kejaksaan.png',
              height: 200,
              width: 200,
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            ButtonRegister(),
            SizedBox(height: 22),
            ButtonLogin(),
          ],
        ),
      ),
    );
  }
}
