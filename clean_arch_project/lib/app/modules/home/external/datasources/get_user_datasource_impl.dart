import 'package:dio/dio.dart';
import '../../data/datasources/get_user_datasource.dart';

class GetUserDataSourceImpl implements GetUserDataSource {
  final httpClient = Dio();
  GetUserDataSourceImpl() {
    httpClient.options.baseUrl =
        'https://mockapi.io/clone/66db3cedf47a05d55be7793c';

    httpClient.options.connectTimeout = Duration(seconds: 5);
    httpClient.options.receiveTimeout = Duration(seconds: 3);
  }

  @override
  Future<void> call() async {
    var res = await httpClient.get('/users');
    return res.data;
  }
}
