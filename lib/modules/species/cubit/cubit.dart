import 'package:bloc/bloc.dart';
import 'package:fashion_market/modules/species/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class speciesCubit extends Cubit<speciesStates> {
  speciesCubit() : super(speciesinitialState());
  static speciesCubit get(context) => BlocProvider.of(context);
}
