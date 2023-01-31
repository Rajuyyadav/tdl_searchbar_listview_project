// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_class_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CounterClass on CounterBaseClass, Store {
  late final _$valueAtom =
      Atom(name: 'CounterBaseClass.value', context: context);

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  late final _$CounterBaseClassActionController =
      ActionController(name: 'CounterBaseClass', context: context);

  @override
  void increment_counter() {
    final _$actionInfo = _$CounterBaseClassActionController.startAction(
        name: 'CounterBaseClass.increment_counter');
    try {
      return super.increment_counter();
    } finally {
      _$CounterBaseClassActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement_counter() {
    final _$actionInfo = _$CounterBaseClassActionController.startAction(
        name: 'CounterBaseClass.decrement_counter');
    try {
      return super.decrement_counter();
    } finally {
      _$CounterBaseClassActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
