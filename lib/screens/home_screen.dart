// Import Relevant Packages:
import 'package:flutter/material.dart';

import '../common_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String id = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  // Widget Tree:
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      appBar: _homeScreenAppBar(),
      body: SafeArea(
        child: ListView(
          children: [
            lc_tokens_barStateful(),
            lc_tabs_list(),
            lc_events_calendar(),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _homeScreenAppBar() {
    return AppBar(
      backgroundColor: mainBackgroundColor,
      leading: IconButton(
        icon: Icon(
          Icons.info,
          color: altColor,
        ),
        onPressed: () {
          // Handle back button press
          // You can navigate back or perform any desired action here
        },
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.star,
            color: altColor,
          ),
          onPressed: () {
            // Handle image button press
            // You can perform any desired action here
          },
        ),
      ],
    );
  }
}

class lc_tokens_barStateful extends StatefulWidget {
  const lc_tokens_barStateful({Key? key}) : super(key: key);

  @override
  State<lc_tokens_barStateful> createState() => _lc_tokens_barStatefulState();
}

class _lc_tokens_barStatefulState extends State<lc_tokens_barStateful> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    final double barWidthFactor = 0.55;
    final double barWidth = screenSize.width * barWidthFactor;

    const double barVerticalOffset = 30;

    String num_lc_tokens = "0015730";

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, barVerticalOffset, 0, 0),
      child: Center(
        child: Container(
          height: 75,
          width: barWidth,
          decoration: BoxDecoration(
            color: mainBackgroundColor,
            borderRadius:
                BorderRadius.circular(10), // Adjust the radius as needed
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Image.asset(
                  'assets/lc_logo.png',
                  height: 50,
                ),
              ),
              Text(
                num_lc_tokens,
                style: TextStyle(
                  fontFamily: "Mono45Headline",
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: altColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class lc_tabs_list extends StatelessWidget {
  const lc_tabs_list({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      child: Container(
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Check In:
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: AspectRatio(
                aspectRatio: 0.25,
                child: FittedBox(
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                  child: Container(
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        "Check In",
                        style: TextStyle(
                          fontFamily: "Mono45Headline",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: altColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 25, 10),
              child: AspectRatio(
                aspectRatio: 1,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(mainBackgroundColor),
                  ),
                  child: Image.asset(
                    "assets/qr_code.png",
                    color: altColor,
                  ),
                ),
              ),
            ),
            // Arcade Pass:
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: AspectRatio(
                aspectRatio: 0.25,
                child: FittedBox(
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                  child: Container(
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        "Arcade Pass",
                        style: TextStyle(
                          fontFamily: "Mono45Headline",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: altColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 25, 10),
              child: AspectRatio(
                aspectRatio: 1,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(mainBackgroundColor),
                  ),
                  child: Image.asset(
                    "assets/arcade_pass.png",
                    color: altColor,
                  ),
                ),
              ),
            ),
            // Mini-Games:
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: AspectRatio(
                aspectRatio: 0.25,
                child: FittedBox(
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                  child: Container(
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        "Mini Games",
                        style: TextStyle(
                          fontFamily: "Mono45Headline",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: altColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 25, 10),
              child: AspectRatio(
                aspectRatio: 1,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(mainBackgroundColor),
                  ),
                  child: Image.asset(
                    "assets/mini_games.png",
                    color: altColor,
                  ),
                ),
              ),
            ),
            // Resources:
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: AspectRatio(
                aspectRatio: 0.25,
                child: FittedBox(
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                  child: Container(
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        "Resources",
                        style: TextStyle(
                          fontFamily: "Mono45Headline",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: altColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: AspectRatio(
                aspectRatio: 1,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(mainBackgroundColor),
                  ),
                  child: Image.asset(
                    "assets/resources.png",
                    color: altColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class lc_events_calendar extends StatefulWidget {
  const lc_events_calendar({Key? key}) : super(key: key);

  @override
  State<lc_events_calendar> createState() => _lc_events_calendarState();
}

class _lc_events_calendarState extends State<lc_events_calendar> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    final double calendarWidthFactor = 0.80;
    final double calendarWidth = screenSize.width * calendarWidthFactor;

    final List<dynamic> events = [
      [
        "assets/event_test.png",
        "League of Legends Watch Party",
        "12-2 PM @ Royce Hall"
      ]
    ];

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Center(
        child: Container(
          height: 500,
          width: calendarWidth,
          child: ListView(
            children: <Widget>[
                  Text(
                    "Events",
                    style: TextStyle(
                      fontFamily: "Mono45Headline",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: altColor,
                    ),
                  )
                ] +
                events.map((e) {
                  return event_listing(e[0], e[1], e[2]);
                }).toList(),
          ),
        ),
      ),
    );
  }

  Widget event_listing(event_image_string, event_name, event_info) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Container(
        height: 75,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  image: AssetImage(event_image_string),
                  fit: BoxFit.fill,
                  width: 55,
                  height: 55,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12.5, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    event_name,
                    style: TextStyle(
                      fontFamily: "Mono45Headline",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: mainBackgroundColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 3, 0, 0),
                    child: Text(
                      event_info,
                      style: TextStyle(
                        fontFamily: "Mono45Headline",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: mainBackgroundColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: altColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
