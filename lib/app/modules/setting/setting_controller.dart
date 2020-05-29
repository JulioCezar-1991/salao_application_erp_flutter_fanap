import 'package:mobx/mobx.dart';

part 'setting_controller.g.dart';

class SettingController = _SettingControllerBase with _$SettingController;

abstract class _SettingControllerBase with Store {
  final FormSettingErrorState error = FormSettingErrorState();
}

class FormSettingErrorState = _FormSettingErrorState
    with _$FormSettingErrorState;

abstract class _FormSettingErrorState with Store {}
