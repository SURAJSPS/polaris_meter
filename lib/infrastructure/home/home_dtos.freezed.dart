// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SurveyFormDtos _$SurveyFormDtosFromJson(Map<String, dynamic> json) {
  return _SurveyFormDtos.fromJson(json);
}

/// @nodoc
mixin _$SurveyFormDtos {
  @JsonKey(name: "form_name")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "fields")
  List<FieldDtos> get fields => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyFormDtosCopyWith<SurveyFormDtos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyFormDtosCopyWith<$Res> {
  factory $SurveyFormDtosCopyWith(
          SurveyFormDtos value, $Res Function(SurveyFormDtos) then) =
      _$SurveyFormDtosCopyWithImpl<$Res, SurveyFormDtos>;
  @useResult
  $Res call(
      {@JsonKey(name: "form_name") String title,
      @JsonKey(name: "fields") List<FieldDtos> fields});
}

/// @nodoc
class _$SurveyFormDtosCopyWithImpl<$Res, $Val extends SurveyFormDtos>
    implements $SurveyFormDtosCopyWith<$Res> {
  _$SurveyFormDtosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? fields = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FieldDtos>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurveyFormDtosImplCopyWith<$Res>
    implements $SurveyFormDtosCopyWith<$Res> {
  factory _$$SurveyFormDtosImplCopyWith(_$SurveyFormDtosImpl value,
          $Res Function(_$SurveyFormDtosImpl) then) =
      __$$SurveyFormDtosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "form_name") String title,
      @JsonKey(name: "fields") List<FieldDtos> fields});
}

