import 'package:flutter/material.dart';
import 'package:resposnive_dash_board/utils/app_styles.dart';
import 'package:resposnive_dash_board/views/widgets/range_options.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'All Expensess',
          style: AppStyles.styleSemiBold20,
        ),
        Spacer(),
        RangeOptions()
      ],
    );
  }
}
