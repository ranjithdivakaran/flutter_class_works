import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Splash2()));
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(Icons.cake,size: 75,color: Colors.green,),
            Image.asset(
              "assets/icons/image.png",
              height: 100,
              width: 100,
            ),
            Text("My Application",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
