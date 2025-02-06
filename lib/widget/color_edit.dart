
import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/color_cricle.dart';

class ColorEdit extends StatefulWidget {
  const ColorEdit({super.key, required this.note});
  final NoteModel note;
  @override
  State<ColorEdit> createState() => _ColorEditState();
}

class _ColorEditState extends State<ColorEdit> {
  late int colorIndex;

  @override
  void initState() {
    colorIndex = kColor.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColor.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 6),
            child: GestureDetector(
              onTap: () {
                colorIndex = index;
                widget.note.color = kColor[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: kColor[index],
                isActive: colorIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
