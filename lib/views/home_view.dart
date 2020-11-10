import '../stores/home_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeView extends StatelessWidget {
  final store = HomeStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('data'),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                onChanged: (value) {
                  store.max = int.parse(value);
                },
                initialValue: store.max.toString(),
              ),
              Observer(
                builder: (_) {
                  return Text(
                    store.count.toString(),
                    style: const TextStyle(fontSize: 40),
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    onPressed: () {
                      store.decriment();
                    },
                    child: const Text('Decrement'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      store.increment();
                    },
                    child: const Text('Increment'),
                  )
                ],
              ),
              Observer(
                builder: (_) {
                  return Text(
                    store.message,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.red,
                    ),
                  );
                },
              )
            ],
          ),
        ));
  }
}
