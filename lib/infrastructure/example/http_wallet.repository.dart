// Package imports:
import 'package:clean_structures/domain/example/example.repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ExampleRepository)
class HttpExampleRepository implements ExampleRepository {
  const HttpExampleRepository();

  @override
  Future<String> getUserList() {
    //Here Api Call Code
    throw UnimplementedError();
  }
}
