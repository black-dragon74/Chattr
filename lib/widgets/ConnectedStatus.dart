import 'package:flutter/material.dart';
import 'package:vpn_app/utils/constants.dart';

class ConnectedStatus extends StatelessWidget {
  const ConnectedStatus({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'Status: ',
          style: kConnectedStyle,
          children: [
            TextSpan(text: 'connected\n', style: kConnectedGreenStyle),
            TextSpan(text: '01:02:03', style: kConnectedSubtitle),
          ],
        ),
      ),
    );
  }
}
