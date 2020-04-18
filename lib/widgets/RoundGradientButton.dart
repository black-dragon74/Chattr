import 'package:flutter/material.dart';
import 'package:vpn_app/utils/constants.dart';

class RoundedGradientButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Positioned(
      bottom: -width * 0.30,
      child: Stack(
        children: <Widget>[
          Container(
            height: width * 0.51,
            width: width * 0.51,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: kCurveGradient,
            ),
            child: Center(
              child: Container(
                height: width * 0.4,
                width: width * 0.4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kBgColor,
                ),
                child: Center(
                  child: Container(
                    height: width * 0.3,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: kGreenGradient,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(2.0, 2.0), color: Color(0XFF00D58D), blurRadius: 10)
                      ],
                    ),
                    child: Center(
                      child: Icon(Icons.wifi_lock, color: Colors.white, size: 50),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 15,
            child: Container(
              padding: EdgeInsets.all(8),
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: kBgColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/usa.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
