import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knockknock/features/main/home/domain/entities/carousel_entity.dart';
import 'package:knockknock/features/main/home/domain/use_cases/carousel_use_case.dart';

part 'carousel_cubit.freezed.dart';
part 'carousel_state.dart';

class CarouselCubit extends Cubit<CarouselState> {
  CarouselCubit({required this.carouselUseCase})
      : super(const CarouselState.initial());
  static CarouselCubit get(context) => BlocProvider.of(context);

  final CarouselUseCase carouselUseCase;

  getAds(int nextPage) async {
    if (nextPage == 1) {
      emit(const CarouselState.loading());
    } else {
      emit(const CarouselState.paginationLoading());
    }
    
    

    final getAllCarousel = await carouselUseCase(nextPage);

    getAllCarousel.fold(
      (l) => {
        nextPage == 1 ?
        emit(
          CarouselState.error(
            l.code.toString(),
            l.message,
          ),
        ) : emit(
          CarouselState.paginationError(
            l.code.toString(),
            l.message,
          ),
        ),
      },
      (r) => {
        emit(
          CarouselState.success(r),
        ),
      },
    );
  }
}
