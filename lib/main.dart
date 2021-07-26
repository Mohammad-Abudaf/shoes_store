import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/app_cubit.dart';
import 'cubit/bloc_observer.dart';
import 'layout.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        theme: ThemeData(
            tabBarTheme: TabBarTheme(
              labelColor: Colors.black,

            ),
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
                color: Colors.white,
                elevation: 0.0,
                iconTheme: IconThemeData(
                    color: Colors.black
                )
            )
        ),
        debugShowCheckedModeBanner: false,
        home: HomeLayout(),
      ),
    );
  }
}
