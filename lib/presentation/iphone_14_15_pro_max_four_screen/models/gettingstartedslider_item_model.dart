import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [gettingstartedslider_item_widget] screen.

// ignore_for_file: must_be_immutable
class GettingstartedsliderItemModel extends Equatable {
  GettingstartedsliderItemModel(
      {this.gettingonn,
      this.setupyoulolu,
      this.enterphone,
      this.weensureyour,
      this.id}) {
    gettingonn = gettingonn ?? "lbl_getting_onn".tr;
    setupyoulolu = setupyoulolu ?? "msg_setup_you_lolu_account".tr;
    enterphone = enterphone ?? "msg_enter_phone_number".tr;
    weensureyour = weensureyour ?? "msg_we_ensure_your_data".tr;
    id = id ?? "";
  }

  String? gettingonn;

  String? setupyoulolu;

  String? enterphone;

  String? weensureyour;

  String? id;

  GettingstartedsliderItemModel copyWith({
    String? gettingonn,
    String? setupyoulolu,
    String? enterphone,
    String? weensureyour,
    String? id,
  }) {
    return GettingstartedsliderItemModel(
      gettingonn: gettingonn ?? this.gettingonn,
      setupyoulolu: setupyoulolu ?? this.setupyoulolu,
      enterphone: enterphone ?? this.enterphone,
      weensureyour: weensureyour ?? this.weensureyour,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props =>
      [gettingonn, setupyoulolu, enterphone, weensureyour, id];
}
