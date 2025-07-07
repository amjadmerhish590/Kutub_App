
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/functions/launch_url.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';


class BookAction extends StatelessWidget {
  const BookAction({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 8),
      child:  Row(
        children: [
          const Expanded(
              child: CustomButton(
                text: "FREE",
                backgroundColor: Colors.white,
                textColor: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16)
                ),
              )
          ),
          Expanded(
              child: CustomButton(
                onPressed: () async{

                  launchCustomUrl(context, bookModel.volumeInfo.previewLink);
                },
                text: getText(bookModel),
                backgroundColor: const Color(0xffEF8262),
                textColor: Colors.white,
                borderRadius: const BorderRadius.only(
                    topRight:  Radius.circular(16),
                      bottomRight: Radius.circular(16)
                ),
                fontSize: 16,
              )
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if(bookModel.volumeInfo.previewLink == null) {
      return "Not Avaliable";
    }else {
      return "Preview";
    }

  }
}