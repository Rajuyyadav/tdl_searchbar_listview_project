// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_for_json_api_class.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ControllerJsonApiClass on _ControllerJsonApiClass, Store {
  late final _$dataAtom =
      Atom(name: '_ControllerJsonApiClass.data', context: context);

  @override
  ObservableList<UserModel> get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(ObservableList<UserModel> value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  late final _$fetchAlbumAsyncAction =
      AsyncAction('_ControllerJsonApiClass.fetchAlbum', context: context);

  @override
  Future<List<UserModel>?> fetchAlbum() {
    return _$fetchAlbumAsyncAction.run(() => super.fetchAlbum());
  }

  late final _$_ControllerJsonApiClassActionController =
      ActionController(name: '_ControllerJsonApiClass', context: context);

  @override
  void removecontent(int index) {
    final _$actionInfo = _$_ControllerJsonApiClassActionController.startAction(
        name: '_ControllerJsonApiClass.removecontent');
    try {
      return super.removecontent(index);
    } finally {
      _$_ControllerJsonApiClassActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
data: ${data}
    ''';
  }
}
