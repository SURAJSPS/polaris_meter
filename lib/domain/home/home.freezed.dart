// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SurveyForm {
  String get title => throw _privateConstructorUsedError;
  bool get isDataSync => throw _privateConstructorUsedError;
  List<Field> get fields => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurveyFormCopyWith<SurveyForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyFormCopyWith<$Res> {
  factory $SurveyFormCopyWith(
          SurveyForm value, $Res Function(SurveyForm) then) =
      _$SurveyFormCopyWithImpl<$Res, SurveyForm>;
  @useResult
  $Res call({String title, bool isDataSync, List<Field> fields});
}

/// @nodoc
class _$SurveyFormCopyWithImpl<$Res, $Val extends SurveyForm>
    implements $SurveyFormCopyWith<$Res> {
  _$SurveyFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? isDataSync = null,
    Object? fields = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isDataSync: null == isDataSync
          ? _value.isDataSync
          : isDataSync // ignore: cast_nullable_to_non_nullable
              as bool,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Field>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurveyFormImplCopyWith<$Res>
    implements $SurveyFormCopyWith<$Res> {
  factory _$$SurveyFormImplCopyWith(
          _$SurveyFormImpl value, $Res Function(_$SurveyFormImpl) then) =
      __$$SurveyFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, bool isDataSync, List<Field> fields});
}

/// @nodoc
class __$$SurveyFormImplCopyWithImpl<$Res>
    extends _$SurveyFormCopyWithImpl<$Res, _$SurveyFormImpl>
    implements _$$SurveyFormImplCopyWith<$Res> {
  __$$SurveyFormImplCopyWithImpl(
      _$SurveyFormImpl _value, $Res Function(_$SurveyFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? isDataSync = null,
    Object? fields = null,
  }) {
    return _then(_$SurveyFormImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isDataSync: null == isDataSync
          ? _value.isDataSync
          : isDataSync // ignore: cast_nullable_to_non_nullable
              as bool,
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Field>,
    ));
  }
}

/// @nodoc

class _$SurveyFormImpl extends _SurveyForm {
  _$SurveyFormImpl(
      {required this.title,
      required this.isDataSync,
      required final List<Field> fields})
      : _fields = fields,
        super._();

