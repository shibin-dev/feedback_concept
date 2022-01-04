import 'package:flutter/material.dart';
import 'package:profile_editing/feebback/feeback_request_model.dart';
import 'package:profile_editing/feebback/star_rating.dart';

import 'feedback_screen.dart';

class FeedBackProvider with ChangeNotifier {
  bool isStarClickable = false;
  double rateStar = 0;
  FeeedbackRequestModel model = FeeedbackRequestModel();
  void rateCount(dynamic value) {
    rateStar = value;
    notifyListeners();
  }

  String getString() {
    switch (rateStar.toInt()) {
      case 0:
        return "";
      case 1:
        return "poor";
      case 2:
        return "bad";
      case 3:
        return "good";
      case 4:
        return "very good";
      case 5:
        return "excellent";
      default:
        return "poor";
    }
  }
}
