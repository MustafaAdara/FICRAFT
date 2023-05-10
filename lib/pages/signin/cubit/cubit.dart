import 'package:fortestpages/pages/signin/cubit/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SignInCubit extends Cubit<SignInStates>
{
  SignInCubit(): super (SignInInitialState());

  static SignInCubit get(context) => BlocProvider.of(context);
}