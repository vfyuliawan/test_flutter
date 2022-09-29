// ignore_for_file: prefer_const_constructors

part of 'screens.dart';

class FormApp extends StatefulWidget {
  const FormApp({super.key});

  @override
  State<FormApp> createState() => _FormAppState();
}

class _FormAppState extends State<FormApp> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(""),),
      body: Column(
        children: [TextField()],
      ),
    );
  }
}
