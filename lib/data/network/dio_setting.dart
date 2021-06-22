
import 'package:dio/dio.dart';
import 'package:test_app/recources/variables.dart';

class DioSettings {
  static final mainServer = "https://jsonplaceholder.typicode.com/";
  Dio dio = Dio(
    BaseOptions(
      baseUrl: mainServer,
      connectTimeout: 10000,
      receiveTimeout: 10000,
    ),
  );
  DioSettings() {
    initialSettings();
  }
  initialSettings() {
    Interceptors interceptors = dio.interceptors;
    interceptors.requestLock.lock();
    interceptors.clear();
    interceptors.add(
      /// Обрабатываем ошибки
      InterceptorsWrapper(
        onResponse: (response) {
          if (response.statusCode == 204) {
            throw DioError(
              error: Variables.noData,
              response: Response(
                statusCode: 400,
                request: response.request,
              ),
            );
          }
        },
        onError: (DioError error) async {
          if (error.type == DioErrorType.CONNECT_TIMEOUT) {
            throw DioError(
              error: Variables.serverError,
              response: Response(
                statusCode: 400,
                request: error.request,
              ),
            );
          } else if (error.message.contains("SocketException:")) {
            throw DioError(
              error: Variables.noInternet,
              response: Response(
                statusCode: 400,
                request: error.request,
              ),
            );
          }
          return error;
        },
      ),
    );

    /// Добавляем настройки логов
    interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
      ),
    );
  /// Разблокируем запрос
    interceptors.requestLock.unlock();
  }
}
