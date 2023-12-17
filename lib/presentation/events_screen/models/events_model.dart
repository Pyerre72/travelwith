import 'package:equatable/equatable.dart';
import 'listrectangle1320_item_model.dart';
import 'listrectangle1321_item_model.dart';

// ignore: must_be_immutable
class EventsModel extends Equatable {
  EventsModel(
      {this.listrectangle1320ItemList = const [],
      this.listrectangle1321ItemList = const []});

  List<Listrectangle1320ItemModel> listrectangle1320ItemList;

  List<Listrectangle1321ItemModel> listrectangle1321ItemList;

  EventsModel copyWith(
      {List<Listrectangle1320ItemModel>? listrectangle1320ItemList,
      List<Listrectangle1321ItemModel>? listrectangle1321ItemList}) {
    return EventsModel(
      listrectangle1320ItemList:
          listrectangle1320ItemList ?? this.listrectangle1320ItemList,
      listrectangle1321ItemList:
          listrectangle1321ItemList ?? this.listrectangle1321ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [listrectangle1320ItemList, listrectangle1321ItemList];
}
