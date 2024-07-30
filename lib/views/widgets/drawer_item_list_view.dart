import 'package:flutter/material.dart';
import 'package:resposnive_dash_board/models/drawer_item_modeld.dart';
import 'package:resposnive_dash_board/utils/app_images.dart';
import 'package:resposnive_dash_board/views/widgets/drawer_item.dart';
class DrawerItemsListView extends StatelessWidget {
  const DrawerItemsListView({
    super.key,
  });

  static List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesMyTransctions),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWalletAccount),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DrawerItem(model: items[index]),
        );
      },
    );
  }
}
