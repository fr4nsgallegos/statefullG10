import 'package:flutter/material.dart';

class ItemDeportWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.orange, width: 2),
        // color: Colors.orange,
      ),
      child: Text("Baloncesto"),
    );
  }
}
