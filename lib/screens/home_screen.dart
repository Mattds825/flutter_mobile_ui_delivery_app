import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/components/home_screen_search_box.dart';
import 'package:flutter_food_delivery_ui/components/recent_orders.dart';
import 'package:flutter_food_delivery_ui/components/nearby_restaurants.dart';
import '../data/data.dart';
import '../screens/cart_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Delivery'),
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          iconSize: 30.0,
          onPressed: () {},
        ),
        actions: [
          FlatButton(
            child: Text(
              'Cart (${currentUser.cart.length})',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => CartScreen()));
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          HomeScreenSearchBox(),
          RecentOrders(),
          NearbyRestaurants(),
        ],
      ),
    );
  }
}