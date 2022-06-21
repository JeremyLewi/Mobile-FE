import 'package:flutter/material.dart';

class OutlinedChip extends StatelessWidget {
  final Widget label;
  final bool selected;
  final Function(bool) onSelected;

  const OutlinedChip({
    Key? key,
    required this.label,
    required this.selected,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? textColor = selected ? Colors.white : null;
    Color? selectedColor =
        selected ? Theme.of(context).colorScheme.primary : null;
    StadiumBorder? shapeStyle = !selected
        ? const StadiumBorder(side: BorderSide(color: Colors.grey))
        : null;

    return Container(
      margin: const EdgeInsets.only(right: 12),
      child: InputChip(
        shape: shapeStyle,
        checkmarkColor: Colors.white,
        backgroundColor: Colors.transparent,
        label: label,
        labelStyle: TextStyle(color: textColor),
        selected: selected,
        selectedColor: selectedColor,
        onSelected: onSelected,
      ),
    );
  }
}
