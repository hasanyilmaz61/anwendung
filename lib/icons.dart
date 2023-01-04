import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Iconconteiner extends StatelessWidget {
  final String text;
  final IconData icon;

  Iconconteiner({this.text = "bos", this.icon = FontAwesomeIcons.a});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 60,
          color: Colors.black54,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        )
      ],
    );
  }
}

class Myconteiner extends StatelessWidget {
  final Color renk;
  final Widget child;
  Myconteiner({
    this.renk = Colors.white,
    required this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
