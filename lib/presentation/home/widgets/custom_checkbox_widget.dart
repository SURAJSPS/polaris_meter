import '../../../common_libs.dart';

class CustomCheckBoxWidget extends StatelessWidget {
  final Field field;

  const CustomCheckBoxWidget({super.key, required this.field});

  @override
  Widget build(BuildContext context) {
    final homeBloc = sl<HomeBloc>();
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
              ...?field.meta.options?.map((option) => CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(option),
                    value: state.formDate?.fields[index].formValue == option,
                    onChanged: (bool? value) {
                      homeBloc.add(HomeEvent.getUserInput(
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
