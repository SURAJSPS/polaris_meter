import '../../common_libs.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

///        Home Bloc Use for CRUDE Operation
///        Read data from Local
///        Save data to Local
///        Update data to Server
///        Get Data From User input

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeRepository homeRepository;
  HomeBloc(this.homeRepository) : super(HomeState.initial()) {
    on<Read>((event, emit) => _read(event, emit));
    on<GetUserInput>((event, emit) => _getUserInput(event, emit));
    on<Update>((event, emit) => _update(event, emit));
    on<Create>((event, emit) => _create(event, emit));
    on<ClearForm>((event, emit) => _clearForm(event, emit));
  }

  ///        Read data from Local Or Online
  _read(Read event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isSubmitting: true));
    final failureOrSuccess = await homeRepository.read();
    emit(failureOrSuccess.fold(
      (l) => state.copyWith(isSubmitting: false),
      (success) =>
          state.copyWith(isSubmitting: false, formDate: success, form: success),
    ));
  }

  ///        Get Data From User input
  _getUserInput(GetUserInput event, Emitter<HomeState> emit) {
    final formDate = state.formDate;
    if (formDate != null) {
      final updatedFields = List<Field>.from(formDate.fields);
      updatedFields[event.id] = event.value;
      final updatedFormDate = formDate.copyWith(fields: updatedFields);
      emit(state.copyWith(formDate: updatedFormDate));
    }
  }

  ///        Update data to Server
  _update(Update event, Emitter<HomeState> emit) async {
    final failureOrSuccess = await homeRepository.update();
    emit(failureOrSuccess.fold(
      (l) => state.copyWith(isDataSynced: false),
      (r) => state.copyWith(isDataSynced: true),
    ));
  }

  ///        Save data to Local
  _create(Create event, Emitter<HomeState> emit) async {
    final fields = state.formDate?.fields;

    if (fields == null) return;

    ///        Checking user input according backend configuration
    final hasEmptyRequiredField =
        fields.any((field) => AppUtil.checkInput(field));
    if (hasEmptyRequiredField) {
      emit(state.copyWith(showError: true));

      return;
    }

    emit(state.copyWith(isSubmitting: true));
    final failureOrSuccess = await homeRepository.create(state.formDate!);

    await Future.delayed(const Duration(seconds: 1));
    emit(state.copyWith(isSubmitting: false));
    failureOrSuccess.fold(
      (l) => null,
      (r) => {
        emit(state.copyWith(isDataSynced: true, isDataSaved: true)),
        add(const HomeEvent.update()),
        add(const HomeEvent.clearForm()),
      },
    );
  }

  ///        Clear form  data from UI
  _clearForm(ClearForm event, Emitter<HomeState> emit) {
    final originalForm = state.form;

    emit(state.copyWith(isSubmitting: true, formDate: null, showError: false));
    emit(state.copyWith(
        formDate: originalForm, isSubmitting: false, isDataSaved: false));
  }
}
