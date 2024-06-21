part of 'example_bloc.dart';

abstract class ExampleEvent {}

class ExampleDemoEvent extends ExampleEvent {
  final String id;

  ExampleDemoEvent({required this.id});
}
