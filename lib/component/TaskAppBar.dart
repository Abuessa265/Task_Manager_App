import 'package:flutter/material.dart';
import 'package:taskmanager/Style/Style.dart';

import '../widgets/network_cached_image.dart';

AppBar TaskAppBar() {
  return AppBar(
    backgroundColor: colorGreen,
    leading: const Padding(
      padding: EdgeInsets.all(8.0),
      child: CircleAvatar(
        child: NetworkCachedImage(
          url: '',
        ),
      ),
    ),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Abu essa',
          style: Head6Text(colorWhite),
        ),
        Text("abuessa@gmail.com", style: Head7Text(colorWhite))
      ],
    ),
  );
}
