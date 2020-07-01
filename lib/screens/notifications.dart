import 'package:flutter/material.dart';
import '../widgets/notification_card.dart';
import 'package:intl/intl.dart';

class Notifications extends StatelessWidget {
  final List<String> entries = <String>[
    'Buses leave in 1 hour. Location: John Molson Gym! Im going to make this text really really long and the next one really really short to see if the sizing is working. If its working ill be really happy. if not ill cry',
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
  final List<AssetImage> images = <AssetImage>[
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
  final List<DateTime> dates = <DateTime>[
    DateTime.utc(2020, DateTime.july, 1, 11, 30),
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

  Widget buildItem(int index) {
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
    double topPadding = 0.0;
    if (index == 0)
      header = 'Today';
    else if (formattedDate != formattedPrev) {
      header = formattedDate;
      topPadding = 10.0;
    }

    return Container(
      child: Column(
        children: <Widget>[
          Visibility(
            visible: !(header.length == 0),
            child: Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(
                  top: topPadding, right: 20.0, bottom: 10.0, left: 20.0),
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
          ),
          NotificationCard(entries[index], images[index], dates[index], opacity)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.pink[300],
            Colors.deepPurple[600],
          ],
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Notifications",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            margin: EdgeInsets.only(
                top: 60.0, right: 20.0, bottom: 10.0, left: 20.0),
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) =>
                  buildItem(index),
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
    );
  }
}
