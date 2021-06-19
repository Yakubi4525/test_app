import 'package:test_app/data/local/local_service.dart';
import 'package:test_app/data/network/service_api.dart';
import 'package:test_app/models/user.dart';

class DataRepository {
  ServerApi _serverApi;
  LocalService _localService;

  static DataRepository _instance = new DataRepository.internal();
  factory DataRepository() => _instance;
  DataRepository.internal() {
    _serverApi = ServerApi();
    _localService = LocalService();
  }

  Future<List<User>> getAllUser() async {
    try {
      LocalService localService = LocalService();
      var userList = await localService.getAllusers();
      if (userList == null) {
        print('from server');
        userList = await _serverApi.getAllUsers();
        await _localService.setAllusers(userList);
      }
      return userList;
    } catch (error) {
      print(error.toString());
      // rethrow;
    }
  }
}
