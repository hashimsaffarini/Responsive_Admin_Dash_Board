import 'package:flutter/material.dart';
import 'package:resposnive_dash_board/views/widgets/adaptive_layout_widget.dart';
import 'package:resposnive_dash_board/views/widgets/dash_board_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
