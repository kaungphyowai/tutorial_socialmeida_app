import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Media App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image(
                image: AssetImage('assets/images/login_background.jpg'),
                height: 2 * MediaQuery.of(context).size.height / 5,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'FRENZY',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 30,
                letterSpacing: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  hintText: "Username",
                  prefixIcon: Icon(Icons.contacts),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: 100,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
