import 'package:mobx/mobx.dart';
import 'dart:async';
part 'pomodoro.store.g.dart';

enum typeInterval { WORKING, RESTING }

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

void cancel() {}

abstract class _PomodoroStore with Store {
  @observable
  bool start = false;
  @observable
  int min = 2;
  @observable
  int seg = 0;
  @observable
  int timeWork = 2;
  @observable
  int timeRest = 1;
  @observable
  typeInterval TypeInterval = typeInterval.WORKING;
  @observable
  late Timer timer;
  @action
  void StartTimer() {
    start = true;

    timer = Timer.periodic(const Duration(milliseconds: 50), (timer) {
      if (min == 0 && seg == 0) {
        _changeType();
      } else if (seg == 0) {
        seg = 59;
        min--;
      } else {
        seg--;
      }
    });
  }

  @action
  void StopTimer() {
    start = false;
    timer.cancel();
  }

  @action
  void RestartTimer() {
    StopTimer();
    min = onWorking() ? timeWork : timeRest;
    seg:
    0;
  }

  @action
  void AddTimeWork() {
    timeWork++;
    if (onWorking()) {
      RestartTimer();
    }
  }

  @action
  void DeleteTimeWork() {
    timeWork--;
    if (onWorking()) {
      RestartTimer();
    }
  }

  @action
  void AddTimeRest() {
    timeRest++;
    if (onResting()) {
      RestartTimer();
    }
  }

  @action
  void DeleteTimeRest() {
    timeRest--;
    if (onResting()) {
      RestartTimer();
    }
  }

  bool onWorking() {
    return TypeInterval == typeInterval.WORKING;
  }

  bool onResting() {
    return TypeInterval == typeInterval.RESTING;
  }

  void _changeType() {
    if (onWorking()) {
      TypeInterval = typeInterval.RESTING;
      min = timeRest;
    } else {
      TypeInterval = typeInterval.WORKING;
      min = timeWork;
    }
    seg = 0;
  }
}
