import 'package:ai_tactical_assistant/features/nav_bar/presentation/cubit/nav_bar_cubit.dart';
import '../../injection_container.dart';

void initNavBarInjection() async {
  //* Cubits
  sl.registerLazySingleton<NavBarCubit>(() => NavBarCubit());

  //* UseCases

  //* Repositories

  //* Data Sources
}
