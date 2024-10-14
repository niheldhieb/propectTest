// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NetworkResponse<BaseModel> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseModel data) ok,
    required TResult Function(String message) invalidParameters,
    required TResult Function(String message) noAuth,
    required TResult Function(String message) noAccess,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notFound,
    required TResult Function(String message) conflict,
    required TResult Function(String message) noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BaseModel data)? ok,
    TResult? Function(String message)? invalidParameters,
    TResult? Function(String message)? noAuth,
    TResult? Function(String message)? noAccess,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? conflict,
    TResult? Function(String message)? noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseModel data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<BaseModel> value) ok,
    required TResult Function(InvalidParameters<BaseModel> value)
        invalidParameters,
    required TResult Function(NoAuth<BaseModel> value) noAuth,
    required TResult Function(NoAccess<BaseModel> value) noAccess,
    required TResult Function(BadRequest<BaseModel> value) badRequest,
    required TResult Function(NotFound<BaseModel> value) notFound,
    required TResult Function(Conflict<BaseModel> value) conflict,
    required TResult Function(NoData<BaseModel> value) noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<BaseModel> value)? ok,
    TResult? Function(InvalidParameters<BaseModel> value)? invalidParameters,
    TResult? Function(NoAuth<BaseModel> value)? noAuth,
    TResult? Function(NoAccess<BaseModel> value)? noAccess,
    TResult? Function(BadRequest<BaseModel> value)? badRequest,
    TResult? Function(NotFound<BaseModel> value)? notFound,
    TResult? Function(Conflict<BaseModel> value)? conflict,
    TResult? Function(NoData<BaseModel> value)? noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<BaseModel> value)? ok,
    TResult Function(InvalidParameters<BaseModel> value)? invalidParameters,
    TResult Function(NoAuth<BaseModel> value)? noAuth,
    TResult Function(NoAccess<BaseModel> value)? noAccess,
    TResult Function(BadRequest<BaseModel> value)? badRequest,
    TResult Function(NotFound<BaseModel> value)? notFound,
    TResult Function(Conflict<BaseModel> value)? conflict,
    TResult Function(NoData<BaseModel> value)? noData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkResponseCopyWith<BaseModel, $Res> {
  factory $NetworkResponseCopyWith(NetworkResponse<BaseModel> value,
          $Res Function(NetworkResponse<BaseModel>) then) =
      _$NetworkResponseCopyWithImpl<BaseModel, $Res,
          NetworkResponse<BaseModel>>;
}

/// @nodoc
class _$NetworkResponseCopyWithImpl<BaseModel, $Res,
        $Val extends NetworkResponse<BaseModel>>
    implements $NetworkResponseCopyWith<BaseModel, $Res> {
  _$NetworkResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OkImplCopyWith<BaseModel, $Res> {
  factory _$$OkImplCopyWith(
          _$OkImpl<BaseModel> value, $Res Function(_$OkImpl<BaseModel>) then) =
      __$$OkImplCopyWithImpl<BaseModel, $Res>;
  @useResult
  $Res call({BaseModel data});
}

/// @nodoc
class __$$OkImplCopyWithImpl<BaseModel, $Res>
    extends _$NetworkResponseCopyWithImpl<BaseModel, $Res, _$OkImpl<BaseModel>>
    implements _$$OkImplCopyWith<BaseModel, $Res> {
  __$$OkImplCopyWithImpl(
      _$OkImpl<BaseModel> _value, $Res Function(_$OkImpl<BaseModel>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$OkImpl<BaseModel>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BaseModel,
    ));
  }
}

/// @nodoc

class _$OkImpl<BaseModel> implements Ok<BaseModel> {
  const _$OkImpl(this.data);

  @override
  final BaseModel data;

