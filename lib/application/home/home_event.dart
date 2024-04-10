part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.create() = Create;
  const factory HomeEvent.getUserInput(
      {required int id, required Field value}) = GetUserInput;
  const factory HomeEvent.read() = Read;
  const factory HomeEvent.update() = Update;
  const factory HomeEvent.delete() = Delete;
  const factory HomeEvent.clearForm() = ClearForm;
}
