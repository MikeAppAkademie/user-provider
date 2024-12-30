import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_provider/logic/providers/user_provider.dart';
import 'package:user_provider/screens/nav_bar.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserProvider>(
          create: (_) => UserProvider(),
        )
      ],
      child: const MaterialApp(
        title: 'User Provider Example',
        home: MainScreen(),
      ),
    );
  }
}