  @override
  String toString() {
    return 'NetworkResponse<$BaseModel>.ok(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OkImpl<BaseModel> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OkImplCopyWith<BaseModel, _$OkImpl<BaseModel>> get copyWith =>
      __$$OkImplCopyWithImpl<BaseModel, _$OkImpl<BaseModel>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseModel data) ok,
    required TResult Function(String message) invalidParameters,
    required TResult Function(String message) noAuth,
    required TResult Function(String message) noAccess,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notFound,
    required TResult Function(String message) conflict,
    required TResult Function(String message) noData,
  }) {
    return ok(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BaseModel data)? ok,
    TResult? Function(String message)? invalidParameters,
    TResult? Function(String message)? noAuth,
    TResult? Function(String message)? noAccess,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? conflict,
    TResult? Function(String message)? noData,
  }) {
    return ok?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseModel data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<BaseModel> value) ok,
    required TResult Function(InvalidParameters<BaseModel> value)
        invalidParameters,
    required TResult Function(NoAuth<BaseModel> value) noAuth,
    required TResult Function(NoAccess<BaseModel> value) noAccess,
    required TResult Function(BadRequest<BaseModel> value) badRequest,
    required TResult Function(NotFound<BaseModel> value) notFound,
    required TResult Function(Conflict<BaseModel> value) conflict,
    required TResult Function(NoData<BaseModel> value) noData,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<BaseModel> value)? ok,
    TResult? Function(InvalidParameters<BaseModel> value)? invalidParameters,
    TResult? Function(NoAuth<BaseModel> value)? noAuth,
    TResult? Function(NoAccess<BaseModel> value)? noAccess,
    TResult? Function(BadRequest<BaseModel> value)? badRequest,
    TResult? Function(NotFound<BaseModel> value)? notFound,
    TResult? Function(Conflict<BaseModel> value)? conflict,
    TResult? Function(NoData<BaseModel> value)? noData,
  }) {
    return ok?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<BaseModel> value)? ok,
    TResult Function(InvalidParameters<BaseModel> value)? invalidParameters,
    TResult Function(NoAuth<BaseModel> value)? noAuth,
    TResult Function(NoAccess<BaseModel> value)? noAccess,
    TResult Function(BadRequest<BaseModel> value)? badRequest,
    TResult Function(NotFound<BaseModel> value)? notFound,
    TResult Function(Conflict<BaseModel> value)? conflict,
    TResult Function(NoData<BaseModel> value)? noData,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class Ok<BaseModel> implements NetworkResponse<BaseModel> {
  const factory Ok(final BaseModel data) = _$OkImpl<BaseModel>;

  BaseModel get data;
  @JsonKey(ignore: true)
  _$$OkImplCopyWith<BaseModel, _$OkImpl<BaseModel>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidParametersImplCopyWith<BaseModel, $Res> {
  factory _$$InvalidParametersImplCopyWith(
          _$InvalidParametersImpl<BaseModel> value,
          $Res Function(_$InvalidParametersImpl<BaseModel>) then) =
      __$$InvalidParametersImplCopyWithImpl<BaseModel, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InvalidParametersImplCopyWithImpl<BaseModel, $Res>
    extends _$NetworkResponseCopyWithImpl<BaseModel, $Res,
        _$InvalidParametersImpl<BaseModel>>
    implements _$$InvalidParametersImplCopyWith<BaseModel, $Res> {
  __$$InvalidParametersImplCopyWithImpl(
      _$InvalidParametersImpl<BaseModel> _value,
      $Res Function(_$InvalidParametersImpl<BaseModel>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InvalidParametersImpl<BaseModel>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidParametersImpl<BaseModel>
    implements InvalidParameters<BaseModel> {
  const _$InvalidParametersImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse<$BaseModel>.invalidParameters(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidParametersImpl<BaseModel> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidParametersImplCopyWith<BaseModel,
          _$InvalidParametersImpl<BaseModel>>
      get copyWith => __$$InvalidParametersImplCopyWithImpl<BaseModel,
          _$InvalidParametersImpl<BaseModel>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseModel data) ok,
    required TResult Function(String message) invalidParameters,
    required TResult Function(String message) noAuth,
    required TResult Function(String message) noAccess,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notFound,
    required TResult Function(String message) conflict,
    required TResult Function(String message) noData,
  }) {
    return invalidParameters(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BaseModel data)? ok,
    TResult? Function(String message)? invalidParameters,
    TResult? Function(String message)? noAuth,
    TResult? Function(String message)? noAccess,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? conflict,
    TResult? Function(String message)? noData,
  }) {
    return invalidParameters?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseModel data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    required TResult orElse(),
  }) {
    if (invalidParameters != null) {
      return invalidParameters(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<BaseModel> value) ok,
    required TResult Function(InvalidParameters<BaseModel> value)
        invalidParameters,
    required TResult Function(NoAuth<BaseModel> value) noAuth,
    required TResult Function(NoAccess<BaseModel> value) noAccess,
    required TResult Function(BadRequest<BaseModel> value) badRequest,
    required TResult Function(NotFound<BaseModel> value) notFound,
    required TResult Function(Conflict<BaseModel> value) conflict,
    required TResult Function(NoData<BaseModel> value) noData,
  }) {
    return invalidParameters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<BaseModel> value)? ok,
    TResult? Function(InvalidParameters<BaseModel> value)? invalidParameters,
    TResult? Function(NoAuth<BaseModel> value)? noAuth,
    TResult? Function(NoAccess<BaseModel> value)? noAccess,
    TResult? Function(BadRequest<BaseModel> value)? badRequest,
    TResult? Function(NotFound<BaseModel> value)? notFound,
    TResult? Function(Conflict<BaseModel> value)? conflict,
    TResult? Function(NoData<BaseModel> value)? noData,
  }) {
    return invalidParameters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<BaseModel> value)? ok,
    TResult Function(InvalidParameters<BaseModel> value)? invalidParameters,
    TResult Function(NoAuth<BaseModel> value)? noAuth,
    TResult Function(NoAccess<BaseModel> value)? noAccess,
    TResult Function(BadRequest<BaseModel> value)? badRequest,
    TResult Function(NotFound<BaseModel> value)? notFound,
    TResult Function(Conflict<BaseModel> value)? conflict,
    TResult Function(NoData<BaseModel> value)? noData,
    required TResult orElse(),
  }) {
    if (invalidParameters != null) {
      return invalidParameters(this);
    }
    return orElse();
  }
}

