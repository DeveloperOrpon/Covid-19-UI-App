import 'package:flutter/material.dart';

class ValueNavbar with ChangeNotifier {
  ValueNotifier<bool> enable = ValueNotifier(true);
}

ValueNavbar valueNavbar = ValueNavbar();
