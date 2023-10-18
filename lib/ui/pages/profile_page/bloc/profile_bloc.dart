import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starter_project/core/api/api_provider.dart';
import 'package:starter_project/core/bloc_progress/bloc_progress/bloc_progress.dart';
import 'package:starter_project/core/bloc_progress/failureMessage/failure_message.dart';
import 'package:starter_project/core/constants/app_strings.dart';
import 'package:starter_project/ui/pages/profile_page/model/user_info.dart';

part 'profile_state.dart';

class ProfileBloc extends Cubit<ProfileState> {
  ProfileBloc() : super(ProfileState.initial());

  void clearAll() {
    emit(ProfileState.initial());
  }

  void setAppTheme({required bool isLightMode, required int themeMode}) async {
    emit(state.copyWith(isLightMode: isLightMode, themeMode: themeMode));

    // PreferencesServices.saveisLightMode(isLightMode);
    // final SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.setInt(ShPrefKeys.themeMode, themeMode);
    // PreferencesServices.savethemeMode(themeMode);
  }

  void getUserInfo() async {
    emit(state.copyWith(blocProgress: BlocProgress.IS_LOADING));

    try {
      final response = await ApiProvider.userService.getUserInfo();

      if (response.isSuccessful) {
        final data = response.body;

        if (data != null) {
          emit(state.copyWith(data: data, blocProgress: BlocProgress.IS_SUCCESS));
        }
      } else {
        final error = ErrorResponse.fromJson(json.decode(response.error.toString()));

        emit(state.copyWith(
          blocProgress: BlocProgress.FAILED,
          failureMessage: error.message,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        blocProgress: BlocProgress.FAILED,
        failureMessage: AppStrings.internalErrorMessage,
      ));
    }
  }
}
