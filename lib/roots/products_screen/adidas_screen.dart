import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_store/componants/widgets/widgets.dart';
import 'package:shoes_store/cubit/app_cubit.dart';

class AdidasTab extends StatelessWidget {
  AdidasTab({Key? key}) : super(key: key);
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                  child: PageView(
                    controller: _pageController,
                    children: [
                      ProductBuilder(
                        productName: '${AppCubit.get(context).nikeProductNames[0]}',
                        productImage: '${AppCubit.get(context).nikeProductImages[0]}',
                        productPrice: '${AppCubit.get(context).nikeProductsPrise[0]}',
                        index: 01,
                      ),
                      ProductBuilder(
                        productName: '${AppCubit.get(context).nikeProductNames[1]}',
                        productImage: '${AppCubit.get(context).nikeProductImages[1]}',
                        productPrice: '${AppCubit.get(context).nikeProductsPrise[1]}',
                        index: 02,
                      ),
                      ProductBuilder(
                        productName: '${AppCubit.get(context).nikeProductNames[2]}',
                        productImage: '${AppCubit.get(context).nikeProductImages[2]}',
                        productPrice: '${AppCubit.get(context).nikeProductsPrise[2]}',
                        index: 03,
                      ),
                    ],
                  )),
              AdBuilder(
                productName: 'Nike anonymous',
                productPrice: '200',
                productImage: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80',
              ),
            ],
          ),
        );
      },
    );
  }
}