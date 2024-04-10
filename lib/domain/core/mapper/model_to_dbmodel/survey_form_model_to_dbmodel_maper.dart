import 'package:polaris_meter/common_libs.dart';

class SurveyFormModelToDbObjectMapper
    extends Mapper<SurveyForm, SurveyFormDBModel> {
  @override
  SurveyFormDBModel call(SurveyForm input) {
    return SurveyFormDBModel(
      fields: input.fields
          .map((field) => FieldFormDBModel(
                formValue: field.formValue,
                componentId: field.componentId!,
                meta: MetaInfoDBModel(
                  componentInputType: field.meta.componentInputType ?? "",
                  mandatory: field.meta.mandatory,
                  label: field.meta.label,
                  savingFolder: field.meta.savingFolder,
                  options: field.meta.options,
                  noOfImagesToCapture: field.meta.noOfImagesToCapture,
                  imageUri: null,
                ),
                isRequired: field.isRequired,
                componentType: field.componentType,
              ))
          .toList(),
      title: input.title,
      isDataSync: input.isDataSync,
    );
  }
}
