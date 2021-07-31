import 'package:flutter/material.dart';
import 'package:ticketbox/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'TicketBox',
        theme: ThemeData(
            primaryColor: Colors.blueAccent,
            textTheme: GoogleFonts.latoTextTheme()),
        onGenerateTitle: (context) => 'TicketBox',
        initialRoute: RouteGeneration.homePage,
        onGenerateRoute: RouteGeneration.generateRoute,
        debugShowCheckedModeBanner: false);
  }
}
