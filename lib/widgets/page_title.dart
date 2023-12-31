

import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Classify Transaction', style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            )),
            SizedBox(
              height: 18,
            ),
            Text('Classify this transaction into a particular category', style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ))
          ],
          )
      ),
    );
  }
}