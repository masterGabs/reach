import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:scrolling_years_calendar/scrolling_years_calendar.dart';

class YearView extends StatelessWidget {
  const YearView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: ScrollingYearsCalendar(
        // Required parameters
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(const Duration(days: 5 * 365)),
        lastDate: DateTime.now().add(const Duration(days: 5 * 365)),
        currentDateColor: Colors.red.shade600,
        monthNames: const <String>[
          'Jan',
          'Feb',
          'Mar',
          'Apr',
          'May',
          'Jun',
          'Jul',
          'Aug',
          'Sep',
          'Oct',
          'Nov',
          'Dec',
        ],
        onMonthTap: (int year, int month) => print('Tapped $month/$year'),
        monthTitleStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
