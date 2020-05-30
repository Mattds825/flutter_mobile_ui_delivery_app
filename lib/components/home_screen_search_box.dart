import 'package:flutter/material.dart';

class HomeScreenSearchBox extends StatelessWidget {
  const HomeScreenSearchBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
          fillColor: Colors.lightBlue[50],
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(width: 0.8),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
                width: 0.8, color: Theme.of(context).primaryColor),
          ),
          hintText: 'Search for Food or Restaurant',
          hintStyle: TextStyle(fontSize: 16.0),
          prefixIcon: Icon(
            Icons.search,
            size: 30.0,
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
