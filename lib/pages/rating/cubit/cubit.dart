
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortestpages/pages/rating/cubit/states.dart';

class RatingCubit extends Cubit<RatingStates>
{

  RatingCubit(): super(RatingInitialState());

  static RatingInitialState get(context) => BlocProvider.of(context);
}