abstract class InvalidParameters<BaseModel>
    implements NetworkResponse<BaseModel> {
  const factory InvalidParameters(final String message) =
      _$InvalidParametersImpl<BaseModel>;

  String get message;
  @JsonKey(ignore: true)
  _$$InvalidParametersImplCopyWith<BaseModel,
          _$InvalidParametersImpl<BaseModel>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoAuthImplCopyWith<BaseModel, $Res> {
  factory _$$NoAuthImplCopyWith(_$NoAuthImpl<BaseModel> value,
          $Res Function(_$NoAuthImpl<BaseModel>) then) =
      __$$NoAuthImplCopyWithImpl<BaseModel, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NoAuthImplCopyWithImpl<BaseModel, $Res>
    extends _$NetworkResponseCopyWithImpl<BaseModel, $Res,
        _$NoAuthImpl<BaseModel>>
    implements _$$NoAuthImplCopyWith<BaseModel, $Res> {
  __$$NoAuthImplCopyWithImpl(_$NoAuthImpl<BaseModel> _value,
      $Res Function(_$NoAuthImpl<BaseModel>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NoAuthImpl<BaseModel>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoAuthImpl<BaseModel> implements NoAuth<BaseModel> {
  const _$NoAuthImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse<$BaseModel>.noAuth(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoAuthImpl<BaseModel> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoAuthImplCopyWith<BaseModel, _$NoAuthImpl<BaseModel>> get copyWith =>
      __$$NoAuthImplCopyWithImpl<BaseModel, _$NoAuthImpl<BaseModel>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseModel data) ok,
    required TResult Function(String message) invalidParameters,
    required TResult Function(String message) noAuth,
    required TResult Function(String message) noAccess,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notFound,
    required TResult Function(String message) conflict,
    required TResult Function(String message) noData,
  }) {
    return noAuth(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BaseModel data)? ok,
    TResult? Function(String message)? invalidParameters,
    TResult? Function(String message)? noAuth,
    TResult? Function(String message)? noAccess,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? conflict,
    TResult? Function(String message)? noData,
  }) {
    return noAuth?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseModel data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    required TResult orElse(),
  }) {
    if (noAuth != null) {
      return noAuth(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<BaseModel> value) ok,
    required TResult Function(InvalidParameters<BaseModel> value)
        invalidParameters,
    required TResult Function(NoAuth<BaseModel> value) noAuth,
    required TResult Function(NoAccess<BaseModel> value) noAccess,
    required TResult Function(BadRequest<BaseModel> value) badRequest,
    required TResult Function(NotFound<BaseModel> value) notFound,
    required TResult Function(Conflict<BaseModel> value) conflict,
    required TResult Function(NoData<BaseModel> value) noData,
  }) {
    return noAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<BaseModel> value)? ok,
    TResult? Function(InvalidParameters<BaseModel> value)? invalidParameters,
    TResult? Function(NoAuth<BaseModel> value)? noAuth,
    TResult? Function(NoAccess<BaseModel> value)? noAccess,
    TResult? Function(BadRequest<BaseModel> value)? badRequest,
    TResult? Function(NotFound<BaseModel> value)? notFound,
    TResult? Function(Conflict<BaseModel> value)? conflict,
    TResult? Function(NoData<BaseModel> value)? noData,
  }) {
    return noAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<BaseModel> value)? ok,
    TResult Function(InvalidParameters<BaseModel> value)? invalidParameters,
    TResult Function(NoAuth<BaseModel> value)? noAuth,
    TResult Function(NoAccess<BaseModel> value)? noAccess,
    TResult Function(BadRequest<BaseModel> value)? badRequest,
    TResult Function(NotFound<BaseModel> value)? notFound,
    TResult Function(Conflict<BaseModel> value)? conflict,
    TResult Function(NoData<BaseModel> value)? noData,
    required TResult orElse(),
  }) {
    if (noAuth != null) {
      return noAuth(this);
    }
    return orElse();
  }
}

