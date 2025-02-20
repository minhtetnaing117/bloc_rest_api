import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'post_contact_state.dart';

class PostContactCubit extends Cubit<PostContactState> {
  PostContactCubit() : super(PostContactInitial());
}
