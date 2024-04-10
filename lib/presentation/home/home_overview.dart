import 'package:polaris_meter/common_libs.dart';

class HomeOverView extends StatelessWidget {
  const HomeOverView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
        listenWhen: (previous, current) =>
            previous.isDataSaved != current.isDataSaved,
        listener: (context, state) {
          if (state.isDataSaved == true) {
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                actionsAlignment: MainAxisAlignment.center,
                title: const Text('Congratulations'),
                content: const Text(
                    "We're pleased to inform you that you have successfully submitted the server form."),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Close'),
                  ),
                ],
                icon: const SizedBox.shrink(),
              ),
            );
          }
        },
        buildWhen: (previous, current) =>
            previous.isSubmitting != current.isSubmitting,
        builder: (context, state) {
          if (state.isSubmitting == false && state.formDate != null) {
            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                ...state.formDate!.fields.asMap().entries.map((entry) {
                  final index = entry.key;
                  final field = entry.value;
                  switch (field.componentType) {
                    case "EditText":
                      return CustomTextFieldWidget(
                        field: field.copyWith(componentId: index),
                        key: Key(index.toString()),
                      );
                    case "DropDown":
                      return CustomDropdownWidget(
                          field: field.copyWith(componentId: index));
                    case "CheckBoxes":
                      return CustomCheckBoxWidget(
                          field: field.copyWith(componentId: index));
                    case "RadioGroup":
                      return CustomRadioWidget(
                          field: field.copyWith(componentId: index));
                    case "CaptureImages":
                      return CustomImagePickerWidget(
                          field: field.copyWith(componentId: index));

                    default:
                      return Container(); // Return empty container for unsupported types
                  }
                }),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    final bloc = context.read<HomeBloc>();
                    bloc.add(const HomeEvent.create());
                  },
                  child: const Text('Submit'),
                ),
              ],
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
