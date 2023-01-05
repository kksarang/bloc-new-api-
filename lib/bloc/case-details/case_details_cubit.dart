import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';

import '../../data/model/api/api_data.dart';
import '../../data/model/api/case_details_data.dart';
import '../../data/repository/case_repository.dart';
import '../../data/result.dart';

class CaseDetailsCubit extends Cubit<Result<CaseDetailsData>> {
  final CaseRepository _caseRepository;

  PublishSubject<Result<ApiData>> _changeStatusSubject = PublishSubject<Result<ApiData>>();
  Stream<Result<ApiData>> get astatusChangeResult => _changeStatusSubject.stream;

  PublishSubject<Result<ApiData>> _apiResultController = PublishSubject<Result<ApiData>>();
  Stream<Result<ApiData>> get apiResult => _apiResultController.stream;

  CaseDetailsCubit(this._caseRepository) : super(Result.initial());

  //fetch case data
  Future fetchCaseData(int id) async {
    if (!(state is Loading)) {
      emit(Result.loading());
      Result<CaseDetailsData> result = await _caseRepository.fetchCaseDetails(id);
      emit(result);
    }
  }

  @override
  Future<void> close() {
    _apiResultController.close();
    return super.close();
  }
}