  @override
  final String title;
  @override
  final bool isDataSync;
  final List<Field> _fields;
  @override
  List<Field> get fields {
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  @override
  String toString() {
    return 'SurveyForm(title: $title, isDataSync: $isDataSync, fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyFormImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isDataSync, isDataSync) ||
                other.isDataSync == isDataSync) &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, isDataSync,
      const DeepCollectionEquality().hash(_fields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveyFormImplCopyWith<_$SurveyFormImpl> get copyWith =>
      __$$SurveyFormImplCopyWithImpl<_$SurveyFormImpl>(this, _$identity);
}

abstract class _SurveyForm extends SurveyForm {
  factory _SurveyForm(
      {required final String title,
      required final bool isDataSync,
      required final List<Field> fields}) = _$SurveyFormImpl;
  _SurveyForm._() : super._();

  @override
  String get title;
  @override
  bool get isDataSync;
  @override
  List<Field> get fields;
  @override
  @JsonKey(ignore: true)
  _$$SurveyFormImplCopyWith<_$SurveyFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Field {
  int? get componentId => throw _privateConstructorUsedError;
  MetaInfo get meta => throw _privateConstructorUsedError;
  String get componentType => throw _privateConstructorUsedError;
  String? get formValue => throw _privateConstructorUsedError;
  bool get isRequired => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FieldCopyWith<Field> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldCopyWith<$Res> {
  factory $FieldCopyWith(Field value, $Res Function(Field) then) =
      _$FieldCopyWithImpl<$Res, Field>;
  @useResult
  $Res call(
      {int? componentId,
      MetaInfo meta,
      String componentType,
      String? formValue,
      bool isRequired});

  $MetaInfoCopyWith<$Res> get meta;
}

/// @nodoc
class _$FieldCopyWithImpl<$Res, $Val extends Field>
    implements $FieldCopyWith<$Res> {
  _$FieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? componentId = freezed,
    Object? meta = null,
    Object? componentType = null,
    Object? formValue = freezed,
    Object? isRequired = null,
  }) {
    return _then(_value.copyWith(
      componentId: freezed == componentId
          ? _value.componentId
          : componentId // ignore: cast_nullable_to_non_nullable
              as int?,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaInfo,
      componentType: null == componentType
          ? _value.componentType
          : componentType // ignore: cast_nullable_to_non_nullable
              as String,
      formValue: freezed == formValue
          ? _value.formValue
          : formValue // ignore: cast_nullable_to_non_nullable
              as String?,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaInfoCopyWith<$Res> get meta {
    return $MetaInfoCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FieldImplCopyWith<$Res> implements $FieldCopyWith<$Res> {
  factory _$$FieldImplCopyWith(
          _$FieldImpl value, $Res Function(_$FieldImpl) then) =
      __$$FieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? componentId,
      MetaInfo meta,
      String componentType,
      String? formValue,
      bool isRequired});

  @override
  $MetaInfoCopyWith<$Res> get meta;
}

/// @nodoc
class __$$FieldImplCopyWithImpl<$Res>
    extends _$FieldCopyWithImpl<$Res, _$FieldImpl>
    implements _$$FieldImplCopyWith<$Res> {
  __$$FieldImplCopyWithImpl(
      _$FieldImpl _value, $Res Function(_$FieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? componentId = freezed,
    Object? meta = null,
    Object? componentType = null,
    Object? formValue = freezed,
    Object? isRequired = null,
  }) {
    return _then(_$FieldImpl(
      componentId: freezed == componentId
          ? _value.componentId
          : componentId // ignore: cast_nullable_to_non_nullable
              as int?,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaInfo,
      componentType: null == componentType
          ? _value.componentType
          : componentType // ignore: cast_nullable_to_non_nullable
              as String,
      formValue: freezed == formValue
          ? _value.formValue
          : formValue // ignore: cast_nullable_to_non_nullable
              as String?,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FieldImpl extends _Field {
  _$FieldImpl(
      {this.componentId,
      required this.meta,
      required this.componentType,
      this.formValue,
      required this.isRequired})
      : super._();

  @override
  final int? componentId;
  @override
  final MetaInfo meta;
  @override
  final String componentType;
  @override
  final String? formValue;
  @override
  final bool isRequired;

  @override
  String toString() {
    return 'Field(componentId: $componentId, meta: $meta, componentType: $componentType, formValue: $formValue, isRequired: $isRequired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldImpl &&
            (identical(other.componentId, componentId) ||
                other.componentId == componentId) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.componentType, componentType) ||
                other.componentType == componentType) &&
            (identical(other.formValue, formValue) ||
                other.formValue == formValue) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, componentId, meta, componentType, formValue, isRequired);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldImplCopyWith<_$FieldImpl> get copyWith =>
      __$$FieldImplCopyWithImpl<_$FieldImpl>(this, _$identity);
}

abstract class _Field extends Field {
  factory _Field(
      {final int? componentId,
      required final MetaInfo meta,
      required final String componentType,
      final String? formValue,
      required final bool isRequired}) = _$FieldImpl;
  _Field._() : super._();

  @override
  int? get componentId;
  @override
  MetaInfo get meta;
  @override
  String get componentType;
  @override
  String? get formValue;
  @override
  bool get isRequired;
  @override
  @JsonKey(ignore: true)
  _$$FieldImplCopyWith<_$FieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MetaInfo {
  String get label => throw _privateConstructorUsedError;
  String? get componentInputType => throw _privateConstructorUsedError;
  String get mandatory => throw _privateConstructorUsedError;
  List<String>? get options => throw _privateConstructorUsedError;
  int? get noOfImagesToCapture => throw _privateConstructorUsedError;
  String? get savingFolder => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MetaInfoCopyWith<MetaInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaInfoCopyWith<$Res> {
  factory $MetaInfoCopyWith(MetaInfo value, $Res Function(MetaInfo) then) =
      _$MetaInfoCopyWithImpl<$Res, MetaInfo>;
  @useResult
  $Res call(
      {String label,
      String? componentInputType,
      String mandatory,
      List<String>? options,
      int? noOfImagesToCapture,
      String? savingFolder});
}

/// @nodoc
class _$MetaInfoCopyWithImpl<$Res, $Val extends MetaInfo>
    implements $MetaInfoCopyWith<$Res> {
  _$MetaInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? componentInputType = freezed,
    Object? mandatory = null,
    Object? options = freezed,
    Object? noOfImagesToCapture = freezed,
    Object? savingFolder = freezed,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      componentInputType: freezed == componentInputType
          ? _value.componentInputType
          : componentInputType // ignore: cast_nullable_to_non_nullable
              as String?,
      mandatory: null == mandatory
          ? _value.mandatory
          : mandatory // ignore: cast_nullable_to_non_nullable
              as String,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      noOfImagesToCapture: freezed == noOfImagesToCapture
          ? _value.noOfImagesToCapture
          : noOfImagesToCapture // ignore: cast_nullable_to_non_nullable
              as int?,
      savingFolder: freezed == savingFolder
          ? _value.savingFolder
          : savingFolder // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaInfoImplCopyWith<$Res>
    implements $MetaInfoCopyWith<$Res> {
  factory _$$MetaInfoImplCopyWith(
          _$MetaInfoImpl value, $Res Function(_$MetaInfoImpl) then) =
      __$$MetaInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String label,
      String? componentInputType,
      String mandatory,
      List<String>? options,
      int? noOfImagesToCapture,
      String? savingFolder});
}

/// @nodoc
class __$$MetaInfoImplCopyWithImpl<$Res>
    extends _$MetaInfoCopyWithImpl<$Res, _$MetaInfoImpl>
    implements _$$MetaInfoImplCopyWith<$Res> {
  __$$MetaInfoImplCopyWithImpl(
      _$MetaInfoImpl _value, $Res Function(_$MetaInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? componentInputType = freezed,
    Object? mandatory = null,
    Object? options = freezed,
    Object? noOfImagesToCapture = freezed,
    Object? savingFolder = freezed,
  }) {
    return _then(_$MetaInfoImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      componentInputType: freezed == componentInputType
          ? _value.componentInputType
          : componentInputType // ignore: cast_nullable_to_non_nullable
              as String?,
      mandatory: null == mandatory
          ? _value.mandatory
          : mandatory // ignore: cast_nullable_to_non_nullable
              as String,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      noOfImagesToCapture: freezed == noOfImagesToCapture
          ? _value.noOfImagesToCapture
          : noOfImagesToCapture // ignore: cast_nullable_to_non_nullable
              as int?,
      savingFolder: freezed == savingFolder
          ? _value.savingFolder
          : savingFolder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MetaInfoImpl extends _MetaInfo {
  _$MetaInfoImpl(
      {required this.label,
      this.componentInputType,
      required this.mandatory,
      final List<String>? options,
      this.noOfImagesToCapture,
      this.savingFolder})
      : _options = options,
        super._();

  @override
  final String label;
  @override
  final String? componentInputType;
  @override
  final String mandatory;
  final List<String>? _options;
  @override
  List<String>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? noOfImagesToCapture;
  @override
  final String? savingFolder;

  @override
  String toString() {
    return 'MetaInfo(label: $label, componentInputType: $componentInputType, mandatory: $mandatory, options: $options, noOfImagesToCapture: $noOfImagesToCapture, savingFolder: $savingFolder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaInfoImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.componentInputType, componentInputType) ||
                other.componentInputType == componentInputType) &&
            (identical(other.mandatory, mandatory) ||
                other.mandatory == mandatory) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.noOfImagesToCapture, noOfImagesToCapture) ||
                other.noOfImagesToCapture == noOfImagesToCapture) &&
            (identical(other.savingFolder, savingFolder) ||
                other.savingFolder == savingFolder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      label,
      componentInputType,
      mandatory,
      const DeepCollectionEquality().hash(_options),
      noOfImagesToCapture,
      savingFolder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaInfoImplCopyWith<_$MetaInfoImpl> get copyWith =>
      __$$MetaInfoImplCopyWithImpl<_$MetaInfoImpl>(this, _$identity);
}

abstract class _MetaInfo extends MetaInfo {
  factory _MetaInfo(
      {required final String label,
      final String? componentInputType,
      required final String mandatory,
      final List<String>? options,
      final int? noOfImagesToCapture,
      final String? savingFolder}) = _$MetaInfoImpl;
  _MetaInfo._() : super._();

  @override
  String get label;
  @override
  String? get componentInputType;
  @override
  String get mandatory;
  @override
  List<String>? get options;
  @override
  int? get noOfImagesToCapture;
  @override
  String? get savingFolder;
  @override
  @JsonKey(ignore: true)
  _$$MetaInfoImplCopyWith<_$MetaInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
