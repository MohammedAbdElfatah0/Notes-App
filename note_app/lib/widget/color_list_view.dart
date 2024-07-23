import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit.dart';
import 'package:note_app/widget/color_cricle.dart';

class ColorListItem extends StatefulWidget {
  const ColorListItem({super.key});

  @override
  State<ColorListItem> createState() => _ColorListItemState();
}

class _ColorListItemState extends State<ColorListItem> {
  int colorIndex = 0;

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
                BlocProvider.of<AddNoteCubit>(context).color = kColor[index];
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
