// ignore_for_file: must_be_immutable

part of 'post_creation_bloc.dart';

@immutable
abstract class PostCreationEvent extends Equatable {}

class PostCreationInitialEvent extends PostCreationEvent {
  @override
  List<Object?> get props => [];
}
