part of 'internet_bloc.dart';

@freezed
class InternetState with _$InternetState {
  const factory InternetState.initial() = _Initial;
  const factory InternetState.loading() = Loading;
  const factory InternetState.connected() = Connected;
  const factory InternetState.disconnected() = Disconnected;
}
