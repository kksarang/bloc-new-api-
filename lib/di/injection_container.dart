import 'package:get_it/get_it.dart';

import '../bloc/boq_form_cubit.dart';
import '../bloc/case-details/case_details_cubit.dart';
import '../data/repository/case_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //cubit
  sl.registerFactory(() => CaseDetailsCubit(sl<CaseRepository>()));

  sl.registerFactory(() => BoqFormCubit(sl<CaseRepository>()));
}
