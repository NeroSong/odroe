import '_internal.dart';

abstract interface class Signal<T> {
  /// Returns current signal value.
  T get value;

  /// Reading signals without subscribing to them.
  ///
  /// On the rare occasion that you need to write to a signal inside effect
  /// (fn), but don't want the effect to re-run when that signal changes, you
  /// can use .peek() to get the signal's current value without subscribing.
  T peek();
}

abstract class ReadonlySignal<T> extends Signal<T> {}

abstract class WriteableSignal<T> extends ReadonlySignal<T> {
  /// Write a new value to the signal.
  set value(T value);
}

/// Create a new signal.
WriteableSignal<T> signal<T>([T? value]) => SignalSource(value);