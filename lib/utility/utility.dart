import 'dart:typed_data';

import 'package:shared_preferences/shared_preferences.dart';

String DefaultProfilePic =
    "data:image/jpeg;base64,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";
Future<void> WriteUserData(UserData) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('token', UserData['token']);
  await prefs.setString('email', UserData['data']['email']);
  await prefs.setString('firstName', UserData['data']['firstName']);
  await prefs.setString('lastName', UserData['data']['lastName']);
  await prefs.setString('mobile', UserData['data']['mobile']);
  await prefs.setString('photo', UserData['data']['photo']);
}

Future<void> WriteEmailVerification(Email) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('EmailVerification', Email);
}

Future<void> WriteOTPVerification(OTP) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('OTPVerification', OTP);
}

Future<String?> ReadUserData(Key) async {
  final prefs = await SharedPreferences.getInstance();
  String? mydata = await prefs.getString(Key);
  return mydata;
}

Future<bool> RemoveToken() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.clear();
  return true;
}

ShowBase64Image(Base64String) {
  UriData? data = Uri.parse(Base64String).data;
  Uint8List MyImage = data!.contentAsBytes();
  return MyImage;
}
