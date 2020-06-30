import 'package:flutter/material.dart';
import '../widgets/notification_card.dart';

class Notifications extends StatelessWidget {
  final List<String> entries = <String>[
    'Buses leave in 1 hour. Location: John Molson Gym! Im going to make this text really really long and the next one really really short to see if the sizing is working. If its working ill be really happy. if not ill cry',
    'BEACH CLUB DAY! LETS GOOOOOOOOOOO This one will be slightly shorter but nonethless a few sentences long!!! Amazing',
    'Welcome Froshies! Have a wonderful time.',
    'LETS GO FOR A RIDE BABYYYYYY',
    'WOWWWWWWWWWWWW'
  ];
  final List<Color> colors = <Color>[
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.pink
  ];
  final List<IconData> icons = <IconData>[
    Icons.notifications,
    Icons.place,
    Icons.home,
    Icons.shopping_cart,
    Icons.security
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return NotificationCard(
                colors[index], entries[index], icons[index]);
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
            color: Color(0x00000000), // transparent color
          ),
        ));
  }
}
