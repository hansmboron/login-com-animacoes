// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login-model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginModel on _LoginModelBase, Store {
  final _$emailAtom = Atom(name: '_LoginModelBase.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$passAtom = Atom(name: '_LoginModelBase.pass');

  @override
  String get pass {
    _$passAtom.context.enforceReadPolicy(_$passAtom);
    _$passAtom.reportObserved();
    return super.pass;
  }

  @override
  set pass(String value) {
    _$passAtom.context.conditionallyRunInAction(() {
      super.pass = value;
      _$passAtom.reportChanged();
    }, _$passAtom, name: '${_$passAtom.name}_set');
  }

  final _$passVissibleAtom = Atom(name: '_LoginModelBase.passVissible');

  @override
  bool get passVissible {
    _$passVissibleAtom.context.enforceReadPolicy(_$passVissibleAtom);
    _$passVissibleAtom.reportObserved();
    return super.passVissible;
  }

  @override
  set passVissible(bool value) {
    _$passVissibleAtom.context.conditionallyRunInAction(() {
      super.passVissible = value;
      _$passVissibleAtom.reportChanged();
    }, _$passVissibleAtom, name: '${_$passVissibleAtom.name}_set');
  }

  final _$_LoginModelBaseActionController =
      ActionController(name: '_LoginModelBase');

  @override
  dynamic changeEmail(String value) {
    final _$actionInfo = _$_LoginModelBaseActionController.startAction();
    try {
      return super.changeEmail(value);
    } finally {
      _$_LoginModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePass(String value) {
    final _$actionInfo = _$_LoginModelBaseActionController.startAction();
    try {
      return super.changePass(value);
    } finally {
      _$_LoginModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic togglePassVisibility() {
    final _$actionInfo = _$_LoginModelBaseActionController.startAction();
    try {
      return super.togglePassVisibility();
    } finally {
      _$_LoginModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'email: ${email.toString()},pass: ${pass.toString()},passVissible: ${passVissible.toString()}';
    return '{$string}';
  }
}
