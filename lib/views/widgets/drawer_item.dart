import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resposnive_dash_board/models/drawer_item_modeld.dart';
import 'package:resposnive_dash_board/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.model});
  final DrawerItemModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(model.image),
      title: Text(
        model.title,
        style: AppStyles.styleMedium16,
      ),
    );
  }
}
