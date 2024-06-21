part of 'package:clean_structures/controller/example/example_bloc.dart';

// ignore: invalid_annotation_target
@injectable
mixin ExampleHandler on ExampleBlocInterface {
  FutureOr<void> _example(
    ExampleDemoEvent event,
    Emitter<ExampleState> emit,
  ) async {
    emit(
      state.copyWith(
        isFailed: false,
        isSuccess: false,
      ),
    );

    try {
      await _exampleUseCase(id: event.id);

      emit(
        state.copyWith(
          isSuccess: true,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isFailed: true,
        ),
      );

      rethrow;
    }
  }
}
