import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustemButton extends StatelessWidget {
  const CustemButton({super.key, this.onTap, this.isLoding = false});
  final void Function()? onTap;
  final bool isLoding;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(24),
        ),
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Center(
          child: isLoding
              ? const CircularProgressIndicator(
                  color: Colors.black,
                  strokeWidth: 4,
                  backgroundColor: Colors.grey,
                  strokeCap: StrokeCap.round,
                )
              : const Text(
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
