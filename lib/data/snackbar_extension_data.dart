import 'package:flutter/material.dart';

class SnackBarExtensionData {
  SnackBarExtensionData(this.snackBar);

  SnackBar? snackBar;
  BuildContext? context;

  // To build a new snackBar from previous snackBar
  SnackBar _buildFrom(
    SnackBar? snackBar, {
    // Contents of the snackBar
    Widget? content,
    // snackBar action
    SnackBarAction? action,
    // Duration of the snackBar
    Duration? duration,
    // snackBar background color
    Color? backgroundColor,
    // snackBar elevation
    double? elevation,
    // snackBar shape
    ShapeBorder? shape,
    // snackBar behavior
    SnackBarBehavior? behavior,
    // snackBar animation
    Animation<double>? animation,
    // snackBar onVisible function, called when the snackBar is visible
    Function()? onVisible,
    // snackBar dismissDirection to set the dismiss direction
    DismissDirection? dismissDirection,
  }) {
    if (snackBar == null) {
      throw Exception("SnackBar is null");
    }

    return SnackBar(
      content: content ?? snackBar.content,
      action: action ?? snackBar.action,
      duration: duration ?? snackBar.duration,
      backgroundColor: backgroundColor ?? snackBar.backgroundColor,
      elevation: elevation ?? snackBar.elevation,
      shape: shape ?? snackBar.shape,
      behavior: behavior ?? snackBar.behavior,
      animation: animation ?? snackBar.animation,
      onVisible: onVisible ?? snackBar.onVisible,
      dismissDirection: dismissDirection ?? snackBar.dismissDirection,
    );
  }

  void show([Widget? content]) {
    if (context == null) {
      throw Exception("Context is null");
    }

    if (this.snackBar == null) {
      throw Exception("snackBar is null");
    }

    SnackBar? snackBar = this.snackBar;

    if (content != null) {
      snackBar = _buildFrom(
        snackBar,
        content: content,
      );
    }

    ScaffoldMessenger.of(context!)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar!);
  }

  void showTill({
    Widget? content,
    required Function run,
  }) async {
    SnackBar? snackBar = this.snackBar;

    if (content != null) {
      snackBar = _buildFrom(
        this.snackBar!,
        content: content,
        duration: const Duration(days: 1),
      );
    }

    remove();

    if (snackBar == null) {
      throw Exception("snackBar is null");
    }

    ScaffoldMessenger.of(context!)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);

    try {
      await run();
    } catch (e) {
      remove();
      debugPrint(e.toString());
    } finally {
      remove();
    }
  }

  void hide() {
    if (context == null) {
      throw Exception("Context is null");
    }

    ScaffoldMessenger.of(context!).hideCurrentSnackBar();
  }

  void remove() {
    if (context == null) {
      throw Exception("Context is null");
    }

    ScaffoldMessenger.of(context!).removeCurrentSnackBar();
  }

  void setAction(SnackBarAction action) {
    snackBar = _buildFrom(snackBar, action: action);
  }

  void setContent(Widget content) {
    snackBar = _buildFrom(snackBar, content: content);
  }

  void setBackgroundColor(Color color) {
    snackBar = _buildFrom(snackBar, backgroundColor: color);
  }

  void setElevation(double elevation) {
    snackBar = _buildFrom(snackBar, elevation: elevation);
  }

  void setShape(ShapeBorder shape) {
    snackBar = _buildFrom(snackBar, shape: shape);
  }

  void setBehavior(SnackBarBehavior behavior) {
    snackBar = _buildFrom(snackBar, behavior: behavior);
  }

  void setAnimation(Animation<double> animation) {
    snackBar = _buildFrom(snackBar, animation: animation);
  }

  void setOnVisible(Function() onVisible) {
    snackBar = _buildFrom(snackBar, onVisible: onVisible);
  }

  void setDismissDirection(DismissDirection dismissDirection) {
    snackBar = _buildFrom(snackBar, dismissDirection: dismissDirection);
  }
}
