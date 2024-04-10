import '../../../common_libs.dart';

class LabelWidget extends StatelessWidget {
  final Field field;
  const LabelWidget(this.field, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: RichText(
          maxLines: 1,
          text: TextSpan(
            text: field.meta.label,
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              if (field.isRequired)
                const TextSpan(
                    text: ' *',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red)),
            ],
          ),
        ));
  }
}
