import 'package:flutter/material.dart';
import 'package:resposnive_dash_board/models/drawer_item_modeld.dart';
import 'package:resposnive_dash_board/views/widgets/active_in_active_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.model,
    this.isActive = false,
  });
  final DrawerItemModel model;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(model: model)
        : InActiveDrawerItem(model: model);
  }
}