abstract class NoAuth<BaseModel> implements NetworkResponse<BaseModel> {
  const factory NoAuth(final String message) = _$NoAuthImpl<BaseModel>;

  String get message;
  @JsonKey(ignore: true)
  _$$NoAuthImplCopyWith<BaseModel, _$NoAuthImpl<BaseModel>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoAccessImplCopyWith<BaseModel, $Res> {
  factory _$$NoAccessImplCopyWith(_$NoAccessImpl<BaseModel> value,
          $Res Function(_$NoAccessImpl<BaseModel>) then) =
      __$$NoAccessImplCopyWithImpl<BaseModel, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NoAccessImplCopyWithImpl<BaseModel, $Res>
    extends _$NetworkResponseCopyWithImpl<BaseModel, $Res,
        _$NoAccessImpl<BaseModel>>
    implements _$$NoAccessImplCopyWith<BaseModel, $Res> {
  __$$NoAccessImplCopyWithImpl(_$NoAccessImpl<BaseModel> _value,
      $Res Function(_$NoAccessImpl<BaseModel>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NoAccessImpl<BaseModel>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoAccessImpl<BaseModel> implements NoAccess<BaseModel> {
  const _$NoAccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse<$BaseModel>.noAccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoAccessImpl<BaseModel> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoAccessImplCopyWith<BaseModel, _$NoAccessImpl<BaseModel>> get copyWith =>
      __$$NoAccessImplCopyWithImpl<BaseModel, _$NoAccessImpl<BaseModel>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseModel data) ok,
    required TResult Function(String message) invalidParameters,
    required TResult Function(String message) noAuth,
    required TResult Function(String message) noAccess,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notFound,
    required TResult Function(String message) conflict,
    required TResult Function(String message) noData,
  }) {
    return noAccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BaseModel data)? ok,
    TResult? Function(String message)? invalidParameters,
    TResult? Function(String message)? noAuth,
    TResult? Function(String message)? noAccess,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? conflict,
    TResult? Function(String message)? noData,
  }) {
    return noAccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseModel data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    required TResult orElse(),
  }) {
    if (noAccess != null) {
      return noAccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<BaseModel> value) ok,
    required TResult Function(InvalidParameters<BaseModel> value)
        invalidParameters,
    required TResult Function(NoAuth<BaseModel> value) noAuth,
    required TResult Function(NoAccess<BaseModel> value) noAccess,
    required TResult Function(BadRequest<BaseModel> value) badRequest,
    required TResult Function(NotFound<BaseModel> value) notFound,
    required TResult Function(Conflict<BaseModel> value) conflict,
    required TResult Function(NoData<BaseModel> value) noData,
  }) {
    return noAccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<BaseModel> value)? ok,
    TResult? Function(InvalidParameters<BaseModel> value)? invalidParameters,
    TResult? Function(NoAuth<BaseModel> value)? noAuth,
    TResult? Function(NoAccess<BaseModel> value)? noAccess,
    TResult? Function(BadRequest<BaseModel> value)? badRequest,
    TResult? Function(NotFound<BaseModel> value)? notFound,
    TResult? Function(Conflict<BaseModel> value)? conflict,
    TResult? Function(NoData<BaseModel> value)? noData,
  }) {
    return noAccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<BaseModel> value)? ok,
    TResult Function(InvalidParameters<BaseModel> value)? invalidParameters,
    TResult Function(NoAuth<BaseModel> value)? noAuth,
    TResult Function(NoAccess<BaseModel> value)? noAccess,
    TResult Function(BadRequest<BaseModel> value)? badRequest,
    TResult Function(NotFound<BaseModel> value)? notFound,
    TResult Function(Conflict<BaseModel> value)? conflict,
    TResult Function(NoData<BaseModel> value)? noData,
    required TResult orElse(),
  }) {
    if (noAccess != null) {
      return noAccess(this);
    }
    return orElse();
  }
}

