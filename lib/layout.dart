import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
              },
              icon: Icon(Icons.more_vert),
              iconSize: 30,
            ),
            actions: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
              ),
            ],
            bottom: TabBar(
              controller: tabController,
              onTap: (int index) {
                print(index);
              },
              tabs: [
                Text('Nike', style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w700
                ),),
                Text('Nike', style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w700
                ),),
                Text('Nike', style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w700
                ),),
                Text('Nike', style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w700
                ),),
              ],
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              AppCubit.get(context).changeScreen(index);
              print('change index');
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: 'Favorite'),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
          ),
        );
      },
    );
  }
}
