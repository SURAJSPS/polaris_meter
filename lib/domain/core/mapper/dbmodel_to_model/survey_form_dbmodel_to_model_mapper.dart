import 'package:polaris_meter/common_libs.dart';

class SurveyFormDBModelToModelObjectMapper
    extends Mapper<SurveyFormDBModel, SurveyForm> {
  @override
  SurveyForm call(SurveyFormDBModel input) {
    return SurveyForm(
      isDataSync: input.isDataSync,
      title: input.title,
      fields: input.fields
          .map((field) => Field(
                componentType: field.componentType,
                isRequired: field.isRequired,
                meta: MetaInfo(
                  label: field.meta.label,
                  mandatory: field.meta.mandatory,
                  noOfImagesToCapture: field.meta.noOfImagesToCapture,
                  options: field.meta.options,
                  savingFolder: field.meta.savingFolder,
                  componentInputType: field.meta.componentInputType,
                ),
                componentId: field.componentId,
                formValue: field.formValue,
              ))
          .toList(),
    );
  }
}
