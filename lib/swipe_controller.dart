import 'package:flutter/material.dart';

typedef TriggerListener = void Function(Direction dir);
typedef AppendItem = void Function(Widget item);

class SwipeableCardSectionController {
  late TriggerListener listener;
  late AppendItem addItem;

  void triggerSwipeLeft() {
    return listener.call(Direction.left);
  }

  void triggerSwipeRight() {
    return listener.call(Direction.right);
  }

  void triggerSwipeUp() {
    return listener.call(Direction.up);
  }

  void triggerSwipeDown() {
    return listener.call(Direction.down);
  }

  void appendItem(Widget item) {
    return addItem.call(item);
  }

}

enum Direction {
  left,
  right,
  up,
  down,
}
