import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:taskmanager/screen/onboarding/emalilVerificationScreen.dart';
import 'package:taskmanager/screen/onboarding/loginScreen.dart';
import 'package:taskmanager/screen/onboarding/pinVerificationScreen.dart';
import 'package:taskmanager/screen/onboarding/registrationScreen.dart';
import 'package:taskmanager/screen/onboarding/setPasswordScreen.dart';
import 'package:taskmanager/screen/onboarding/splashScreen.dart';
import 'package:taskmanager/screen/task/homeScreen.dart';
import 'package:taskmanager/screen/task/taskCreateScreen.dart';
import 'package:taskmanager/utility/utility.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String? token = await ReadUserData('token');
  if (token == null) {
    runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => MyApp('/firstScreen'),
      ),
    );
  } else {
    runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => MyApp('/'),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  final String FirstRoute;

  MyApp(this.FirstRoute);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Task manager",
      initialRoute: FirstRoute,
      routes: {
        '/': (context) => homeScreen(),
        '/login': (context) => loginScreen(),
        '/registration': (context) => registrationScreen(),
        '/emailVerification': (context) => emailVerificationScreen(),
        '/pinVerification': (context) => pinVerificationScreen(),
        '/setPassword': (context) => setPasswordScreen(),
        '/taskCreate': (context) => taskCreateScreen(),
        '/firstScreen': (context) => splashScreen(),

        //'/testPurpus': (context) => testPurpus()
      },
    );
  }
}
