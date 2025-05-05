import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [reminderlist_item_widget] screen.

// ignore_for_file: must_be_immutable
class ReminderlistItemModel extends Equatable {
  ReminderlistItemModel(
      {this.image,
      this.completeyour,
      this.setareminder,
      this.iconbutton,
      this.id}) {
    image = image ?? ImageConstant.imgFrameAmber700;
    completeyour = completeyour ?? "msg_complete_your_profile".tr;
    setareminder = setareminder ?? "msg_set_a_reminder_for".tr;
    iconbutton = iconbutton ?? ImageConstant.imgLucideCirclePlus;
    id = id ?? "";
  }

  String? image;

  String? completeyour;

  String? setareminder;

  String? iconbutton;

  String? id;

  ReminderlistItemModel copyWith({
    String? image,
    String? completeyour,
    String? setareminder,
    String? iconbutton,
    String? id,
  }) {
    return ReminderlistItemModel(
      image: image ?? this.image,
      completeyour: completeyour ?? this.completeyour,
      setareminder: setareminder ?? this.setareminder,
      iconbutton: iconbutton ?? this.iconbutton,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props =>
      [image, completeyour, setareminder, iconbutton, id];

  get onTap => null;
}
