import 'package:clean_structures/domain/example/example.repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ExampleUseCase {
  final ExampleRepository exampleRepository;

  ExampleUseCase(this.exampleRepository);

  Future<String> call({
    required String id,
  }) async {
    return await exampleRepository.getUserList();
  }
}
