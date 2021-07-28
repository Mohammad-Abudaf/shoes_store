import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1577208288347-b24488f3efa5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1189&q=80'),
            ),
            SizedBox(
              height: 80.0,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20.0),
              child: Text(
                'Collection',
                style:
                    Theme.of(context).textTheme.title!.copyWith(fontSize: 30.0, fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Expanded(
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Stack(
                            children: [
                              Image(
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1556278777-a2a98c0d56da?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
                                fit: BoxFit.fill,
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Text>[
                                      Text(
                                        'Adidas',
                                        style: TextStyle(
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        '14 pieces',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 20.0,
                        ),
                    itemCount: 4)),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 30.0, start: 10.0, end: 10.0),
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.shield,
                            size: 25.0,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'My Orders',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.settings,
                            size: 25.0,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Settings',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 20, end: 20.0, top: 70),
            child: Container(
              height: 230,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Card(
                      elevation: 10.0,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(top: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Maria Elliot',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(color: Colors.blue),
                            ),
                            Text(
                              'Albani, New york',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(fontSize: 17.0),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text('purchases', style: TextStyle(fontSize: 20.0, color: Colors.grey),),
                                      Text('14', style: TextStyle(fontSize: 30.0, color: Colors.black),),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('Wishes', style: TextStyle(fontSize: 20.0, color: Colors.grey),),
                                      Text('50', style: TextStyle(fontSize: 30.0, color: Colors.black),),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('Likes', style: TextStyle(fontSize: 20.0, color: Colors.grey),),
                                      Text('1.2k', style: TextStyle(fontSize: 30.0, color: Colors.black),),
                                    ],
                                  ),
                              ],),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
