import 'package:bookly_app/Features/home/presentaion/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/Features/home/presentaion/manager/newest_books_cubit/newest_books_state.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
              // shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index){
                return  Padding(
                  padding:  const EdgeInsets.symmetric(vertical: 10),
                  child:  BookListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              }
              );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      }
    );
  }
}
