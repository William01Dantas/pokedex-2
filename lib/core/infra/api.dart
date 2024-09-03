import 'package:pokedex/core/infra/api_endpoints.dart';

class Api {
  static const String baseUrl = 'https://pokeapi.co/api/v2/';

  static String getUrl(ApiEndpoint endpoint) {
    print(baseUrl);
    return '$baseUrl${endpoint.name}/';
  }
}
