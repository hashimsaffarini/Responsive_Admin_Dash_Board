import 'package:flutter/material.dart';
import 'package:resposnive_dash_board/models/drawer_item_modeld.dart';
import 'package:resposnive_dash_board/utils/app_images.dart';
import 'package:resposnive_dash_board/views/widgets/active_in_active_item.dart';
import 'package:resposnive_dash_board/views/widgets/drawer_item_list_view.dart';
import 'package:resposnive_dash_board/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: UserInfoListTile(
              image: Assets.imagesAvatar3,
              title: 'Lekan Okeowo',
              subTitle: 'demo@gmail.com',
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 8)),
          const DrawerItemsListView(),
          SliverFillRemaining(
            //*it's make the column expanded to the remaining space
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                InActiveDrawerItem(
                  model: DrawerItemModel(
                    title: 'Setting system',
                    image: Assets.imagesSettings,
                  ),
                ),
                const SizedBox(height: 8),
                InActiveDrawerItem(
                  model: DrawerItemModel(
                    title: 'Logout account',
                    image: Assets.imagesLogout,
                  ),
                ),
                const SizedBox(height: 48),
              ],
            ),
          )
        ],
      ),
    );
  }
}
