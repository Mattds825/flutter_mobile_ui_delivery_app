import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  final int rating;

  RatingStars(this.rating);

  @override
  Widget build(BuildContext context) {
    return Text(
      _getRating(),
    );
  }

  String _getRating(){
    String stars = '';
    for (var i = 0; i < rating; i++) {
      stars+='⭐';
    }
    return stars;
  }
}