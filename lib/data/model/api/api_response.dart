import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'meta.dart';

part 'api_response.g.dart';

abstract class ApiResponse<T>
    implements Built<ApiResponse<T>, ApiResponseBuilder<T>> {
  bool get status;
  String get message;

  T get data;

  ApiResponse._();

  factory ApiResponse([Function(ApiResponseBuilder<T>) updates]) =
      _$ApiResponse<T>;

  static Serializer<ApiResponse> get serializer => _$apiResponseSerializer;
}
