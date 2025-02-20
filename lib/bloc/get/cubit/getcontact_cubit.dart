import 'package:bloc/bloc.dart';
import 'package:bloc_rest_api/data/contact_repository.dart';
import 'package:bloc_rest_api/data/model/contact.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'getcontact_state.dart';

class GetcontactCubit extends Cubit<GetcontactState> {
  final ContactRepository _contactRepository;
  GetcontactCubit(this._contactRepository) : super(GetcontactInitial());

  void getContact(){
    emit(GetcontactInitial());
    _contactRepository.getContact()
    .then((value) => emit(GetcontactSuccess(value)))
    .catchError((e) => emit(GetcontactFail('error')));
  }
}
