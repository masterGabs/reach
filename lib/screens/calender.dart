import 'package:flutter/material.dart';
import 'package:hello/views/year_view.dart';

class Calender extends StatelessWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YearView(),
    );
  }
}
