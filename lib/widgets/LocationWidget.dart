import 'package:flutter/material.dart';
import 'package:vpn_app/utils/constants.dart';

class LocationWidget extends StatelessWidget {
  final String heading;
  final Color color;
  final String countryFlagURL;
  final String country;
  final IconData icon;

  const LocationWidget({
    Key key,
    this.heading,
    this.countryFlagURL,
    this.country,
    this.icon,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            heading,
            style: kLocationTitleStyle,
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            height: 80,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color,
              border: Border.all(
                color: Color(0XFF9BB1BD),
                style: BorderStyle.solid,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                  countryFlagURL,
                ),
              ),
              title: Text(
                country,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: Icon(
                icon,
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
