import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/Features/home/presentaion/manager/featured_books_cubit/featured_books_state.dart';
// import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  // FeaturedBooksCubit(super.initialState);
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async{
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeatureBooks();
    
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errMessage));
    } , (books) {
      emit(FeaturedBooksSuccess(books));
    } );
    
  }
}