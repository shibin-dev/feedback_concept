import 'package:flutter/material.dart';
import 'package:profile_editing/feebback/feed_back_provider.dart';
import 'package:provider/provider.dart';

import 'feebback/feedback_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => FeedBackProvider())],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FeedBackScreen(),
      ),
    );
  }
}
