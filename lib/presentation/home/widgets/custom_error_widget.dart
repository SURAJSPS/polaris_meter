import '../../../common_libs.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errorMessage;
  final bool? valueCheck;

  final Field field;

  const CustomErrorWidget(
      {super.key,
      required this.field,
      this.valueCheck,
      this.errorMessage = "Field is required *"});

  @override
  Widget build(BuildContext context) {
    int index = field.componentId!;

    return BlocBuilder<HomeBloc, HomeState>(
      // buildWhen: (previous, current) =>
      //     previous.formDate?.fields[index] != current.formDate?.fields[index],
      builder: (context, state) {
        if (!state.showError) {
          return const SizedBox.shrink();
        }
        final value = state.formDate!.fields[index];

        return Visibility(
          visible: AppUtil.checkInput(value),
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              errorMessage,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.red,
              ),
            ),
          ),
        );
      },
    );
  }
}
