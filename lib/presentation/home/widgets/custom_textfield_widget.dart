import '../../../common_libs.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final Field field;

  const CustomTextFieldWidget({super.key, required this.field});

  @override
  Widget build(BuildContext context) {
    int index = field.componentId!;
    return WidgetDecoration(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelWidget(field),
          TextFormField(
            initialValue: context
                .read<HomeBloc>()
                .state
                .formDate
                ?.fields[index]
                .formValue,
            keyboardType: AppUtil.keyType(field.meta.componentInputType),
            onChanged: (value) {
              context.read<HomeBloc>().add(HomeEvent.getUserInput(
                  id: index, value: field.copyWith(formValue: value)));
            },
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: field.meta.label.toString()),
          ),
          CustomErrorWidget(field: field),
        ],
      ),
    );
  }
}

class WidgetDecoration extends StatelessWidget {
  final Widget child;
  const WidgetDecoration({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: child,
      ),
    );
  }
}
