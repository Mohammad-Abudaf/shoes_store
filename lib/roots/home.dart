import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoes_store/cubit/app_cubit.dart';
import 'package:shoes_store/roots/products_screen/adidas_screen.dart';
import 'package:shoes_store/roots/products_screen/asics_screen.dart';
import 'package:shoes_store/roots/products_screen/nike_screen.dart';
import 'package:shoes_store/roots/products_screen/puma_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabController;
  late PageController pageController = PageController();
  void initState() {
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.list_rounded,
                  size: 40,
                ),
              ),
              CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80'),
              )
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            'Explore',
            style: Theme.of(context).textTheme.title!.copyWith(fontSize: 30.0),
          ),
          SizedBox(
            height: 30.0,
          ),
          TabBar(
            controller: tabController,
            isScrollable: false,
            onTap: (index) {
              AppCubit.get(context).changeTap(index);
            },
            tabs: [
              Text(
                'Nike',
                style: Theme.of(context).textTheme.button!.copyWith(fontSize: 20),
              ),
              Text(
                'Adidas',
                style: Theme.of(context).textTheme.button!.copyWith(fontSize: 20),
              ),
              Text(
                'Puma',
                style: Theme.of(context).textTheme.button!.copyWith(fontSize: 20),
              ),
              Text(
                'Asics',
                style: Theme.of(context).textTheme.button!.copyWith(fontSize: 20),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
                physics: BouncingScrollPhysics(),
                controller: tabController,
                children: [
                  NikeTab(),
                  AdidasTab(),
                  PumaTab(),
                  AsicsTab(),
                ]),
          ),
        ],
      ),
    );
  }
}
