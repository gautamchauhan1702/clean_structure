part of 'example_bloc.dart';

@CopyWith()
class ExampleState extends Equatable {
  final bool isLoading;
  final bool isSuccess;
  final bool isFailed;
  final String errorMessage;

  const ExampleState({
    required this.isLoading,
    required this.isSuccess,
    required this.isFailed,
    required this.errorMessage,
  });

  factory ExampleState.initial() {
    return const ExampleState(
      isLoading: false,
      isSuccess: false,
      isFailed: false,
      errorMessage: '',
    );
  }

  @override
  List<Object?> get props => [
        isLoading,
        isSuccess,
        isFailed,
        errorMessage,
      ];
}
