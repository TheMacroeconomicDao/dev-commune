import 'package:flutter/material.dart';

class ExampleWidget extends StatefulWidget {
  const ExampleWidget({Key? key}) : super(key: key);

  @override
  State<ExampleWidget> createState() => _ExampleWidgetState();
}

class _ExampleWidgetState extends State<ExampleWidget> {
  var _data = [1, 2, 3, 4];

  void _insert() {
    final element = (_data.isEmpty ? 0 : _data.last) + 1;
    setState(() {
      _data.add(element);
    });
  }

  void _removeAtIndex(int index) {}

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _insert,
        child: const Icon(Icons.account_balance_wallet_outlined),
      ),
      body: Expanded(
        child: Column(children: [
          Center(
            child: SizedBox(
              height: 1020,
              width: 800,
              child: ListView.builder(
                itemCount: _data.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: double.infinity,
                    child: Card(
                      shadowColor: const Color.fromARGB(255, 100, 172, 255),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("${_data[index]}"),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
