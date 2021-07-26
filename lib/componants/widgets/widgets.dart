import 'package:flutter/material.dart';

class ProductBuilder extends StatelessWidget {
  final String? productName;
  final String? productPrice;
  final String? productImage;
  final int? index;
  const ProductBuilder(
      {Key? key,
      this.productName,
      this.productPrice,
      this.productImage,
      this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.grey,
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage('$productImage'))),
        height: 500,
        width: 200,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$index',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    '$productName',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Text(
                    '$productPrice\$',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AdBuilder extends StatelessWidget {
  const AdBuilder(
      {Key? key, this.productImage, this.productPrice, this.productName})
      : super(key: key);
  final String? productImage;
  final String? productPrice;
  final String? productName;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 11,
      child: Container(
        width: double.infinity,
        height: 100,
        child: Stack(
          children: [
            Image(
                width: double.infinity,
                fit: BoxFit.cover,
                image: NetworkImage('$productImage')),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    '$productPrice\$',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Text(
                    '$productName',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PageBuilder extends StatelessWidget {
  const PageBuilder(
      {Key? key,
      this.pageController,
      this.productPrice,
      this.productName,
      this.index,
      this.productImage,
      this.adProductName,
      this.adProductPrice,
      this.adProductImage})
      : super(key: key);
  final PageController? pageController;
  final String? productName;
  final String? productPrice;
  final int? index;
  final String? productImage;
  final String? adProductName;
  final String? adProductPrice;
  final String? adProductImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              child: PageView(
            controller: pageController,
            children: [
              ProductBuilder(
                productName: '$productName',
                productImage: '$productImage',
                productPrice: '$productPrice',
                index: 01,
              ),
              ProductBuilder(
                productName: '$productName',
                productImage: '$productImage',
                productPrice: '$productPrice',
                index: 01,
              ),
              ProductBuilder(
                productName: '$productName',
                productImage: '$productImage',
                productPrice: '$productPrice',
                index: 01,
              ),
            ],
          )),
          AdBuilder(
            productName: adProductName,
            productPrice: adProductPrice,
            productImage: adProductImage,
          ),
        ],
      ),
    );
  }
}
