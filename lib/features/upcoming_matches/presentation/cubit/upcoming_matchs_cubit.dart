import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'upcoming_matchs_state.dart';

class UpcomingMatchsCubit extends Cubit<UpcomingMatchsState> {
  UpcomingMatchsCubit() : super(UpcomingMatchsInitial());
}
