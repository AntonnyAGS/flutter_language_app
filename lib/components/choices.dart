import 'package:flutter/material.dart';
import 'package:flutter_app/components/choice.dart';
import 'package:flutter_app/entities/language_entity.dart';

class Choices extends StatelessWidget {
  const Choices(
      {Key? key,
      required this.items,
      required this.selecteds,
      required this.onChipSelect})
      : super(key: key);

  final List<LanguageEntity> items;
  final List<LanguageEntity> selecteds;

  final Function(LanguageEntity) onChipSelect;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Wrap(
            spacing: 10,
            children: items
                .map((e) => Choice(
                      item: e,
                      onSelected: onChipSelect,
                      selected: selecteds.any((s) => s.id == e.id),
                    ))
                .toList()));
  }
}
