import 'package:chopper/chopper.dart';
import 'package:starter_project/core/constants/app_strings.dart';
import 'package:starter_project/ui/pages/profile_page/model/user_info.dart';

part 'user_services.chopper.dart';

@ChopperApi(baseUrl: AppStrings.baseLive)
abstract class UserService extends ChopperService {
  static UserService create([ChopperClient? client]) => _$UserService(client ?? ChopperClient());

  @Get(path: AppStrings.signIn)
  Future<Response<UserInfoResponse>> getUserInfo();
}
