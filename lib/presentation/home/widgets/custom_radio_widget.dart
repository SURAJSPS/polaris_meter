import 'package:polaris_meter/common_libs.dart';

class CustomRadioWidget extends StatelessWidget {
  final Field field;
  const CustomRadioWidget({super.key, required this.field});

  @override
  Widget build(BuildContext context) {
    int index = field.componentId!;

    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) =>
          previous.formDate?.fields[index] != current.formDate?.fields[index],
      builder: (context, state) {
        return WidgetDecoration(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LabelWidget(field),
              ...?field.meta.options?.map((option) => RadioListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(option),
                    value: option,
                    groupValue: state.formDate?.fields[index].formValue,
                    onChanged: (value) {
                      context.read<HomeBloc>().add(HomeEvent.getUserInput(
                          id: index, value: field.copyWith(formValue: option)));
                    },
                  )),
              CustomErrorWidget(field: field),
            ],
          ),
        );
      },
    );
  }
}
