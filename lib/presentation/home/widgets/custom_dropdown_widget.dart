import 'package:polaris_meter/common_libs.dart';

class CustomDropdownWidget extends StatelessWidget {
  final Field field;

  const CustomDropdownWidget({super.key, required this.field});

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
              DropdownButton<String>(
                hint: Text(field.meta.label),
                isExpanded: true,
                value: homeBloc.state.formDate?.fields[index].formValue,
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: const SizedBox.shrink(),
                onChanged: (String? value) {
                  homeBloc.add(HomeEvent.getUserInput(
                      id: index, value: field.copyWith(formValue: value)));
                },
                items: field.meta.options
                    ?.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              CustomErrorWidget(field: field),
            ],
          ),
        );
      },
    );
  }
}
