import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustemTextField extends StatelessWidget {
  const CustemTextField(
      {super.key, required this.textHint, this.maxLines = 1, this.onSava, this.onChanged});
final Function(String)? onChanged;
  final String textHint;
  final int maxLines;
  final void Function(String?)? onSava;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSava,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is required';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          hintText: textHint,
          hintStyle: const TextStyle(color: Colors.white24),
          border: buildBorder(),
          focusedBorder: buildBorder(kPrimaryColor),
          enabledBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white54, width: 2),
    );
  }
}
