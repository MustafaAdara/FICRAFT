
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortestpages/pages/send_request/cubit/states.dart';

class RequestCubit extends Cubit<RequestStates>
{
  RequestCubit(): super(RequestInitialState());

  static RequestCubit get(context) => BlocProvider.of(context);
}