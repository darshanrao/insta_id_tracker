import 'dart:convert';

import 'package:http/http.dart' as http;
import 'user_model.dart';

class Services {
  // String _userID;
  //
  static const String url = 'https://www.instagram.com/cristiano/?__a=1';

  static Future<UserClass> getUserData(userID) async {
    try {
      final response =
          await http.get('https://www.instagram.com/$userID/?__a=1');
      print("Content type: ${response.headers['content-type']}");
      if (200 == response.statusCode) {
        print('Success');
        var data = json.decode(response.body);
        // print(response.body);
        var rest = data["graphql"]["user"];
        print(rest);
        final UserClass userData = UserClass.fromJson(rest);
        print(userData.fullName);
        return userData;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }

  // void getUserID(String userID) {
  //   _userID = userID;
  // }

  // static String getUrl(_userID) {
  //   return 'https://www.instagram.com/$_userID/?__a=1';
  // }
}
