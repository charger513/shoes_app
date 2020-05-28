import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String texto;

  CustomAppbar({this.texto});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Container(
        margin: EdgeInsets.only(top: 30),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: <Widget>[
            Text(
              texto,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            Spacer(),
            Icon(
              Icons.search,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
