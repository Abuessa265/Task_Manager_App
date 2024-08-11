import 'package:flutter/material.dart';

import '../../utility/utility.dart';

class testPurpus extends StatefulWidget {
  const testPurpus({super.key});

  @override
  State<testPurpus> createState() => _testPurpusState();
}

class _testPurpusState extends State<testPurpus> {
  String email = "";
  @override
  initState() {
    Data();
    super.initState();
  }

  Data() async {
    String? s = await ReadUserData('email');
    setState(() {
      email = s!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(email),
      ),
    );
  }
}
