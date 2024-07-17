import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustemButton extends StatelessWidget {
  const CustemButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(24),
        ),
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: const Center(
          child: Text(
            'Add',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 21,
            ),
          ),
        ),
      ),
    );
  }
}
