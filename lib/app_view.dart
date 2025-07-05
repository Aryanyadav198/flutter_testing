import 'package:flutter/material.dart';
import 'package:flutter_testing/src/persistence_nav/persistence_nav.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 7, 11, 40),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
          background: const Color.fromARGB(255, 7, 11, 40),
          primary: Colors.deepPurple,
          onPrimary: Colors.white, // for icon/text contrast
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 20, 27, 81),
          foregroundColor: Colors.white, // for title/icon color
          elevation: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color.fromARGB(255, 7, 11, 40),
          selectedItemColor: Colors.deepPurpleAccent,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
        ),
      ),
      home: PersistenceNavScreen(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
