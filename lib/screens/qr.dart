// Import Relevant Packages:
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../common_utils.dart';

class QRScreen extends StatefulWidget {
  const QRScreen({Key? key}) : super(key: key);

  static const String id = 'qr_screen';

  @override
  State<QRScreen> createState() => _QRScreenState();
}

class _QRScreenState extends State<QRScreen> {
  @override
  void initState() {
    super.initState();
  }

  List<bool> optionsBool = [false, false, false, false, false];
  int payload_prefix_num = 0;

  // Widget Tree:
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      appBar: _qrScreenAppBar(),
      body: SafeArea(
        child: ListView(
          children: [
            _qrCode("005756489"),
            _options(),
          ],
        ),
      ),
    );
  }

  Widget _qrCode(String payload) {
    // HANDLE QR_CODE_URL:
    List<String> payload_prefix = [
      "",
      "events/",
      "gaming/",
      "general/",
      "board/",
      "checkout/"
    ];

    const double qrCodeOffset = 75;

    return Padding(
      padding: const EdgeInsets.fromLTRB(
          qrCodeOffset, qrCodeOffset, qrCodeOffset, 0),
      child: Center(
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            child: QrImageView(
              data: '${payload_prefix[payload_prefix_num]}$payload',
              version: QrVersions.auto,
              foregroundColor: altColor,
            ),
          ),
        ),
      ),
    );
  }

  Widget _options() {
    const double optionsVerticalOffset = 50;

    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, optionsVerticalOffset, 0, 0),
        child: Container(
          child: Wrap(
            // spacing: 8.0,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    optionsBool = optionsBool.map((element) => false).toList();
                    optionsBool[0] = true;
                    payload_prefix_num = 1;
                  });
                },
                child: Chip(
                  backgroundColor: altColor,
                  avatar: Icon(
                    optionsBool[0]
                        ? Icons.event_available
                        : Icons.event, // Icons.event_available
                    color: mainBackgroundColor,
                  ),
                  label: Text(
                    'Event',
                    style: mainTextStyle(
                        22, FontWeight.normal, mainBackgroundColor),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    optionsBool = optionsBool.map((element) => false).toList();
                    optionsBool[1] = true;
                    payload_prefix_num = 2;
                  });
                },
                child: Chip(
                  backgroundColor: altColor,
                  avatar: Icon(
                    optionsBool[1] ? Icons.gamepad : Icons.gamepad_outlined,
                    color: mainBackgroundColor,
                  ),
                  label: Text(
                    'Gaming',
                    style: mainTextStyle(
                        22, FontWeight.normal, mainBackgroundColor),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    optionsBool = optionsBool.map((element) => false).toList();
                    optionsBool[2] = true;
                    payload_prefix_num = 3;
                  });
                },
                child: Chip(
                  backgroundColor: altColor,
                  avatar: Icon(
                    optionsBool[2]
                        ? Icons.space_dashboard
                        : Icons.space_dashboard_outlined,
                    color: mainBackgroundColor,
                  ),
                  label: Text(
                    'General',
                    style: mainTextStyle(
                        22, FontWeight.normal, mainBackgroundColor),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    optionsBool = optionsBool.map((element) => false).toList();
                    optionsBool[3] = true;
                    payload_prefix_num = 4;
                  });
                },
                child: Chip(
                  backgroundColor: altColor,
                  avatar: Icon(
                    optionsBool[3] ? Icons.toys : Icons.toys_outlined,
                    color: mainBackgroundColor,
                  ),
                  label: Text(
                    'Board Games',
                    style: mainTextStyle(
                        22, FontWeight.normal, mainBackgroundColor),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    optionsBool = optionsBool.map((element) => false).toList();
                    optionsBool[4] = true;
                    payload_prefix_num = 5;
                  });
                },
                child: Chip(
                  side: BorderSide(
                    color: altColor,
                    width: 3,
                    strokeAlign: BorderSide.strokeAlignInside,
                  ),
                  backgroundColor: mainBackgroundColor,
                  avatar: Icon(
                    optionsBool[4] ? Icons.close : Icons.highlight_off,
                    color: altColor,
                  ),
                  label: Text(
                    'Check-Out',
                    style: mainTextStyle(22, FontWeight.normal, altColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _qrScreenAppBar() {
    return AppBar(
      backgroundColor: mainBackgroundColor,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: altColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.info,
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
