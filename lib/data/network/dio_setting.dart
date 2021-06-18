import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

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
              error: "Отсутствуют данные",
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
              error: "Сервер не отвечает попробуйте еще раз",
              response: Response(
                statusCode: 400,
                request: error.request,
              ),
            );
          } else if (error.message.contains("SocketException:")) {
            throw DioError(
              error: "Отсутствует интернет соединение",
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
