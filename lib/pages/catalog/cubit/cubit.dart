import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortestpages/pages/catalog/cubit/states.dart';


class CatalogCubit extends Cubit<CatalogStates>
{

  CatalogCubit(): super(CatalogInitialState());

  static CatalogCubit get(context) => BlocProvider.of(context);
}