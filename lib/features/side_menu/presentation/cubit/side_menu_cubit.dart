import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'side_menu_state.dart';

class SideMenuCubit extends Cubit<SideMenuState> {
  SideMenuCubit() : super(SideMenuInitial());
}
