class EventListTile extends StatelessWidget {
  EventListTile({this.event, this.previousEventInList, this.nextEventInList});

  final DocumentSnapshot previousEventInList;
  final DocumentSnapshot event;
  final DocumentSnapshot nextEventInList;

  @override
  Widget build(BuildContext context) {
    final EventType type = EventType.fromTitle(event['type']);
    bool mini = event['priority'] < 2;
    DateTime date = (event['date_start'] as Timestamp).toDate();

    bool connectsToTop = previousEventInList != null;

    if (connectsToTop) {
      DateTime previousTime =
          (previousEventInList['date_start'] as Timestamp).toDate();

      if (previousTime == date) {
        connectsToTop = false;
      }
    }

    bool connectsToBottom = nextEventInList != null;

    if (connectsToBottom) {
      DateTime nextTime = (nextEventInList['date_start'] as Timestamp).toDate();

      if (nextTime == date) {
        connectsToBottom = false;
      }
    }

    List<Widget> children = [];

    double containerHeight = 56.0;
    if (connectsToTop) {
      containerHeight += 25.0;

      Color topColor = EventType.fromTitle(previousEventInList['type']).color;
      Color bottomColor = type.color;

      children.add(Positioned(
        top: 0.0,
        child: Container(
          width: 10.0,
          height: 51.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.lerp(topColor, bottomColor, 0.5), bottomColor],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                stops: [0.0, 0.5]),
          ),
        ),
      ));
    }

    if (connectsToBottom) {
      containerHeight += 25;

      Color topColor = type.color;
      Color bottomColor = EventType.fromTitle(nextEventInList['type']).color;

      children.add(Positioned(
        bottom: 0.0,
        child: Container(
          width: 10.0,
          height: 51.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [topColor, Color.lerp(topColor, bottomColor, 0.5)],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                stops: [0.5, 1.0]),
          ),
        ),
      ));
    }

    if (!connectsToTop && !connectsToBottom) {
      //containerHeight += mini ? 20.0 : 30.0;
    }

    //if (connectsToBottom || connectsToTop) {
    children.add(Container(
      width: 10.0,
      height: containerHeight,
    ));
    //}

    children.add(IgnorePointer(
      ignoring: true,
      child: FloatingActionButton(
        onPressed: () {},
        heroTag: '${event['title']}-${event['date_start']}',
        child: Icon(
          type.icon,
          size: mini
              ? IconTheme.of(context).size / 1.25
              : IconTheme.of(context).size,
        ),
        backgroundColor: type.color,
        mini: mini,
        elevation: 0.0,
      ),
    ));

    Alignment align = Alignment.center;

    double bottomPadding = 0.0;
    double topPadding = 0.0;
    if (connectsToTop && !connectsToBottom) {
      align = Alignment.bottomCenter;
      topPadding = 25.0;
    } else if (connectsToBottom && !connectsToTop) {
      align = Alignment.topCenter;
      bottomPadding = 25.0;
    }

    String time =
        '${utils.toTwelveHour(date.hour)}:${utils.twoDigits(date.minute)} ${utils.amOrPm(date.hour)}';

    if (!connectsToTop && previousEventInList != null) {
      time = '';
    }

    return Stack(children: <Widget>[
      Padding(
          padding: EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: (!connectsToBottom ? 4.0 : 0.0),
              top: (!connectsToTop ? 4.0 : 0.0)),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    top: topPadding, bottom: bottomPadding, right: 16.0),
                child: Container(
                  width: 60.0,
                  child: Opacity(
                    opacity: 0.5,
                    child: Text(
                      time,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 56.0,
                child: Stack(
                  alignment: align,
                  children: children,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 16.0, top: topPadding, bottom: bottomPadding),
                child: Text(
                  event['title'],
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
                ),
              )
            ],
          )),
      Positioned(
        bottom: 0.0,
        right: 0.0,
        left: 150.0,
        child: Container(
          height: 1.0,
          color: Colors.black.withOpacity(connectsToBottom ? 0.12 : 0.0),
        ),
      ),
    ]);
  }
}
