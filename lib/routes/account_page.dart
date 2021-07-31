import 'package:flutter/material.dart';
import 'package:ticketbox/widgets/arc_clipper.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(clipBehavior: Clip.none, children: [
              ClipPath(
                clipper: ArcClipper(),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/bg.jpg'))),
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width / 2 - 50.0,
                height: MediaQuery.of(context).size.height / 3 + 50.0 * 3,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('M',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  radius: 50.0,
                ),
              )
            ]),
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Text('INFORMATION',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold)),
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
                      ElevatedButton(
                          onPressed: () {},
                          child: Text('Submit'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent,
                              padding: EdgeInsets.all(10.0),
                              textStyle: TextStyle(fontSize: 20.0))),
                    ],
                  ))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