abstract class NoAccess<BaseModel> implements NetworkResponse<BaseModel> {
  const factory NoAccess(final String message) = _$NoAccessImpl<BaseModel>;

  String get message;
  @JsonKey(ignore: true)
  _$$NoAccessImplCopyWith<BaseModel, _$NoAccessImpl<BaseModel>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadRequestImplCopyWith<BaseModel, $Res> {
  factory _$$BadRequestImplCopyWith(_$BadRequestImpl<BaseModel> value,
          $Res Function(_$BadRequestImpl<BaseModel>) then) =
      __$$BadRequestImplCopyWithImpl<BaseModel, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BadRequestImplCopyWithImpl<BaseModel, $Res>
    extends _$NetworkResponseCopyWithImpl<BaseModel, $Res,
        _$BadRequestImpl<BaseModel>>
    implements _$$BadRequestImplCopyWith<BaseModel, $Res> {
  __$$BadRequestImplCopyWithImpl(_$BadRequestImpl<BaseModel> _value,
      $Res Function(_$BadRequestImpl<BaseModel>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BadRequestImpl<BaseModel>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BadRequestImpl<BaseModel> implements BadRequest<BaseModel> {
  const _$BadRequestImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse<$BaseModel>.badRequest(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestImpl<BaseModel> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestImplCopyWith<BaseModel, _$BadRequestImpl<BaseModel>>
      get copyWith => __$$BadRequestImplCopyWithImpl<BaseModel,
          _$BadRequestImpl<BaseModel>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseModel data) ok,
    required TResult Function(String message) invalidParameters,
    required TResult Function(String message) noAuth,
    required TResult Function(String message) noAccess,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notFound,
    required TResult Function(String message) conflict,
    required TResult Function(String message) noData,
  }) {
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BaseModel data)? ok,
    TResult? Function(String message)? invalidParameters,
    TResult? Function(String message)? noAuth,
    TResult? Function(String message)? noAccess,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? conflict,
    TResult? Function(String message)? noData,
  }) {
    return badRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseModel data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<BaseModel> value) ok,
    required TResult Function(InvalidParameters<BaseModel> value)
        invalidParameters,
    required TResult Function(NoAuth<BaseModel> value) noAuth,
    required TResult Function(NoAccess<BaseModel> value) noAccess,
    required TResult Function(BadRequest<BaseModel> value) badRequest,
    required TResult Function(NotFound<BaseModel> value) notFound,
    required TResult Function(Conflict<BaseModel> value) conflict,
    required TResult Function(NoData<BaseModel> value) noData,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<BaseModel> value)? ok,
    TResult? Function(InvalidParameters<BaseModel> value)? invalidParameters,
    TResult? Function(NoAuth<BaseModel> value)? noAuth,
    TResult? Function(NoAccess<BaseModel> value)? noAccess,
    TResult? Function(BadRequest<BaseModel> value)? badRequest,
    TResult? Function(NotFound<BaseModel> value)? notFound,
    TResult? Function(Conflict<BaseModel> value)? conflict,
    TResult? Function(NoData<BaseModel> value)? noData,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<BaseModel> value)? ok,
    TResult Function(InvalidParameters<BaseModel> value)? invalidParameters,
    TResult Function(NoAuth<BaseModel> value)? noAuth,
    TResult Function(NoAccess<BaseModel> value)? noAccess,
    TResult Function(BadRequest<BaseModel> value)? badRequest,
    TResult Function(NotFound<BaseModel> value)? notFound,
    TResult Function(Conflict<BaseModel> value)? conflict,
    TResult Function(NoData<BaseModel> value)? noData,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequest<BaseModel> implements NetworkResponse<BaseModel> {
  const factory BadRequest(final String message) = _$BadRequestImpl<BaseModel>;

  String get message;
  @JsonKey(ignore: true)
  _$$BadRequestImplCopyWith<BaseModel, _$BadRequestImpl<BaseModel>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<BaseModel, $Res> {
  factory _$$NotFoundImplCopyWith(_$NotFoundImpl<BaseModel> value,
          $Res Function(_$NotFoundImpl<BaseModel>) then) =
      __$$NotFoundImplCopyWithImpl<BaseModel, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<BaseModel, $Res>
    extends _$NetworkResponseCopyWithImpl<BaseModel, $Res,
        _$NotFoundImpl<BaseModel>>
    implements _$$NotFoundImplCopyWith<BaseModel, $Res> {
  __$$NotFoundImplCopyWithImpl(_$NotFoundImpl<BaseModel> _value,
      $Res Function(_$NotFoundImpl<BaseModel>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NotFoundImpl<BaseModel>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotFoundImpl<BaseModel> implements NotFound<BaseModel> {
  const _$NotFoundImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse<$BaseModel>.notFound(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundImpl<BaseModel> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundImplCopyWith<BaseModel, _$NotFoundImpl<BaseModel>> get copyWith =>
      __$$NotFoundImplCopyWithImpl<BaseModel, _$NotFoundImpl<BaseModel>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseModel data) ok,
    required TResult Function(String message) invalidParameters,
    required TResult Function(String message) noAuth,
    required TResult Function(String message) noAccess,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notFound,
    required TResult Function(String message) conflict,
    required TResult Function(String message) noData,
  }) {
    return notFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BaseModel data)? ok,
    TResult? Function(String message)? invalidParameters,
    TResult? Function(String message)? noAuth,
    TResult? Function(String message)? noAccess,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? conflict,
    TResult? Function(String message)? noData,
  }) {
    return notFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseModel data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<BaseModel> value) ok,
    required TResult Function(InvalidParameters<BaseModel> value)
        invalidParameters,
    required TResult Function(NoAuth<BaseModel> value) noAuth,
    required TResult Function(NoAccess<BaseModel> value) noAccess,
    required TResult Function(BadRequest<BaseModel> value) badRequest,
    required TResult Function(NotFound<BaseModel> value) notFound,
    required TResult Function(Conflict<BaseModel> value) conflict,
    required TResult Function(NoData<BaseModel> value) noData,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<BaseModel> value)? ok,
    TResult? Function(InvalidParameters<BaseModel> value)? invalidParameters,
    TResult? Function(NoAuth<BaseModel> value)? noAuth,
    TResult? Function(NoAccess<BaseModel> value)? noAccess,
    TResult? Function(BadRequest<BaseModel> value)? badRequest,
    TResult? Function(NotFound<BaseModel> value)? notFound,
    TResult? Function(Conflict<BaseModel> value)? conflict,
    TResult? Function(NoData<BaseModel> value)? noData,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<BaseModel> value)? ok,
    TResult Function(InvalidParameters<BaseModel> value)? invalidParameters,
    TResult Function(NoAuth<BaseModel> value)? noAuth,
    TResult Function(NoAccess<BaseModel> value)? noAccess,
    TResult Function(BadRequest<BaseModel> value)? badRequest,
    TResult Function(NotFound<BaseModel> value)? notFound,
    TResult Function(Conflict<BaseModel> value)? conflict,
    TResult Function(NoData<BaseModel> value)? noData,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound<BaseModel> implements NetworkResponse<BaseModel> {
  const factory NotFound(final String message) = _$NotFoundImpl<BaseModel>;

  String get message;
  @JsonKey(ignore: true)
  _$$NotFoundImplCopyWith<BaseModel, _$NotFoundImpl<BaseModel>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConflictImplCopyWith<BaseModel, $Res> {
  factory _$$ConflictImplCopyWith(_$ConflictImpl<BaseModel> value,
          $Res Function(_$ConflictImpl<BaseModel>) then) =
      __$$ConflictImplCopyWithImpl<BaseModel, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ConflictImplCopyWithImpl<BaseModel, $Res>
    extends _$NetworkResponseCopyWithImpl<BaseModel, $Res,
        _$ConflictImpl<BaseModel>>
    implements _$$ConflictImplCopyWith<BaseModel, $Res> {
  __$$ConflictImplCopyWithImpl(_$ConflictImpl<BaseModel> _value,
      $Res Function(_$ConflictImpl<BaseModel>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ConflictImpl<BaseModel>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConflictImpl<BaseModel> implements Conflict<BaseModel> {
  const _$ConflictImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse<$BaseModel>.conflict(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConflictImpl<BaseModel> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConflictImplCopyWith<BaseModel, _$ConflictImpl<BaseModel>> get copyWith =>
      __$$ConflictImplCopyWithImpl<BaseModel, _$ConflictImpl<BaseModel>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseModel data) ok,
    required TResult Function(String message) invalidParameters,
    required TResult Function(String message) noAuth,
    required TResult Function(String message) noAccess,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notFound,
    required TResult Function(String message) conflict,
    required TResult Function(String message) noData,
  }) {
    return conflict(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BaseModel data)? ok,
    TResult? Function(String message)? invalidParameters,
    TResult? Function(String message)? noAuth,
    TResult? Function(String message)? noAccess,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? conflict,
    TResult? Function(String message)? noData,
  }) {
    return conflict?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseModel data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<BaseModel> value) ok,
    required TResult Function(InvalidParameters<BaseModel> value)
        invalidParameters,
    required TResult Function(NoAuth<BaseModel> value) noAuth,
    required TResult Function(NoAccess<BaseModel> value) noAccess,
    required TResult Function(BadRequest<BaseModel> value) badRequest,
    required TResult Function(NotFound<BaseModel> value) notFound,
    required TResult Function(Conflict<BaseModel> value) conflict,
    required TResult Function(NoData<BaseModel> value) noData,
  }) {
    return conflict(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<BaseModel> value)? ok,
    TResult? Function(InvalidParameters<BaseModel> value)? invalidParameters,
    TResult? Function(NoAuth<BaseModel> value)? noAuth,
    TResult? Function(NoAccess<BaseModel> value)? noAccess,
    TResult? Function(BadRequest<BaseModel> value)? badRequest,
    TResult? Function(NotFound<BaseModel> value)? notFound,
    TResult? Function(Conflict<BaseModel> value)? conflict,
    TResult? Function(NoData<BaseModel> value)? noData,
  }) {
    return conflict?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<BaseModel> value)? ok,
    TResult Function(InvalidParameters<BaseModel> value)? invalidParameters,
    TResult Function(NoAuth<BaseModel> value)? noAuth,
    TResult Function(NoAccess<BaseModel> value)? noAccess,
    TResult Function(BadRequest<BaseModel> value)? badRequest,
    TResult Function(NotFound<BaseModel> value)? notFound,
    TResult Function(Conflict<BaseModel> value)? conflict,
    TResult Function(NoData<BaseModel> value)? noData,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict(this);
    }
    return orElse();
  }
}

