import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:travel_with/presentation/group_chat_screen/models/group_chat_model.dart';
part 'group_chat_event.dart';
part 'group_chat_state.dart';

class GroupChatBloc extends Bloc<GroupChatEvent, GroupChatState> {
  GroupChatBloc(GroupChatState initialState) : super(initialState) {
    on<GroupChatInitialEvent>(_onInitialize);
  }

  _onInitialize(
    GroupChatInitialEvent event,
    Emitter<GroupChatState> emit,
  ) async {}
}
