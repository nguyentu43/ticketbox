import 'package:flutter/material.dart';
import 'package:ticketbox/widgets/curve_clipper.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          ClipPath(
            clipper: CurveClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/bg.jpg'))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Text('LOGIN',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10.0,
                ),
                Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                        decoration: InputDecoration(
                      hintText: "Email:",
                      border: OutlineInputBorder(),
                    )),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password:",
                          border: OutlineInputBorder(),
                        )),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/');
                        },
                        child: Text('Submit'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent,
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            textStyle: TextStyle(fontSize: 20.0))),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/register');
                        },
                        child: Text(
                          'Create Account',
                        ),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            textStyle: TextStyle(fontSize: 20.0))),
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
