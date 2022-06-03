import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/EnterTime.dart';
import 'package:pomodoro/components/Timer.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Timer(),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Observer(
                builder: (_) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    EnterTime(
                      value: store.timeWork,
                      title: 'Working',
                      del: store.start && store.onWorking()
                          ? null
                          : store.DeleteTimeWork,
                      add: store.start && store.onWorking()
                          ? null
                          : store.AddTimeWork,
                    ),
                    EnterTime(
                      value: store.timeRest,
                      title: 'Break',
                      del: store.start && store.onResting()
                          ? null
                          : store.DeleteTimeRest,
                      add: store.start && store.onResting()
                          ? null
                          : store.AddTimeRest,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
