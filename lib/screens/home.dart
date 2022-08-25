import 'package:flutter/material.dart';
import 'package:flutter_app/components/choices.dart';
import 'package:flutter_app/entities/language_entity.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<LanguageEntity> selecteds = [];

  _onSelectChip(LanguageEntity value) {
    if (selecteds.any((e) => e.id == value.id)) {
      setState(() => selecteds.removeWhere((e) => e.id == value.id));
      return;
    }

    setState(() => selecteds.add(value));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            Choices(
              items: [
                LanguageEntity('android', 'Android Nativo'),
                LanguageEntity('ios', 'IOS'),
              ],
              selecteds: selecteds,
              onChipSelect: _onSelectChip,
            )
          ],
        ));
  }
}
