// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on _PomodoroStore, Store {
  late final _$startAtom = Atom(name: '_PomodoroStore.start', context: context);

  @override
  bool get start {
    _$startAtom.reportRead();
    return super.start;
  }

  @override
  set start(bool value) {
    _$startAtom.reportWrite(value, super.start, () {
      super.start = value;
    });
  }

  late final _$minAtom = Atom(name: '_PomodoroStore.min', context: context);

  @override
  int get min {
    _$minAtom.reportRead();
    return super.min;
  }

  @override
  set min(int value) {
    _$minAtom.reportWrite(value, super.min, () {
      super.min = value;
    });
  }

  late final _$segAtom = Atom(name: '_PomodoroStore.seg', context: context);

  @override
  int get seg {
    _$segAtom.reportRead();
    return super.seg;
  }

  @override
  set seg(int value) {
    _$segAtom.reportWrite(value, super.seg, () {
      super.seg = value;
    });
  }

  late final _$timeWorkAtom =
      Atom(name: '_PomodoroStore.timeWork', context: context);

  @override
  int get timeWork {
    _$timeWorkAtom.reportRead();
    return super.timeWork;
  }

  @override
  set timeWork(int value) {
    _$timeWorkAtom.reportWrite(value, super.timeWork, () {
      super.timeWork = value;
    });
  }

  late final _$timeRestAtom =
      Atom(name: '_PomodoroStore.timeRest', context: context);

  @override
  int get timeRest {
    _$timeRestAtom.reportRead();
    return super.timeRest;
  }

  @override
  set timeRest(int value) {
    _$timeRestAtom.reportWrite(value, super.timeRest, () {
      super.timeRest = value;
    });
  }

  late final _$_PomodoroStoreActionController =
      ActionController(name: '_PomodoroStore', context: context);

  @override
  void StartTimer() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.StartTimer');
    try {
      return super.StartTimer();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void StopTimer() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.StopTimer');
    try {
      return super.StopTimer();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void RestartTimer() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.RestartTimer');
    try {
      return super.RestartTimer();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void AddTimeWork() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.AddTimeWork');
    try {
      return super.AddTimeWork();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void DeleteTimeWork() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.DeleteTimeWork');
    try {
      return super.DeleteTimeWork();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void AddTimeRest() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.AddTimeRest');
    try {
      return super.AddTimeRest();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void DeleteTimeRest() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.DeleteTimeRest');
    try {
      return super.DeleteTimeRest();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
start: ${start},
min: ${min},
seg: ${seg},
timeWork: ${timeWork},
timeRest: ${timeRest}
    ''';
  }
}
