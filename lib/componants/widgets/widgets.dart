import 'package:flutter/cupertino.dart';
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
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            children: [
              Hero(
                tag: 'productImage',
                child: Image(
                  height: double.infinity,
                  width: double.infinity,
                  image: NetworkImage('$productImage'),
                fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${index == null ? '' : index}',
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    Spacer(),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '$productName',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              Text(
                                '$productPrice\$',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProductPageBuilder(
                                              image: productImage,
                                              name: productName,
                                              prise: productPrice,
                                            )));
                                print('favorite pressed! ');
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
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

class ProductPageBuilder extends StatefulWidget {
  ProductPageBuilder({
    this.name,
    this.prise,
    this.image,
    Key? key,
  }) : super(key: key);
  final String? prise;
  final String? name;
  final String? image;
  @override
  _ProductPageBuilderState createState() => _ProductPageBuilderState();
}

class _ProductPageBuilderState extends State<ProductPageBuilder> {
  String color = '';
  String size = '';
  String? _price;
  String? _name;
  String? _image;
  void initState() {
    super.initState();
    _price = widget.prise;
    _name = widget.name;
    _image = widget.image;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 270.0,
                  width: double.infinity,
                  child: Hero(
                    tag: 'productImage',
                    child: Image(
                      width: double.infinity,
                      image: NetworkImage('$_image'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '$_name',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_outline,
                              color: Colors.black,
                              size: 30.0,
                            ))
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Wrap(
                      children: [
                        Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      'Color',
                      style: Theme.of(context)
                          .textTheme
                          .overline!
                          .copyWith(fontSize: 25.0),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                          start: 10.0, end: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BuildRadioItem(
                              activeColor: Colors.black,
                              groupValue: color,
                              value: 'black',
                              onChange: (value) {
                                setState(() {
                                  color = value.toString();
                                });
                              }),
                          BuildRadioItem(
                              activeColor: Colors.grey,
                              groupValue: color,
                              value: 'gray',
                              onChange: (value) {
                                setState(() {
                                  color = value.toString();
                                });
                              }),
                          BuildRadioItem(
                              activeColor: Colors.red,
                              groupValue: color,
                              value: 'red',
                              onChange: (value) {
                                setState(() {
                                  color = value.toString();
                                });
                              }),
                          BuildRadioItem(
                              activeColor: Colors.blue,
                              groupValue: color,
                              value: 'blue',
                              onChange: (value) {
                                setState(() {
                                  color = value.toString();
                                });
                              }),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Size',
                      style: Theme.of(context)
                          .textTheme
                          .overline!
                          .copyWith(fontSize: 25.0),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                          start: 10.0, end: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BuildRadioItem(
                              activeColor: Colors.black,
                              groupValue: size,
                              value: '7',
                              onChange: (value) {
                                setState(() {
                                  size = value.toString();
                                });
                              }),
                          BuildRadioItem(
                              activeColor: Colors.black,
                              groupValue: size,
                              value: '8',
                              onChange: (value) {
                                setState(() {
                                  size = value.toString();
                                });
                              }),
                          BuildRadioItem(
                              activeColor: Colors.black,
                              groupValue: size,
                              value: '9',
                              onChange: (value) {
                                setState(() {
                                  size = value.toString();
                                });
                              }),
                          BuildRadioItem(
                              activeColor: Colors.black,
                              groupValue: size,
                              value: '10',
                              onChange: (value) {
                                setState(() {
                                  size = value.toString();
                                });
                              }),
                        ],
                      ),
                    ),
                  ]),
            ),
            Spacer(),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20.0),
                      child: Text(
                        '$_price\$',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            fontWeight: FontWeight.w700, color: Colors.black),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(40)),
                        ),
                        child: Center(
                            child: Text(
                          'ADD TO CART',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BuildRadioItem extends StatelessWidget {
  const BuildRadioItem(
      {Key? key,
      @required this.groupValue,
      @required this.value,
      required this.onChange,
      this.activeColor})
      : super(key: key);
  final String? value;
  final String? groupValue;
  final onChange;
  final Color? activeColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Radio(
          value: value,
          groupValue: groupValue,
          onChanged: onChange,
          activeColor: activeColor,
        ),
        Text(
          '$value',
          style: Theme.of(context).textTheme.subhead,
        ),
      ],
    );
  }
}
