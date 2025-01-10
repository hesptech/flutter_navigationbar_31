import 'package:bloc/bloc.dart';


class NavindexCubit extends Cubit<int> {
  NavindexCubit() : super(0);

  void setIndex(int index) { 
    emit(index); 
  }

  //void getIndex() => emit(state);
}
