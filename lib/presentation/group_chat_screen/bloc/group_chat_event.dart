// ignore_for_file: must_be_immutable

part of 'group_chat_bloc.dart';

@immutable
abstract class GroupChatEvent extends Equatable {}

class GroupChatInitialEvent extends GroupChatEvent {
  @override
  List<Object?> get props => [];
}
