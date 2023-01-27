/// class-modifiers
/// fvm dart --enable-experiment=class-modifiers bin/dart3.dart
///
// 両方できちゃう。 class-modifiers はあくまでライブラリ外からのアクセス時の制約っぽい
// This proposal specifies four modifiers that can be placed on classes
// and mixins to allow an author to control whether the type allows
// being implemented, extended, and/or mixed in from **outside of the library where it's defined**.
//
// abstract interface class Identifiable {
//   String get id;
// }
//
// class Person extends Identifiable {
//   @override
//   String get id => '';
// }
// class Person implements Identifiable {
//   @override
//   String get id => '';
// }

// final class NoExtend {
//   void hoge() {
//     print('NoExtend!');
//   }
// }

// class ExtendsNoExtend extends NoExtend {
//   @override
//   void hoge() {
//     print('I overrides NoExtend XD');
//   }
// }
//
// void run() {
//   ExtendsNoExtend().hoge();
// }

/// sealed class
// fvm dart --enable-experiment=sealed-class --enable-experiment=patterns bin/dart3.dart
// sealed class Event {}
// class SuccessEvent implements Event {
//   const SuccessEvent(this.value);
//   final int value;
//   int get fuga => 1;
// }

// class FailureEvent implements Event {
//   const FailureEvent(this.error);
//   final Object? error;
// }

// void run() {
//   switch (SuccessEvent(2)) {
//     case SuccessEvent(value: final v):
//       print('Success $v');
//     case FailureEvent(error: final e):
//       print('Failure $e');
//   }
//
//   final result = switch (SuccessEvent(2)) {
//     SuccessEvent(value: final v) => 'Success $v',
//     FailureEvent(error: final e) =>
//       'Failure $e',
//   };
//   print(result);
//
// }

/// records
// fvm dart --enable-experiment=sealed-class --enable-experiment=patterns --enable-experiment=records bin/dart3.dart
//
// (T, void Function(T)) useState<T>(T value) {
//   return (value, (_) {});
// }
//
// void run() {
  // js-hooks 風
  // final value, setValue = useState(1);

  // final record = (1, 2, 3);
  // print(record.$0);
  // final namedRecord = (a: 1, b: 2, c: 3);
  // print(namedRecord.a);
// }

/// 改善なし
// class Sample {
//   final int? hoge = 3;
// }

// void show(int a) => print;

// void run() {
//   final sample = Sample();
//   if (sample.hoge != null) {
//     show(sample.hoge);
//   }
// }
