import 'package:chopper/chopper.dart';

import '../../../data/resourses/built_value_converter.dart';
import '../../constants/app_constants.dart';
import 'mobile_data_interseptor.dart';

class ApiClient {
  static ChopperClient buildClient(ChopperService service) {
    ChopperClient client = ChopperClient(
      baseUrl: AppConstants.BASE_URL,
      services: [
        service,
      ],
      converter: BuiltValueConverter(),
      interceptors: [
        MobileDataInterceptor(),
        HttpLoggingInterceptor(),
      ],
    );
    return client;
  }
}
