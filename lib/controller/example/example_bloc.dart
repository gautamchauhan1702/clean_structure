import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_structures/application/example/example.use_case.dart';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'handlers/example.handler.dart';
part 'example_bloc.g.dart';
part 'example_event.dart';
part 'example_state.dart';

abstract class ExampleBlocInterface extends Bloc<ExampleEvent, ExampleState> {
  final ExampleUseCase _exampleUseCase;

  ExampleBlocInterface(
    this._exampleUseCase,
  ) : super(ExampleState.initial());
}

@injectable
class ExampleBloc extends ExampleBlocInterface with ExampleHandler {
  ExampleBloc(
    super._exampleUseCase,
  ) {
    on<ExampleDemoEvent>(_example);
  }
}
