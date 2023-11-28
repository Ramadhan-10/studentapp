import 'package:flutter/material.dart';
import 'package:studentapp/constants.dart';
import 'package:sizer/sizer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});
  static const String routeName = 'AboutScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Container(
        width: 100.w,
        decoration: BoxDecoration(
          color: kOtherColor,
          borderRadius: kTopBorderRadius,
        ),
        child: Center(
          child: Text(
            'copyright Ramadhan-21552011045',
            style: Theme.of(context).textTheme.titleLarge,
            selectionColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
