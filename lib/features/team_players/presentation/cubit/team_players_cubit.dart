import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'team_players_state.dart';

class TeamPlayersCubit extends Cubit<TeamPlayersState> {
  TeamPlayersCubit() : super(TeamPlayersInitial());
}
