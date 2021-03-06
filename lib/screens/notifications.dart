import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'dart:math' as math;
import 'package:event_app/widgets/cards/notification_card.dart';

class Notifications extends StatelessWidget {
  List<String> entries = <String>[
    'Buses leave in 1 hour.\nLocation: John Molson Gym! Im going to make this text really really long and the next one really really short to see if the sizing is working. If its working ill be really happy. if not ill cry',
    'BEACH CLUB DAY! LETS GOOOOOOOOOOO This one will be slightly shorter but nonethless a few sentences long!!! Amazing',
    'Welcome Froshies! Have a wonderful time.',
    'LETS GO FOR A RIDE BABYYYYYY',
    'WOWWWWWWWWWWWW',
    'Buses leave in 1 hour. Location: John Molson Gym! Im going to make this text really really long and the next one really really short to see if the sizing is working. If its working ill be really happy. if not ill cry',
    'BEACH CLUB DAY! LETS GOOOOOOOOOOO This one will be slightly shorter but nonethless a few sentences long!!! Amazing',
    'Welcome Froshies! Have a wonderful time.',
    'LETS GO FOR A RIDE BABYYYYYY',
    'WOWWWWWWWWWWWW',
  ];
  List<AssetImage> images = <AssetImage>[
    AssetImage('assets/images/frosh.jpg'),
    AssetImage('assets/images/uni_logo.png'),
    AssetImage('assets/images/frosh.jpg'),
    AssetImage('assets/images/uni_logo.png'),
    AssetImage('assets/images/frosh.jpg'),
    AssetImage('assets/images/frosh.jpg'),
    AssetImage('assets/images/uni_logo.png'),
    AssetImage('assets/images/frosh.jpg'),
    AssetImage('assets/images/uni_logo.png'),
    AssetImage('assets/images/frosh.jpg'),
  ];
  List<DateTime> dates = <DateTime>[
    DateTime.utc(2020, DateTime.july, 4, 11, 30),
    DateTime.utc(2020, DateTime.july, 1, 6, 21),
    DateTime.utc(2020, DateTime.june, 30, 14, 59),
    DateTime.utc(2020, DateTime.june, 30, 9, 0),
    DateTime.utc(2020, DateTime.june, 29, 20, 10),
    DateTime.utc(2020, DateTime.june, 29, 15, 44),
    DateTime.utc(2020, DateTime.june, 29, 4, 44),
    DateTime.utc(2020, DateTime.june, 28, 12, 00),
    DateTime.utc(2020, DateTime.june, 28, 23, 59),
    DateTime.utc(2020, DateTime.june, 27, 8, 36),
  ];

  SvgPicture backgroundIcon = SvgPicture.asset(
    'assets/icons/bell.svg',
    height: 112.0,
    color: Colors.white,
  );

  Widget buildNotificationCard(int index) {
    String formattedToday = DateFormat('MMMMd').format(DateTime.now());
    String formattedDate = DateFormat('MMMMd').format(dates[index]);
    String formattedPrev = (index == 0)
        ? DateFormat('MMMMd').format(dates[index])
        : DateFormat('MMMMd').format(dates[index - 1]);

    // determine opacity of notification card & header
    double opacity = (formattedToday == formattedDate) ? 1.0 : 0.5;

    // if first notification card, header is Today
    // else if the current and previous notification cards are identical, header is empty
    // else header is the date of the notification card
    String header = '';
    double topMargin = 0.0;
    if (index == 0 && formattedToday == formattedDate)
      header = 'Today';
    else if (index == 0 && formattedToday != formattedDate)
      header = formattedDate;
    else if (formattedDate != formattedPrev) {
      header = formattedDate;
      topMargin = 15.0;
    }

    if (header == '') {
      return NotificationCard(
        text: entries[index],
        image: images[index],
        date: dates[index],
        opacity: opacity,
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
                top: topMargin, right: 20.0, bottom: 10.0, left: 20.0),
            child: Text(
              header,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.white.withOpacity(opacity),
              ),
            ),
          ),
          NotificationCard(
            text: entries[index],
            image: images[index],
            date: dates[index],
            opacity: opacity,
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFE893F9),
            Color(0xFFAC4DDF),
            Color(0xFF7851A9),
          ],
        ),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topRight,
            padding: const EdgeInsets.only(top: 30.0, right: 10.0),
            child: Transform.rotate(
              angle: -math.pi / 5.0,
              child: Opacity(
                opacity: 0.2,
                child: backgroundIcon,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            padding: const EdgeInsets.only(top: 30.0, right: 75.0),
            child: Transform.rotate(
              angle: -math.pi / 5.0,
              child: Opacity(
                opacity: 0.2,
                child: backgroundIcon,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    top: 60.0, right: 20.0, bottom: 10.0, left: 20.0),
                child: const Text(
                  'Notifications',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.only(bottom: 30),
                  itemCount: entries.length,
                  itemBuilder: (BuildContext context, int index) =>
                      buildNotificationCard(index),
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(
                    color: Color(0x00000000), // transparent color
                    height: 10.0,
                    endIndent: 0.0,
                    indent: 0.0,
                    thickness: 0.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
