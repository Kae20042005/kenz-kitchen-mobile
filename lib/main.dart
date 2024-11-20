import 'package:flutter/material.dart';
import 'package:kenz_kitchen_mobile/screens/login.dart';
import 'package:kenz_kitchen_mobile/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Provider(
            create: (_) {
                CookieRequest request = CookieRequest();
                return request;
            },
            child: MaterialApp(
                title: 'Kenz Kitchen',
                theme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown, primary: Colors.brown, secondary: Colors.brown[200]),
                  useMaterial3: true,
                ),
                home: const LoginPage(),
            ),
        );
    }
}

