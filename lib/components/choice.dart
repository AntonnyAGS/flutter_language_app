import 'package:flutter/material.dart';
import 'package:flutter_app/entities/language_entity.dart';

class Choice extends StatelessWidget {
  const Choice(
      {Key? key,
      required this.item,
      required this.onSelected,
      this.selected = false})
      : super(key: key);

  final LanguageEntity item;
  final bool selected;
  final Function(LanguageEntity) onSelected;

  _handleSelect(bool value) {
    onSelected(item);
  }

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(item.label),
      selected: selected,
      onSelected: _handleSelect,
    );
  }
}
