import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listrectangle1320_item_model.dart';
import '../models/listrectangle1321_item_model.dart';
import 'package:travel_with/presentation/events_screen/models/events_model.dart';
part 'events_event.dart';
part 'events_state.dart';

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  EventsBloc(EventsState initialState) : super(initialState) {
    on<EventsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EventsInitialEvent event,
    Emitter<EventsState> emit,
  ) async {
    emit(state.copyWith(
        eventsModelObj: state.eventsModelObj?.copyWith(
            listrectangle1320ItemList: fillListrectangle1320ItemList(),
            listrectangle1321ItemList: fillListrectangle1321ItemList())));
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.googleLoginScreen,
      );
    });
  }

  List<Listrectangle1320ItemModel> fillListrectangle1320ItemList() {
    return List.generate(2, (index) => Listrectangle1320ItemModel());
  }

  List<Listrectangle1321ItemModel> fillListrectangle1321ItemList() {
    return List.generate(4, (index) => Listrectangle1321ItemModel());
  }
}
