import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/TimerButton.dart';
import 'package:provider/provider.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'dart:async';

class Timer extends StatelessWidget {
  const Timer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Observer(builder: (_) {
      return Container(
        color: store.onWorking() ? Colors.red : Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              store.onWorking() ? 'Time to Working!' : 'Time to Resting',
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '${store.min.toString().padLeft(2, '0')}:${store.seg.toString().padLeft(2, '0')}',
              style: TextStyle(fontSize: 100, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!store.start)
                  Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: TimerButton(
                        text: 'Start',
                        icon: Icons.play_arrow,
                        click: store.StartTimer,
                      )),
                if (store.start)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: TimerButton(
                      text: 'Pausar',
                      icon: Icons.stop_circle,
                      click: store.StopTimer,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TimerButton(
                    text: 'Reniciar',
                    icon: Icons.refresh,
                    click: store.RestartTimer,
                  ),
                )
              ],
            )
          ],
        ),
      );
    });
  }
}
