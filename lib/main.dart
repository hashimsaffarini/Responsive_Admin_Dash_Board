import 'package:flutter/material.dart';
import 'package:resposnive_dash_board/views/pages/dash_board_view.dart';

void main() {
  runApp(const ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashBoardView(),
    );
  }
}
