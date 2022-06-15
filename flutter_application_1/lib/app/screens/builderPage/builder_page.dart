import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/builderPage/mixins/list_item_mixin.dart';
import 'package:flutter_application_1/app/screens/builderPage/widgets/list_item_card.dart';

class BuilderPage extends StatelessWidget with ListItemMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Builder Page'),
      ),
      body: ListView.builder(
        itemCount: listItems.length,
        itemBuilder: (_, index) {
        return ListItemCard(listItem: listItems[index]);
      }),
    );
  }
}
