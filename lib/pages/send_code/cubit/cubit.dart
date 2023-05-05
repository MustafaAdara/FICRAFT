
import 'package:fortestpages/pages/send_code/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CodeCubit extends Cubit<CodeStates>
{
  CodeCubit(): super(CodeInitialState());
  static CodeInitialState get(context) => BlocProvider.of(context);
}