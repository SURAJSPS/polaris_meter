part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    SurveyForm? formDate,
    SurveyForm? form,
    required bool showError,
    required bool isDataSynced,
    required bool isSubmitting,
    required bool isDataSaved,
  }) = _HomeState;

  const HomeState._();

  factory HomeState.initial() => const HomeState(
        isSubmitting: false,
        showError: false,
        isDataSynced: false,
        isDataSaved: false,
      );
}
