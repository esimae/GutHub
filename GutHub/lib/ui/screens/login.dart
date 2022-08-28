import 'package:flutter/material.dart';

import 'package:cookbook/ui/widgets/google_sign_in_button.dart'; 

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Private methods within build method help us to
    // organize our code and recognize structure of widget
    // that we're building:
    
    // New private method which includes the background image:
    BoxDecoration _buildBackground() {
      return BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/calum-lewis-rkT_TG5NKF8-unsplash.jpg"),
          fit: BoxFit.cover,
        ),
      );
    }
    
    Text _buildText() {
      return Text(
        'GutHub',
        style: TextStyle(
            fontFamily: 'Merriweather',
            fontSize: 45.0,
            color: const Color(0xFF9D874E),
          ),
        textAlign: TextAlign.center,
      );
    }

    return Scaffold(
      //backgroundColor: Colors.lightBlue,
      // New container widget to wrap our center widget
      body: Container(
        decoration: _buildBackground(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildText(),
              // Space between "Recipes" and the button:
              SizedBox(height: 50.0),
              GoogleSignInButton(
                onPressed: () =>
                  Navigator.of(context).pushReplacementNamed('/'),
              ),
            ],
          ),         
        ),
      ),
    );
  }
}