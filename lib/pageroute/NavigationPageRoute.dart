import 'package:brightdirectories/singleuser/UserProfileDetail.dart';
import 'package:get/get.dart';

class PageRouteHelper {
  static const String userprofiledetails = "/userprofiledetails";

  static String getUserProfileDetail() => '$userprofiledetails';

  static List<GetPage> routes = [
    GetPage(
        name: userprofiledetails,
        page: () {
          return const UserProfileDetail();
        },
        transition: Transition.zoom)
  ];
}
