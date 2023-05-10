
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortestpages/pages/change_password/cubit/states.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordStates>
{
  ChangePasswordCubit(): super(ChangePasswordInitialState());

  static ChangePasswordCubit get(context)=> BlocProvider.of(context);
}