import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:shoes_store/roots/favorite.dart';
import 'package:shoes_store/roots/home.dart';
import 'package:shoes_store/roots/products_screen/adidas_screen.dart';
import 'package:shoes_store/roots/products_screen/asics_screen.dart';
import 'package:shoes_store/roots/products_screen/nike_screen.dart';
import 'package:shoes_store/roots/products_screen/puma_screen.dart';
import 'package:shoes_store/roots/profile.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);

  int currentScreen = 1;
  List<Widget> screens = [
    FavoriteScreen(),
    HomeScreen(),
    ProfileScreen(),
  ];

  void changeScreen(int index){
    currentScreen = index;
    emit(ChangeBottomNavBarState());
  }

  int currentTab = 0;
  List <Widget> tabScreens = [
    NikeTab(),
    AdidasTab(),
    PumaTab(),
    AsicsTab(),
  ];
  void changeTap(int index){
    currentTab = index;
    emit(ChangeTabBarState());
  }

  List<String> nikeProductImages = [
    'https://images.unsplash.com/photo-1543508282-6319a3e2621f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=358&q=80',
    'https://images.unsplash.com/photo-1512374382149-233c42b6a83b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=375&q=80',
    'https://images.unsplash.com/photo-1560769629-975ec94e6a86?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=80',
  ];
  List<String> nikeProductNames = [
    'Nike Air Viper',
    'Nike Air SkyScraper',
    'Nike sport',
  ];
  List<String> nikeProductsPrise = [
    '300',
    '250',
    '600',
  ];
  List <String> nikeProductNumber = ['1', '2', '3', '4'];
}
