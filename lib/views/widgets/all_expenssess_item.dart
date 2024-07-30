import 'package:flutter/material.dart';
import 'package:resposnive_dash_board/models/all_expensess_item_model.dart';
import 'package:resposnive_dash_board/views/widgets/all_expenssess_item_header.dart';

class AllExpenssessItem extends StatelessWidget {
  const AllExpenssessItem({super.key, required this.model});
  final AllExpensessItemModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xffF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        children: [
          AllExpenssessItemHeader(
            image: model.image,
          ),
        ],
      ),
    );
  }
}