abstract class Conflict<BaseModel> implements NetworkResponse<BaseModel> {
  const factory Conflict(final String message) = _$ConflictImpl<BaseModel>;

  String get message;
  @JsonKey(ignore: true)
  _$$ConflictImplCopyWith<BaseModel, _$ConflictImpl<BaseModel>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoDataImplCopyWith<BaseModel, $Res> {
  factory _$$NoDataImplCopyWith(_$NoDataImpl<BaseModel> value,
          $Res Function(_$NoDataImpl<BaseModel>) then) =
      __$$NoDataImplCopyWithImpl<BaseModel, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NoDataImplCopyWithImpl<BaseModel, $Res>
    extends _$NetworkResponseCopyWithImpl<BaseModel, $Res,
        _$NoDataImpl<BaseModel>>
    implements _$$NoDataImplCopyWith<BaseModel, $Res> {
  __$$NoDataImplCopyWithImpl(_$NoDataImpl<BaseModel> _value,
      $Res Function(_$NoDataImpl<BaseModel>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NoDataImpl<BaseModel>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoDataImpl<BaseModel> implements NoData<BaseModel> {
  const _$NoDataImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse<$BaseModel>.noData(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoDataImpl<BaseModel> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoDataImplCopyWith<BaseModel, _$NoDataImpl<BaseModel>> get copyWith =>
      __$$NoDataImplCopyWithImpl<BaseModel, _$NoDataImpl<BaseModel>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseModel data) ok,
    required TResult Function(String message) invalidParameters,
    required TResult Function(String message) noAuth,
    required TResult Function(String message) noAccess,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notFound,
    required TResult Function(String message) conflict,
    required TResult Function(String message) noData,
  }) {
    return noData(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BaseModel data)? ok,
    TResult? Function(String message)? invalidParameters,
    TResult? Function(String message)? noAuth,
    TResult? Function(String message)? noAccess,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? conflict,
    TResult? Function(String message)? noData,
  }) {
    return noData?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseModel data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<BaseModel> value) ok,
    required TResult Function(InvalidParameters<BaseModel> value)
        invalidParameters,
    required TResult Function(NoAuth<BaseModel> value) noAuth,
    required TResult Function(NoAccess<BaseModel> value) noAccess,
    required TResult Function(BadRequest<BaseModel> value) badRequest,
    required TResult Function(NotFound<BaseModel> value) notFound,
    required TResult Function(Conflict<BaseModel> value) conflict,
    required TResult Function(NoData<BaseModel> value) noData,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<BaseModel> value)? ok,
    TResult? Function(InvalidParameters<BaseModel> value)? invalidParameters,
    TResult? Function(NoAuth<BaseModel> value)? noAuth,
    TResult? Function(NoAccess<BaseModel> value)? noAccess,
    TResult? Function(BadRequest<BaseModel> value)? badRequest,
    TResult? Function(NotFound<BaseModel> value)? notFound,
    TResult? Function(Conflict<BaseModel> value)? conflict,
    TResult? Function(NoData<BaseModel> value)? noData,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<BaseModel> value)? ok,
    TResult Function(InvalidParameters<BaseModel> value)? invalidParameters,
    TResult Function(NoAuth<BaseModel> value)? noAuth,
    TResult Function(NoAccess<BaseModel> value)? noAccess,
    TResult Function(BadRequest<BaseModel> value)? badRequest,
    TResult Function(NotFound<BaseModel> value)? notFound,
    TResult Function(Conflict<BaseModel> value)? conflict,
    TResult Function(NoData<BaseModel> value)? noData,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class NoData<BaseModel> implements NetworkResponse<BaseModel> {
  const factory NoData(final String message) = _$NoDataImpl<BaseModel>;

  String get message;
  @JsonKey(ignore: true)
  _$$NoDataImplCopyWith<BaseModel, _$NoDataImpl<BaseModel>> get copyWith =>
      throw _privateConstructorUsedError;
}
