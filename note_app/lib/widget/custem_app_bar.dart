import 'package:flutter/material.dart';

class CustemAppbar extends StatelessWidget {
  const CustemAppbar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        height: 40,
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 24),
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(35)),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    icon,
                    color: Colors.white,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
