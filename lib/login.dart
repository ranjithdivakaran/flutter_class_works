import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.people),
                  hintText: "UserName",
                  labelText: "user name",
                  helperText: "user name must be an email",

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.remove_red_eye_sharp),
                  hintText: "password",
                  labelText: "password",
                  helperText: "password must be 6 characters",
                ),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
