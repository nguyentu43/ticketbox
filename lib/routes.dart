import 'package:flutter/material.dart';
import 'package:ticketbox/routes/home_page.dart';
import 'package:ticketbox/routes/login_page.dart';
import 'package:ticketbox/routes/register_page.dart';
import 'package:ticketbox/routes/search_page.dart';
import 'package:ticketbox/routes/tickets_page.dart';

class RouteGeneration {
  static const homePage = '/';
  static const searchPage = '/search';
  static const loginPage = '/login';
  static const registerPage = '/register';
  static const ticketsPage = '/tickets';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    print(settings.name);
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case searchPage:
        return MaterialPageRoute(builder: (_) => const SearchPage());
      case loginPage:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case registerPage:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      case ticketsPage:
        return MaterialPageRoute(builder: (_) => const TicketsPage());
      default:
        throw Exception('Route name not found');
    }
  }
}
