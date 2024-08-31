import 'package:flutter/material.dart';
import 'package:lista_filmes/pages/movie_list/movie_list_page.dart';
import 'package:lista_filmes/service_locator.dart';

void main() {
  setupGetit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF151730),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xffbb86fc),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF151730),
        ),
        useMaterial3: true,
      ),
      home: const MovieListPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
    );
  }
}
