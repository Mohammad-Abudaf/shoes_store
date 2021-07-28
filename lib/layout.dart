import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:shoes_store/cubit/app_cubit.dart';
import 'package:shoes_store/cubit/app_cubit.dart';

class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> with TickerProviderStateMixin {
  late TabController? tabController;

  void initState() {
    tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
    return Scaffold(
          body: SafeArea(
            child: AppCubit.get(context).screens[AppCubit.get(context).currentScreen],
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              AppCubit.get(context).changeScreen(index);
              print('change index');
            },
            currentIndex: AppCubit.get(context).currentScreen,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: 'Favorite'),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
          ),
        );
      }
    );
  }
}

// Scaffold(
//           body: SafeArea(
//             child: AppCubit.get(context).screens[AppCubit.get(context).currentScreen],
//           ),
//           bottomNavigationBar: BottomNavigationBar(
//             onTap: (int index) {
//               AppCubit.get(context).changeScreen(index);
//               print('change index');
//             },
//             currentIndex: AppCubit.get(context).currentScreen,
//             items: [
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.favorite), label: 'Favorite'),
//               BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.person), label: 'Profile'),
//             ],
//           ),
//         );
