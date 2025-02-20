import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'getcontact_state.dart';

class GetcontactCubit extends Cubit<GetcontactState> {
  GetcontactCubit() : super(GetcontactInitial());
}
