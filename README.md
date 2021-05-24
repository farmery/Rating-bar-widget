# Rating Bar Widget

A Flutter widget to display rating, or allow a user rate.

## Getting Started
To use this widget add 'rating_bar_widget' as a dependency in your pubspec.yaml file

### Example
 ```dart
    import 'package:flutter/material.dart';
    import 'package:package_tester/rating_bar.dart';

    void main() {
      runApp(MyApp());
    }

    class MyApp extends StatelessWidget {
      // This widget is the root of your application.
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Scaffold(
              body: Center(
                  child: RatingBar(
            ratingValue: 3,
            onChange: (val) {
              print(val);
            },
            isReadOnly: true,
          ))),
        );
      }
    }
 ```



