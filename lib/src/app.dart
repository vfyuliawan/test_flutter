// ignore_for_file: prefer_const_constructors

import 'package:belajar_flutter/src/bloc/product/product_bloc.dart';
import 'package:belajar_flutter/src/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductBloc(),
        )
      ],
      child: MaterialApp(
        title: "My First flutter with Salt Accademy",
        home: SplashScreen(),
        theme: ThemeData(
            appBarTheme: AppBarTheme(
                backgroundColor: Colors.pink, foregroundColor: Colors.white)),
      ),
    );
  }
}
