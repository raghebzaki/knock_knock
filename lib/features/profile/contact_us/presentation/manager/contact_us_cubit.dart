import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/contact_us_entity.dart';
import '../../domain/use_cases/contact_us_use_case.dart';

part 'contact_us_state.dart';
part 'contact_us_cubit.freezed.dart';

class ContactUsCubit extends Cubit<ContactUsState> {
  ContactUsCubit({required this.contactUsUseCase}) : super(const ContactUsState.initial());
  static ContactUsCubit get(context) => BlocProvider.of(context);

  final ContactUsUseCase contactUsUseCase;

  sendMessage(ContactUsEntity contactUsEntity) async {

    emit(const ContactUsState.loading());

    final send = await contactUsUseCase(contactUsEntity);

    send.fold(
          (l) => {
        emit(
          ContactUsState.error(
            l.code.toString(),
            l.message,
          ),
        ),
      },
          (r) => {
        emit(
          ContactUsState.success(r),
        ),
      },
    );
  }
}
