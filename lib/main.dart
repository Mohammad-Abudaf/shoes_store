import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'componants/widgets/widgets.dart';
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
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            elevation: 0.0,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.white,
            selectedIconTheme: IconThemeData(
              size: 35.0,
            ),
            unselectedIconTheme: IconThemeData(
              size: 25.0
            ),
            showSelectedLabels: true,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.shifting
          ),
            tabBarTheme: TabBarTheme(
              labelColor: Colors.black,
            ),
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
