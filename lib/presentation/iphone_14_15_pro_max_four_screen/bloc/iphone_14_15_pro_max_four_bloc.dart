import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/gettingstartedslider_item_model.dart';
import '../models/iphone_14_15_pro_max_four_model.dart';
part 'iphone_14_15_pro_max_four_event.dart';
part 'iphone_14_15_pro_max_four_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxFour according to the event that is dispatched to it.
class Iphone1415ProMaxFourBloc
    extends Bloc<Iphone1415ProMaxFourEvent, Iphone1415ProMaxFourState> {
  Iphone1415ProMaxFourBloc(Iphone1415ProMaxFourState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxFourInitialEvent>(_onInitialize);
    on<ChangeSliderIndexEvent>(_changeSliderIndex);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _onInitialize(
    Iphone1415ProMaxFourInitialEvent event,
    Emitter<Iphone1415ProMaxFourState> emit,
  ) async {
    emit(
      state.copyWith(
        sliderIndex: 0,
      ),
    );
    emit(
      state.copyWith(
        iphone1415ProMaxFourModelObj:
            state.iphone1415ProMaxFourModelObj?.copyWith(
          gettingstartedsliderItemList: fillGettingstartedsliderItemList(),
        ),
      ),
    );
  }

  _changeSliderIndex(
    ChangeSliderIndexEvent event,
    Emitter<Iphone1415ProMaxFourState> emit,
  ) {
    emit(state.copyWith(
      sliderIndex: event.value,
    ));
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<Iphone1415ProMaxFourState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  List<GettingstartedsliderItemModel> fillGettingstartedsliderItemList() {
    return [
      GettingstartedsliderItemModel(
          gettingonn: "lbl_getting_onn".tr,
          setupyoulolu: "msg_setup_you_lolu_account".tr,
          enterphone: "msg_enter_phone_number".tr,
          weensureyour: "msg_we_ensure_your_data".tr)
    ];
  }
}
