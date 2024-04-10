import 'package:polaris_meter/common_libs.dart';

class CustomImagePickerWidget extends StatelessWidget {
  final Field field;

  const CustomImagePickerWidget({super.key, required this.field});

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
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: state.formDate?.fields[index].formValue != null
                    ? Container(
                        color: Colors.blueGrey,
                        height: 200,
                        child: Image.file(
                            File(state.formDate!.fields[index].formValue!)),
                      )
                    : const Text("Please Select Image"),
                trailing: IconButton(
                  icon: const Icon(Icons.image_outlined),
                  onPressed: () async {
                    final value = await pickImage();
                    if (value != null) {
                      sl<HomeBloc>().add(HomeEvent.getUserInput(
                          id: index,
                          value: field.copyWith(formValue: value.path)));
                    }
                  },
                ),
              ),
              CustomErrorWidget(field: field),
            ],
          ),
        );
      },
    );
  }

  Future<XFile?> pickImage() async {
    final imagePicker = ImagePicker();
    final XFile? pickedImage = await imagePicker.pickImage(
        source: Platform.isIOS ? ImageSource.gallery : ImageSource.camera);

    if (pickedImage != null) {
      return pickedImage;
    } else {
      return null;
    }
  }
}
