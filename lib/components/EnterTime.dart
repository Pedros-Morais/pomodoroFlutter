import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pomodoro/store/pomodoro.store.dart';

class EnterTime extends StatelessWidget {
  final String title;
  final int value;
  final void Function()? add;
  final void Function()? del;
  const EnterTime({
    Key? key,
    required this.value,
    required this.title,
    required this.add,
    required this.del,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          this.title,
          style: TextStyle(fontSize: 25),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: this.del,
              child: Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(15),
                  primary: store.onWorking() ? Colors.red : Colors.blue),
            ),
            Text(
              '${this.value} min',
              style: TextStyle(fontSize: 18),
            ),
            ElevatedButton(
              onPressed: this.add,
              child: Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(15),
                  primary: store.onWorking() ? Colors.red : Colors.blue),
            ),
          ],
        ),
      ],
    );
  }
}
