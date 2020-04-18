import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vpn_app/utils/constants.dart';
import 'package:vpn_app/widgets/ConnectedStatus.dart';
import 'package:vpn_app/widgets/LocationWidget.dart';
import 'package:vpn_app/widgets/RoundGradientButton.dart';
import 'package:vpn_app/widgets/SemiCircularClipper.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              overflow: Overflow.visible,
              children: <Widget>[
                UpperSemiCircularContainer(),
                RoundedGradientButton(),
              ],
            ),
            SizedBox(height: width * 0.40),
            ConnectedStatus(),
            SizedBox(height: 20),
            LocationWidget(
              heading: 'Selected Location',
              color: kBgColor,
              country: 'India',
              countryFlagURL: 'assets/images/india.png',
              icon: Icons.refresh,
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Or',
                style: kConnectedSubtitle,
              ),
            ),
            LocationWidget(
              heading: 'Change Location',
              color: Colors.indigo[500],
              country: 'USA',
              countryFlagURL: 'assets/images/usa.png',
              icon: Icons.chevron_right,
            ),
          ],
        ),
      ),
    );
  }
}

class UpperSemiCircularContainer extends StatelessWidget {
  const UpperSemiCircularContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SemiCircularClipper(),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 36, horizontal: 32),
        height: 320,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: kCurveGradient,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            UpperRow(),
            Text(
              'Nick\'s VPN',
              style: kVpnStyle,
            ),
            LowerRow(),
          ],
        ),
      ),
    );
  }
}

class LowerRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Upload\n546 kb/s',
          style: kTxtSpeedStyle,
        ),
        Text(
          'Download\n32 mb/s',
          style: kTxtSpeedStyle,
        ),
      ],
    );
  }
}

class UpperRow extends StatelessWidget {
  const UpperRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height: 50,
          decoration: BoxDecoration(
            color: kBgColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: RawMaterialButton(
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/images/premiumcrown.png',
                    height: 36,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Go Premium',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: kBgColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: RawMaterialButton(
            onPressed: () {},
            child: Icon(
              Icons.tune,
              size: 26,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
