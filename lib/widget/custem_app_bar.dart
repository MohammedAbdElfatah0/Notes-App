import 'package:flutter/material.dart';

class CustemAppbar extends StatelessWidget {
  const CustemAppbar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child:  SizedBox(
        height: 40,
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
  
          ],
        ),
      ),
    );
  }
}
