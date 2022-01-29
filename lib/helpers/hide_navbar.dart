import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rxdart/rxdart.dart';

class HideNavbar {
  final ScrollController controller = ScrollController();
  final scrollSubject = BehaviorSubject<bool>();
  bool visible = true;

  HideNavbar() {
    visible = true;
    controller.addListener(
      () {
        if (controller.position.userScrollDirection ==
            ScrollDirection.reverse) {
          if (visible) {
            visible = false;
            scrollSubject.sink.add(false);
          }
        } else if (controller.position.userScrollDirection ==
            ScrollDirection.forward) {
          if (!visible) {
            visible = true;
            scrollSubject.sink.add(true);
          }
        }
      },
    );
  }

  Stream<bool> get stream {
    return scrollSubject.asBroadcastStream();
  }

  void dispose() {
    controller.dispose();
  }
}
