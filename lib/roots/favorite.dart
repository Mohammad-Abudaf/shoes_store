import 'package:flutter/material.dart';
import 'package:shoes_store/componants/widgets/widgets.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 30.0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'Favorites',
          style: Theme.of(context).textTheme.headline2!,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GridView.count(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          crossAxisCount: 2,
          children: [
            ProductBuilder(
              productImage:
                  'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=343&q=80',
              productName: 'Adidas fancy',
              productPrice: '230',
            ),
            ProductBuilder(
              productImage:
                  'https://images.unsplash.com/photo-1491553895911-0055eca6402d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80',
              productPrice: '324',
              productName:  'Nike Air ',
            ),
            ProductBuilder(
              productImage:
                  'https://images.unsplash.com/photo-1604868189265-219ba7bf7ea3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80',
              productName: 'Adidas Teen',
              productPrice: '120',
            ),
            ProductBuilder(
              productImage:
                  'https://images.unsplash.com/photo-1543508282-6319a3e2621f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=358&q=80',
              productPrice: '510',
              productName: 'Nike Air ',
            ),
            ProductBuilder(
              productName: 'Asics Snicker',
              productImage:
                  'https://images.unsplash.com/photo-1494496195158-c3becb4f2475?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80',
              productPrice: '321',
            ),
            ProductBuilder(
              productImage:
                  'https://images.unsplash.com/photo-1549298916-b41d501d3772?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=80',
              productPrice: '700',
              productName: 'Nike Air ',
            ),
            ProductBuilder(
              productName: 'Puma Fast ',
              productImage:
                  'https://images.unsplash.com/photo-1608379894453-c6b729b05596?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=375&q=80',
              productPrice: '550',
            ),
          ],
        ),
      ),
    );
  }
}
