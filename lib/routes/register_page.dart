import 'package:flutter/material.dart';
import 'package:ticketbox/widgets/curve_clipper.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key key}) : super(key: key);

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
              decoration: BoxDecoration(color: Colors.teal),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Text('REGISTER',
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
                      hintText: "Name:",
                      border: OutlineInputBorder(),
                    )),
                    SizedBox(
                      height: 10.0,
                    ),
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
                    TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Confirm:",
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
