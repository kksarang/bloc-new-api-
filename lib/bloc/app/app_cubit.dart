import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

import '../../data/local/pref/pref_helper.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  final PrefHelper userLocalDataSource;
  final _notificationListener = PublishSubject<bool>();
  Stream<bool> get notifListener => _notificationListener.stream;

  bool get notifVisibilityStatus => userLocalDataSource.notifVisibilityStatus();

  AppCubit(this.userLocalDataSource) : super(AppState.initial());

  updateNotificationListener(bool value) {
    _notificationListener.sink.add(value);
    userLocalDataSource.setNotifStatus(value);
  }

  @override
  Future<void> close() {
    _notificationListener.close();
    return super.close();
  }
}
