import 'package:flutter/material.dart';
import 'package:preliminary/application/Home/home_bloc.dart';
import 'package:preliminary/application/User/user_bloc.dart';
import 'package:preliminary/domain/core/di/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentaion/home/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<HomeBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UserBloc>(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
            fontFamily: "Roboto", primaryTextTheme: const TextTheme()),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
