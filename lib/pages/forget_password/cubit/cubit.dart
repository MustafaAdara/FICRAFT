import 'package:fortestpages/pages/forget_password/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordStates>
{
  ForgetPasswordCubit() : super(ForgetPasswordInitialState());

  static ForgetPasswordCubit get(context) => BlocProvider.of(context);

}

// متنسيش عشان تغيرى من
// state ل state
// بتستخدى
//emit(هنا ال ٍState بتاعتك)