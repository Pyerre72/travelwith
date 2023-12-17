import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:travel_with/presentation/post_creation_screen/models/post_creation_model.dart';
part 'post_creation_event.dart';
part 'post_creation_state.dart';

class PostCreationBloc extends Bloc<PostCreationEvent, PostCreationState> {
  PostCreationBloc(PostCreationState initialState) : super(initialState) {
    on<PostCreationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PostCreationInitialEvent event,
    Emitter<PostCreationState> emit,
  ) async {
    emit(state.copyWith(enterGiftAmountController: TextEditingController()));
  }
}
