import 'package:flutter/material.dart';
import 'package:profile_editing/feebback/feed_back_provider.dart';
import 'package:profile_editing/feebback/star_rating.dart';
import 'package:provider/provider.dart';

class FeedBackScreen extends StatefulWidget {
  const FeedBackScreen();

  @override
  _FeedBackScreenState createState() => _FeedBackScreenState();
}

class _FeedBackScreenState extends State<FeedBackScreen> {
  @override
  Widget build(BuildContext context) {
    FeedBackProvider readProvider = Provider.of<FeedBackProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("FeedBack"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: StarRating(
                  // onRatingChanged: (text) {
                  //   readProvider.rateCount(text);
                  // },
                  rating: readProvider.rateStar,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
