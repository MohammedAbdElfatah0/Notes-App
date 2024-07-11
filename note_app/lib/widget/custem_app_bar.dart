import 'package:flutter/material.dart';

class CustemAppbar extends StatelessWidget {
  const CustemAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        child: Row(
          children: [
            Text(
              'Notes',
              style: TextStyle(fontSize: 24),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(35)),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
