import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:onlineshop/login.dart';
import 'package:onlineshop/register.dart';
import 'package:onlineshop/welcomePage.dart';

void main() {
  runApp(MaterialApp(
    home: Router(),
  ));
}

class Router extends StatelessWidget {
  Router({super.key});

  final GoRouter _router = GoRouter(
    initialLocation: '/welcome',
      routes: [
        GoRoute(
          path: '/welcome',
          builder: (context, state) => Welcome()
        ),
        GoRoute(
            path: '/register',
            builder: (context, state) => Register()
        ),
        GoRoute(
            path: '/login',
            builder: (context, state) => Login()
        ),
      ],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

