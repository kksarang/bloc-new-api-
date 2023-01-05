// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApiResponse<Object?>> _$apiResponseSerializer =
    new _$ApiResponseSerializer();

class _$ApiResponseSerializer
    implements StructuredSerializer<ApiResponse<Object?>> {
  @override
  final Iterable<Type> types = const [ApiResponse, _$ApiResponse];
  @override
  final String wireName = 'ApiResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ApiResponse<Object?> object,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = <Object?>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data, specifiedType: parameterT),
    ];

    return result;
  }

  @override
  ApiResponse<Object?> deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = isUnderspecified
        ? new ApiResponseBuilder<Object?>()
        : serializers.newBuilder(specifiedType) as ApiResponseBuilder<Object?>;

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'data':
          result.data =
              serializers.deserialize(value, specifiedType: parameterT);
          break;
      }
    }

    return result.build();
  }
}

class _$ApiResponse<T> extends ApiResponse<T> {
  @override
  final bool status;
  @override
  final String message;
  @override
  final T data;

  factory _$ApiResponse([void Function(ApiResponseBuilder<T>)? updates]) =>
      (new ApiResponseBuilder<T>()..update(updates))._build();

  _$ApiResponse._(
      {required this.status, required this.message, required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(status, r'ApiResponse', 'status');
    BuiltValueNullFieldError.checkNotNull(message, r'ApiResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(data, r'ApiResponse', 'data');
    if (T == dynamic) {
      throw new BuiltValueMissingGenericsError(r'ApiResponse', 'T');
    }
  }

  @override
  ApiResponse<T> rebuild(void Function(ApiResponseBuilder<T>) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiResponseBuilder<T> toBuilder() =>
      new ApiResponseBuilder<T>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiResponse &&
        status == other.status &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, status.hashCode), message.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiResponse')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class ApiResponseBuilder<T>
    implements Builder<ApiResponse<T>, ApiResponseBuilder<T>> {
  _$ApiResponse<T>? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  T? _data;
  T? get data => _$this._data;
  set data(T? data) => _$this._data = data;

  ApiResponseBuilder();

  ApiResponseBuilder<T> get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiResponse<T> other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiResponse<T>;
  }

  @override
  void update(void Function(ApiResponseBuilder<T>)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiResponse<T> build() => _build();

  _$ApiResponse<T> _build() {
    final _$result = _$v ??
        new _$ApiResponse<T>._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ApiResponse', 'status'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'ApiResponse', 'message'),
            data: BuiltValueNullFieldError.checkNotNull(
                data, r'ApiResponse', 'data'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
