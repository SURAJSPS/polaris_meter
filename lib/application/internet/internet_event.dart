part of 'internet_bloc.dart';

@freezed
class InternetEvent with _$InternetEvent {
  const factory InternetEvent.checkInternet() = CheckInternet;
  const factory InternetEvent.syncData() = SyncData;
}
