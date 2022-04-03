library snackbar_extension;

import 'package:flutter/material.dart';
import 'package:snackbar_extension/data/snackbar_extension_data.dart';

class SnackBarExtension {
  const SnackBarExtension._();

  static final Map<String, SnackBarExtensionData> _instanceMap =
      <String, SnackBarExtensionData>{};

  static void register({
    required SnackBar snackBar,
    required String name,
  }) {
    if (_instanceMap.containsKey(name)) {
      throw Exception("SnackBarExtension name is already registered");
    }

    _instanceMap[name] = SnackBarExtensionData(snackBar);
  }

  static SnackBarExtensionData of(BuildContext context, String name) {
    _instanceMap[name]!.context = context;
    return _instanceMap[name]!;
  }
}
