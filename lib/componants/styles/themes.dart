import 'package:flutter/material.dart';

ThemeData defaultTheme (){
  return ThemeData(
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
  );
}