import 'package:flutter/material.dart';
import 'package:profile_editing/feebback/feed_back_provider.dart';
import 'package:provider/provider.dart';

typedef void RatingChangeCallback(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  //final RatingChangeCallback onRatingChanged;
  StarRating({
    //required this.onRatingChanged,
    this.rating = 0,
    this.starCount = 5,
  });

  Color inActiveColor = Color(0xffe0f0f7);
  Color activeColor = Colors.yellow.shade400;
  Widget buildStart(BuildContext context, int index) {
    final here = Provider.of<FeedBackProvider>(context, listen: false);

    Icon icon;
    if (index >= rating) {
      icon = Icon(
        Icons.star,
        size: 60,
        color: inActiveColor,
      );
    } else {
      icon = Icon(
        Icons.star,
        size: 63,
        color: activeColor,
      );
    }
    return InkResponse(
      onTap:
          //here.isStarClickable == false?
          () {
        Provider.of<FeedBackProvider>(context, listen: false)
            .rateCount(index + 1.0);
        Provider.of<FeedBackProvider>(context, listen: false).isStarClickable =
            true;
      }
      //: null
      ,
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<FeedBackProvider>(context, listen: false);
    print("build");
    return Column(
      children: [
        Text("${pro.getString()}"),
        Row(
          children:
              List.generate(starCount, (index) => buildStart(context, index)),
        ),
        // Text("${pro.isStarClickable}")
      ],
    );
  }
}
