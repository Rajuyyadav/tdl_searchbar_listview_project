// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx_practise_two.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MobxPractiseTwo on _MobxPractiseTwo, Store {
  late final _$valueAtom =
      Atom(name: '_MobxPractiseTwo.value', context: context);

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

  late final _$metricsAtom =
      Atom(name: '_MobxPractiseTwo.metrics', context: context);

  @override
  ObservableList<int> get metrics {
    _$metricsAtom.reportRead();
    return super.metrics;
  }

  @override
  set metrics(ObservableList<int> value) {
    _$metricsAtom.reportWrite(value, super.metrics, () {
      super.metrics = value;
    });
  }

  late final _$_MobxPractiseTwoActionController =
      ActionController(name: '_MobxPractiseTwo', context: context);

  @override
  void incrementCounter() {
    final _$actionInfo = _$_MobxPractiseTwoActionController.startAction(
        name: '_MobxPractiseTwo.incrementCounter');
    try {
      return super.incrementCounter();
    } finally {
      _$_MobxPractiseTwoActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementCounter() {
    final _$actionInfo = _$_MobxPractiseTwoActionController.startAction(
        name: '_MobxPractiseTwo.decrementCounter');
    try {
      return super.decrementCounter();
    } finally {
      _$_MobxPractiseTwoActionController.endAction(_$actionInfo);
    }
  }

  @override
  void add(int data) {
    final _$actionInfo = _$_MobxPractiseTwoActionController.startAction(
        name: '_MobxPractiseTwo.add');
    try {
      return super.add(data);
    } finally {
      _$_MobxPractiseTwoActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remove(int data) {
    final _$actionInfo = _$_MobxPractiseTwoActionController.startAction(
        name: '_MobxPractiseTwo.remove');
    try {
      return super.remove(data);
    } finally {
      _$_MobxPractiseTwoActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
metrics: ${metrics}
    ''';
  }
}
