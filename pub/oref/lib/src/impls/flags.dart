abstract interface class EffectFlags {
  static const active = 1 << 0;
}

abstract interface class Flags {
  static const running = 1 << 1;
  static const tracking = 1 << 2;
  static const notified = 1 << 3;
  static const dirty = 1 << 4;
  static const allowRecurse = 1 << 5;
  static const paused = 1 << 6;
}