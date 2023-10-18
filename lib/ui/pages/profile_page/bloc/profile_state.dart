part of 'profile_bloc.dart';

class ProfileState extends Equatable {
  final bool isLightMode;
  final int themeMode;
  final UserInfoResponse data;
  final BlocProgress blocProgress;
  final String failureMessage;

  const ProfileState({
    required this.data,
    required this.themeMode,
    required this.isLightMode,
    required this.blocProgress,
    required this.failureMessage,
  });

  factory ProfileState.initial() {
    return ProfileState(
      data: UserInfoResponse(
        id: 0,
        firstname: '',
        lastname: '',
        accountType: '',
        status: '',
        username: 0,
        email: '',
        roles: [],
      ),
      themeMode: 0,
      isLightMode: true,
      blocProgress: BlocProgress.IS_LOADING,
      failureMessage: '',
    );
  }

  ProfileState copyWith({
    bool? isLightMode,
    int? themeMode,
    UserInfoResponse? data,
    BlocProgress? blocProgress,
    String? failureMessage,
  }) {
    return ProfileState(
      isLightMode: isLightMode ?? this.isLightMode,
      themeMode: themeMode ?? this.themeMode,
      data: data ?? this.data,
      blocProgress: blocProgress ?? this.blocProgress,
      failureMessage: failureMessage ?? this.failureMessage,
    );
  }

  @override
  List<Object?> get props => [
        themeMode,
        isLightMode,
        data,
        blocProgress,
        failureMessage,
      ];
}
