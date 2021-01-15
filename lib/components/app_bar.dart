import 'package:flutter/material.dart';

CAppBar({String title}) {
  return AppBar(
      centerTitle: true,
      backgroundColor: Colors.black54,
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
    );
}
