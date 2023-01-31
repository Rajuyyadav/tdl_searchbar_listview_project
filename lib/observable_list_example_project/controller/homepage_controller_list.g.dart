// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homepage_controller_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomepageControllerList on _HomepageControllerList, Store {
  Computed<int>? _$totalCheckedComputed;

  @override
  int get totalChecked =>
      (_$totalCheckedComputed ??= Computed<int>(() => super.totalChecked,
              name: '_HomepageControllerList.totalChecked'))
          .value;

  late final _$_HomepageControllerListActionController =
      ActionController(name: '_HomepageControllerList', context: context);

  @override
  dynamic addItem(ItemModelClass modelData) {
    final _$actionInfo = _$_HomepageControllerListActionController.startAction(
        name: '_HomepageControllerList.addItem');
    try {
      return super.addItem(modelData);
    } finally {
      _$_HomepageControllerListActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic updateCheck(int index, bool? checkValue) {
    final _$actionInfo = _$_HomepageControllerListActionController.startAction(
        name: '_HomepageControllerList.updateCheck');
    try {
      return super.updateCheck(index, checkValue);
    } finally {
      _$_HomepageControllerListActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeItem(int index) {
    final _$actionInfo = _$_HomepageControllerListActionController.startAction(
        name: '_HomepageControllerList.removeItem');
    try {
      return super.removeItem(index);
    } finally {
      _$_HomepageControllerListActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
totalChecked: ${totalChecked}
    ''';
  }
}
