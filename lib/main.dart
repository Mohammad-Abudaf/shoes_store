import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slide_drawer/slide_drawer.dart';
import 'componants/styles/themes.dart';
import 'cubit/app_cubit.dart';
import 'cubit/bloc_observer.dart';
import 'layout.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AppCubit(),
        child: MaterialApp(
          theme: defaultTheme(),
          debugShowCheckedModeBanner: false,
          home: BlocConsumer<AppCubit, AppState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return SlideDrawer(
                rotateAngle: pi / 36,
                offsetFromRight: 200.0,
                curve: Curves.easeInOut,
                reverseCurve: Curves.easeInOutBack,
                items: [
                  MenuItem('Home', onTap: () {
                    AppCubit.get(context).changeScreen(1);
                  }, icon: Icons.home),
                  MenuItem('Favourite', onTap: () {
                    AppCubit.get(context).changeScreen(0);
                  }, icon: Icons.favorite),
                  MenuItem('Profile', onTap: () {
                    AppCubit.get(context).changeScreen(2);
                  }, icon: Icons.person),
                  MenuItem('Setting', onTap: () {}, icon: Icons.settings,),
                  MenuItem('Log out', onTap: () {}, icon: Icons.logout),
                ],
                child: HomeLayout(),
              );
            },
          ),
        ));
  }
}
