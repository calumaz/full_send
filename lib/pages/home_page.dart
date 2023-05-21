import 'package:flutter/material.dart';

import '../widgets/store_view_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.red),
        titleTextStyle: const TextStyle(color: Colors.red),
        centerTitle: true,
        title: SizedBox(width: 150,child: Image.asset('assets/images/logo.png', fit: BoxFit.contain,),),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined),
            onPressed: () {}
            ),
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {}
          )
        ],
      ),
      drawer: const Drawer(

      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/images/golfbanner-large.jpg'),
                const Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Explore all ->', style: TextStyle(fontFamily: 'Inconsolata', fontSize: 32)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StoreViewItem(
                            imageName: 'assets/images/fleece.jpeg',
                            itemName: 'item name goes here',
                            itemPrice: 75.00,
                          ),
                          StoreViewItem(
                            imageName: 'assets/images/fleece.jpeg',
                            itemName: 'item name goes here',
                            itemPrice: 75.00,
                          ),
                          StoreViewItem(
                            imageName: 'assets/images/fleece.jpeg',
                            itemName: 'item name goes here',
                            itemPrice: 75.00,
                          ),
                          StoreViewItem(
                            imageName: 'assets/images/fleece.jpeg',
                            itemName: 'item name goes here',
                            itemPrice: 75.00,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
