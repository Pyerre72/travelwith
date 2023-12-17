// ignore_for_file: must_be_immutable

part of 'post_creation_bloc.dart';

class PostCreationState extends Equatable {
  PostCreationState({
    this.enterGiftAmountController,
    this.postCreationModelObj,
  });

  TextEditingController? enterGiftAmountController;

  PostCreationModel? postCreationModelObj;

  @override
  List<Object?> get props => [
        enterGiftAmountController,
        postCreationModelObj,
      ];
  PostCreationState copyWith({
    TextEditingController? enterGiftAmountController,
    PostCreationModel? postCreationModelObj,
  }) {
    return PostCreationState(
      enterGiftAmountController:
          enterGiftAmountController ?? this.enterGiftAmountController,
      postCreationModelObj: postCreationModelObj ?? this.postCreationModelObj,
    );
  }
}
