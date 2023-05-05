import 'package:fortestpages/pages/register/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterStates>
{
  RegisterCubit(): super (RegisterInitialState());

  static RegisterInitialState get(context) => BlocProvider.of(context);
}

