import 'package:flutter/material.dart';
import 'package:note_app/screen/home_view.dart';

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //  fontFamily: 'Poppins',
        brightness: Brightness.dark,
      ),
      home: HomeView(),
    );
  }
}
