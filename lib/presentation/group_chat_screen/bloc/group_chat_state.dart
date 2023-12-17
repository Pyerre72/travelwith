// ignore_for_file: must_be_immutable

part of 'group_chat_bloc.dart';

class GroupChatState extends Equatable {
  GroupChatState({this.groupChatModelObj});

  GroupChatModel? groupChatModelObj;

  @override
  List<Object?> get props => [
        groupChatModelObj,
      ];
  GroupChatState copyWith({GroupChatModel? groupChatModelObj}) {
    return GroupChatState(
      groupChatModelObj: groupChatModelObj ?? this.groupChatModelObj,
    );
  }
}
