import 'package:bookly_app/Features/home/presentaion/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';


class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("You Can also like",
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(
          height: 16,
        ),

        const SimilarBookListView(),

      ],
    );
  }
}