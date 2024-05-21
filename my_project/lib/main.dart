import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/Auth/auth_cubit.dart';
import 'package:my_project/DB/AuthRepository.dart';
import 'package:my_project/DB/db_sql_lite.dart';
import 'package:my_project/views/pages/welcome_page.dart';
import 'package:provider/provider.dart';


void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<db_sql_lite>(
          create: (context) => db_sql_lite(),
        ),
        Provider<AuthRepository>(
          create: (context) => AuthRepository(context.read<db_sql_lite>()),
        ),
        BlocProvider<AuthCubit>(
          create: (context) => AuthCubit(context.read<AuthRepository>()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const welcome_page(), // Use PascalCase for class names
      ),
    );
  }
}