/// @nodoc
class __$$SurveyFormDtosImplCopyWithImpl<$Res>
    extends _$SurveyFormDtosCopyWithImpl<$Res, _$SurveyFormDtosImpl>
    implements _$$SurveyFormDtosImplCopyWith<$Res> {
  __$$SurveyFormDtosImplCopyWithImpl(
      _$SurveyFormDtosImpl _value, $Res Function(_$SurveyFormDtosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? fields = null,
  }) {
    return _then(_$SurveyFormDtosImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FieldDtos>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SurveyFormDtosImpl extends _SurveyFormDtos {
  _$SurveyFormDtosImpl(
      {@JsonKey(name: "form_name") required this.title,
      @JsonKey(name: "fields") required final List<FieldDtos> fields})
      : _fields = fields,
        super._();

  factory _$SurveyFormDtosImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurveyFormDtosImplFromJson(json);

  @override
  @JsonKey(name: "form_name")
  final String title;
  final List<FieldDtos> _fields;
  @override
  @JsonKey(name: "fields")
  List<FieldDtos> get fields {
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  @override
  String toString() {
    return 'SurveyFormDtos(title: $title, fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyFormDtosImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_fields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveyFormDtosImplCopyWith<_$SurveyFormDtosImpl> get copyWith =>
      __$$SurveyFormDtosImplCopyWithImpl<_$SurveyFormDtosImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurveyFormDtosImplToJson(
      this,
    );
  }
}

abstract class _SurveyFormDtos extends SurveyFormDtos {
  factory _SurveyFormDtos(
          {@JsonKey(name: "form_name") required final String title,
          @JsonKey(name: "fields") required final List<FieldDtos> fields}) =
      _$SurveyFormDtosImpl;
  _SurveyFormDtos._() : super._();

  factory _SurveyFormDtos.fromJson(Map<String, dynamic> json) =
      _$SurveyFormDtosImpl.fromJson;

  @override
  @JsonKey(name: "form_name")
  String get title;
  @override
  @JsonKey(name: "fields")
  List<FieldDtos> get fields;
  @override
  @JsonKey(ignore: true)
  _$$SurveyFormDtosImplCopyWith<_$SurveyFormDtosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FieldDtos _$FieldDtosFromJson(Map<String, dynamic> json) {
  return _FieldDtos.fromJson(json);
}

/// @nodoc
mixin _$FieldDtos {
  @JsonKey(name: "meta_info")
  MetaInfoDtos get meta => throw _privateConstructorUsedError;
  @JsonKey(name: "component_type")
  String get componentType => throw _privateConstructorUsedError;
  String? get formValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldDtosCopyWith<FieldDtos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldDtosCopyWith<$Res> {
  factory $FieldDtosCopyWith(FieldDtos value, $Res Function(FieldDtos) then) =
      _$FieldDtosCopyWithImpl<$Res, FieldDtos>;
  @useResult
  $Res call(
      {@JsonKey(name: "meta_info") MetaInfoDtos meta,
      @JsonKey(name: "component_type") String componentType,
      String? formValue});

  $MetaInfoDtosCopyWith<$Res> get meta;
}

/// @nodoc
class _$FieldDtosCopyWithImpl<$Res, $Val extends FieldDtos>
    implements $FieldDtosCopyWith<$Res> {
  _$FieldDtosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? componentType = null,
    Object? formValue = freezed,
  }) {
    return _then(_value.copyWith(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaInfoDtos,
      componentType: null == componentType
          ? _value.componentType
          : componentType // ignore: cast_nullable_to_non_nullable
              as String,
      formValue: freezed == formValue
          ? _value.formValue
          : formValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaInfoDtosCopyWith<$Res> get meta {
    return $MetaInfoDtosCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FieldDtosImplCopyWith<$Res>
    implements $FieldDtosCopyWith<$Res> {
  factory _$$FieldDtosImplCopyWith(
          _$FieldDtosImpl value, $Res Function(_$FieldDtosImpl) then) =
      __$$FieldDtosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "meta_info") MetaInfoDtos meta,
      @JsonKey(name: "component_type") String componentType,
      String? formValue});

  @override
  $MetaInfoDtosCopyWith<$Res> get meta;
}

/// @nodoc
class __$$FieldDtosImplCopyWithImpl<$Res>
    extends _$FieldDtosCopyWithImpl<$Res, _$FieldDtosImpl>
    implements _$$FieldDtosImplCopyWith<$Res> {
  __$$FieldDtosImplCopyWithImpl(
      _$FieldDtosImpl _value, $Res Function(_$FieldDtosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? componentType = null,
    Object? formValue = freezed,
  }) {
    return _then(_$FieldDtosImpl(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaInfoDtos,
      componentType: null == componentType
          ? _value.componentType
          : componentType // ignore: cast_nullable_to_non_nullable
              as String,
      formValue: freezed == formValue
          ? _value.formValue
          : formValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FieldDtosImpl extends _FieldDtos {
  _$FieldDtosImpl(
      {@JsonKey(name: "meta_info") required this.meta,
      @JsonKey(name: "component_type") required this.componentType,
      this.formValue})
      : super._();

  factory _$FieldDtosImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldDtosImplFromJson(json);

  @override
  @JsonKey(name: "meta_info")
  final MetaInfoDtos meta;
  @override
  @JsonKey(name: "component_type")
  final String componentType;
  @override
  final String? formValue;

  @override
  String toString() {
    return 'FieldDtos(meta: $meta, componentType: $componentType, formValue: $formValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldDtosImpl &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.componentType, componentType) ||
                other.componentType == componentType) &&
            (identical(other.formValue, formValue) ||
                other.formValue == formValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, meta, componentType, formValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldDtosImplCopyWith<_$FieldDtosImpl> get copyWith =>
      __$$FieldDtosImplCopyWithImpl<_$FieldDtosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldDtosImplToJson(
      this,
    );
  }
}

abstract class _FieldDtos extends FieldDtos {
  factory _FieldDtos(
      {@JsonKey(name: "meta_info") required final MetaInfoDtos meta,
      @JsonKey(name: "component_type") required final String componentType,
      final String? formValue}) = _$FieldDtosImpl;
  _FieldDtos._() : super._();

  factory _FieldDtos.fromJson(Map<String, dynamic> json) =
      _$FieldDtosImpl.fromJson;

  @override
  @JsonKey(name: "meta_info")
  MetaInfoDtos get meta;
  @override
  @JsonKey(name: "component_type")
  String get componentType;
  @override
  String? get formValue;
  @override
  @JsonKey(ignore: true)
  _$$FieldDtosImplCopyWith<_$FieldDtosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaInfoDtos _$MetaInfoDtosFromJson(Map<String, dynamic> json) {
  return _MetaInfoDtos.fromJson(json);
}

/// @nodoc
mixin _$MetaInfoDtos {
  @JsonKey(name: "label")
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: "component_input_type")
  String? get componentInputType => throw _privateConstructorUsedError;
  @JsonKey(name: "mandatory")
  String get mandatory => throw _privateConstructorUsedError;
  @JsonKey(name: "options")
  List<String>? get options => throw _privateConstructorUsedError;
  @JsonKey(name: "no_of_images_to_capture")
  int? get noOfImagesToCapture => throw _privateConstructorUsedError;
  @JsonKey(name: "saving_folder")
  String? get savingFolder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaInfoDtosCopyWith<MetaInfoDtos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaInfoDtosCopyWith<$Res> {
  factory $MetaInfoDtosCopyWith(
          MetaInfoDtos value, $Res Function(MetaInfoDtos) then) =
      _$MetaInfoDtosCopyWithImpl<$Res, MetaInfoDtos>;
  @useResult
  $Res call(
      {@JsonKey(name: "label") String label,
      @JsonKey(name: "component_input_type") String? componentInputType,
      @JsonKey(name: "mandatory") String mandatory,
      @JsonKey(name: "options") List<String>? options,
      @JsonKey(name: "no_of_images_to_capture") int? noOfImagesToCapture,
      @JsonKey(name: "saving_folder") String? savingFolder});
}

/// @nodoc
class _$MetaInfoDtosCopyWithImpl<$Res, $Val extends MetaInfoDtos>
    implements $MetaInfoDtosCopyWith<$Res> {
  _$MetaInfoDtosCopyWithImpl(this._value, this._then);

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
abstract class _$$MetaInfoDtosImplCopyWith<$Res>
    implements $MetaInfoDtosCopyWith<$Res> {
  factory _$$MetaInfoDtosImplCopyWith(
          _$MetaInfoDtosImpl value, $Res Function(_$MetaInfoDtosImpl) then) =
      __$$MetaInfoDtosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "label") String label,
      @JsonKey(name: "component_input_type") String? componentInputType,
      @JsonKey(name: "mandatory") String mandatory,
      @JsonKey(name: "options") List<String>? options,
      @JsonKey(name: "no_of_images_to_capture") int? noOfImagesToCapture,
      @JsonKey(name: "saving_folder") String? savingFolder});
}

/// @nodoc
class __$$MetaInfoDtosImplCopyWithImpl<$Res>
    extends _$MetaInfoDtosCopyWithImpl<$Res, _$MetaInfoDtosImpl>
    implements _$$MetaInfoDtosImplCopyWith<$Res> {
  __$$MetaInfoDtosImplCopyWithImpl(
      _$MetaInfoDtosImpl _value, $Res Function(_$MetaInfoDtosImpl) _then)
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
    return _then(_$MetaInfoDtosImpl(
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

@JsonSerializable(explicitToJson: true)
class _$MetaInfoDtosImpl extends _MetaInfoDtos {
  _$MetaInfoDtosImpl(
      {@JsonKey(name: "label") required this.label,
      @JsonKey(name: "component_input_type") this.componentInputType,
      @JsonKey(name: "mandatory") required this.mandatory,
      @JsonKey(name: "options") final List<String>? options,
      @JsonKey(name: "no_of_images_to_capture") this.noOfImagesToCapture,
      @JsonKey(name: "saving_folder") this.savingFolder})
      : _options = options,
        super._();

  factory _$MetaInfoDtosImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaInfoDtosImplFromJson(json);

  @override
  @JsonKey(name: "label")
  final String label;
  @override
  @JsonKey(name: "component_input_type")
  final String? componentInputType;
  @override
  @JsonKey(name: "mandatory")
  final String mandatory;
  final List<String>? _options;
  @override
  @JsonKey(name: "options")
  List<String>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "no_of_images_to_capture")
  final int? noOfImagesToCapture;
  @override
  @JsonKey(name: "saving_folder")
  final String? savingFolder;

  @override
  String toString() {
    return 'MetaInfoDtos(label: $label, componentInputType: $componentInputType, mandatory: $mandatory, options: $options, noOfImagesToCapture: $noOfImagesToCapture, savingFolder: $savingFolder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaInfoDtosImpl &&
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

  @JsonKey(ignore: true)
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
  _$$MetaInfoDtosImplCopyWith<_$MetaInfoDtosImpl> get copyWith =>
      __$$MetaInfoDtosImplCopyWithImpl<_$MetaInfoDtosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaInfoDtosImplToJson(
      this,
    );
  }
}

abstract class _MetaInfoDtos extends MetaInfoDtos {
  factory _MetaInfoDtos(
      {@JsonKey(name: "label") required final String label,
      @JsonKey(name: "component_input_type") final String? componentInputType,
      @JsonKey(name: "mandatory") required final String mandatory,
      @JsonKey(name: "options") final List<String>? options,
      @JsonKey(name: "no_of_images_to_capture") final int? noOfImagesToCapture,
      @JsonKey(name: "saving_folder")
      final String? savingFolder}) = _$MetaInfoDtosImpl;
  _MetaInfoDtos._() : super._();

  factory _MetaInfoDtos.fromJson(Map<String, dynamic> json) =
      _$MetaInfoDtosImpl.fromJson;

  @override
  @JsonKey(name: "label")
  String get label;
  @override
  @JsonKey(name: "component_input_type")
  String? get componentInputType;
  @override
  @JsonKey(name: "mandatory")
  String get mandatory;
  @override
  @JsonKey(name: "options")
  List<String>? get options;
  @override
  @JsonKey(name: "no_of_images_to_capture")
  int? get noOfImagesToCapture;
  @override
  @JsonKey(name: "saving_folder")
  String? get savingFolder;
  @override
  @JsonKey(ignore: true)
  _$$MetaInfoDtosImplCopyWith<_$MetaInfoDtosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
