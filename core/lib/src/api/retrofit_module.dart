import 'package:core/core.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RetrofitInjectableModule {
  // this is example.
  // QrBarcodeApi getQrBarcodeApi(ApiDio client) => QrBarcodeApi(client);
  SoccerApi getFavouritesApi(ApiDio client) => SoccerApi(client);
}
