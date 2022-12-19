// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:belajar_flutter/src/bloc/blocs.dart';
import 'package:belajar_flutter/src/bloc/product_gedget/product_gedget_bloc.dart';
import 'package:belajar_flutter/src/cubit/check_login/check_login_cubit_cubit.dart';
import 'package:belajar_flutter/src/screens/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductGedgetBloc(),
        ),
        BlocProvider(
          create: (context) => ProductGedgetDetailBloc(),
        ),
        BlocProvider(
          create: (context) => CheckLoginCubit(),
        ),
        BlocProvider(
          create: (context) => SearchProductBloc(),
        ),
        BlocProvider(
          create: (context) => LoginUserBloc(),
        ),
      ],
      child: (Platform.isAndroid)
          ? MaterialApp(
              title: "My First flutter with Salt Accademy",
              home: ListScreen(),
              theme: ThemeData(
                  appBarTheme: AppBarTheme(
                      backgroundColor: Colors.pink,
                      foregroundColor: Colors.white)),
            )
          : CupertinoApp(),
    );
  }
}
