import 'package:core/core.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'soccer_api.g.dart';

@RestApi()
abstract class SoccerApi {
  @factoryMethod
  factory SoccerApi(ApiDio dio, {String baseUrl}) = _SoccerApi;

  // API GET Get Transaction Invoice
  @GET('/v1/json/3/search_all_teams.php')
  Future<AllTeamResponse> getAllTeam({
    @Path('id') required String l,
    @DioOptions() required Options options,
  });
}
